Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/dwarf_validate.dwarf_validate.fd51000a27e4c067-cgu.07?download=true
inline.NumInlined: 234
inline.NumDeleted: 123
begin_hunk_0
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"f\00\00\00\00\00\00\00+\02\00\00\11\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"f\00\00\00\00\00\00\00\12\02\00\00\15\00\00\00" }>, align 8
@_RNvNCNKNvNtCs6o3pVbAMket_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL = external thread_local global ptr
@5 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardbEEECslKoDbeUmNq5_14dwarf_validate, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCsG258MDvU3F_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardbEENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCslKoDbeUmNq5_14dwarf_validate }>, align 8
@6 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT = external local_unnamed_addr global { { { i64 } } }
@7 = private unnamed_addr constant [98 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rayon-core-1.13.0/src/job.rs\00", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"a\00\00\00\00\00\00\00f\00\00\00 \00\00\00" }>, align 8
@9 = private unnamed_addr constant [40 x i8] c"internal error: entered unreachable code", align 1
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"a\00\00\00\00\00\00\00\E6\00\00\00 \00\00\00" }>, align 8
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"a\00\00\00\00\00\00\00w\00\00\00.\00\00\00" }>, align 8
@12 = private unnamed_addr constant [100 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rayon-core-1.13.0/src/latch.rs\00", align 1
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @12, [16 x i8] c"c\00\00\00\00\00\00\00\07\01\00\00*\00\00\00" }>, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i64, i64 } @_RINvNtCs3uS0LcqId4h_5rayon4math14simplify_rangeNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullECslKoDbeUmNq5_14dwarf_validate(i64 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = insertvalue { i64, i64 } { i64 0, i64 undef }, i64 %0, 1
  ret { i64, i64 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB1v_8Registry15in_worker_crossNCINvNtB1x_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3h_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4T_12endian_slice11EndianSliceNtNtB4V_9endianity13RunTimeEndianEjEEINtNtB3f_3map11MapConsumerINtNtNtB3f_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB7X_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5B_E0EE0NCB38_s_0INtB7f_13CollectResultB7V_EBaZ_E0TBaZ_BaZ_EE0EEEB7X_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !18, !noundef !5
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB16_8Registry15in_worker_crossNCINvNtB18_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2S_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4u_12endian_slice11EndianSliceNtNtB4w_9endianity13RunTimeEndianEjEEINtNtB2Q_3map11MapConsumerINtNtNtB2Q_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB7y_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5c_E0EE0NCB2J_s_0INtB6Q_13CollectResultB7w_EBaA_E0TBaA_BaA_EE0EEB7y_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXsa_NtCs3uS0LcqId4h_5rayon3vecINtB5_13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBV_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB46_12endian_slice11EndianSliceNtNtB48_9endianity13RunTimeEndianEjEEINtNtB2s_3map11MapConsumerINtNtNtB2s_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB7a_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB4O_E0EE0NCB2l_s_0INtB6s_13CollectResultB78_EBac_E0TBac_Bac_EE0EB7a_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void @_RNvXsa_NtCs3uS0LcqId4h_5rayon3vecINtB5_13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBV_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB2n_12endian_slice11EndianSliceNtNtB2p_9endianity13RunTimeEndianEjEEINtNtBK_3map11MapConsumerINtNtNtBK_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB5p_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB35_E0EE0EB5p_.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB2n_12endian_slice11EndianSliceNtNtB2p_9endianity13RunTimeEndianEjEEINtNtBK_3map11MapConsumerINtNtNtBK_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB5p_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB35_E0EE0EB5p_.exit.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB46_12endian_slice11EndianSliceNtNtB48_9endianity13RunTimeEndianEjEEINtNtB2s_3map11MapConsumerINtNtNtB2s_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB7a_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB4O_E0EE0NCB2l_s_0INtB6s_13CollectResultB78_EBac_E0TBac_Bac_EE0EB7a_.exit.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_RNvXsa_NtCs3uS0LcqId4h_5rayon3vecINtB5_13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBV_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB16_8Registry15in_worker_crossNCINvNtB18_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2S_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4u_12endian_slice11EndianSliceNtNtB4w_9endianity13RunTimeEndianEjEEINtNtB2Q_3map11MapConsumerINtNtNtB2Q_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB7y_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5c_E0EE0NCB2J_s_0INtB6Q_13CollectResultB7w_EBaA_E0TBaA_BaA_EE0EEB7y_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB16_8Registry15in_worker_crossNCINvNtB18_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2S_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4u_12endian_slice11EndianSliceNtNtB4w_9endianity13RunTimeEndianEjEEINtNtB2Q_3map11MapConsumerINtNtNtB2Q_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB7y_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5c_E0EE0NCB2J_s_0INtB6Q_13CollectResultB7w_EBaA_E0TBaA_BaA_EE0EEB7y_.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB46_12endian_slice11EndianSliceNtNtB48_9endianity13RunTimeEndianEjEEINtNtB2s_3map11MapConsumerINtNtNtB2s_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB7a_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB4O_E0EE0NCB2l_s_0INtB6s_13CollectResultB78_EBac_E0TBac_Bac_EE0EB7a_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB1v_8Registry15in_worker_crossNCINvNtB1x_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3h_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4T_12endian_slice11EndianSliceNtNtB4V_9endianity13RunTimeEndianEjEEINtNtB3f_3map11MapConsumerNtNtB3f_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5B_E0EE0NCB38_s_0INtNtNtB8G_11collections11linked_list10LinkedListINtNtB8G_3vec3VecNtB7N_11UnitSummaryEEBas_E0TBas_Bas_EE0EEEB7N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !21, !noundef !5
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB16_8Registry15in_worker_crossNCINvNtB18_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2S_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4u_12endian_slice11EndianSliceNtNtB4w_9endianity13RunTimeEndianEjEEINtNtB2Q_3map11MapConsumerNtNtB2Q_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5c_E0EE0NCB2J_s_0INtNtNtB8h_11collections11linked_list10LinkedListINtNtB8h_3vec3VecNtB7o_11UnitSummaryEEBa3_E0TBa3_Ba3_EE0EEB7o_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXsa_NtCs3uS0LcqId4h_5rayon3vecINtB5_13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBV_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB46_12endian_slice11EndianSliceNtNtB48_9endianity13RunTimeEndianEjEEINtNtB2s_3map11MapConsumerNtNtB2s_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB4O_E0EE0NCB2l_s_0INtNtNtB7T_11collections11linked_list10LinkedListINtNtB7T_3vec3VecNtB70_11UnitSummaryEEB9F_E0TB9F_B9F_EE0EB70_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke void @_RNvXsa_NtCs3uS0LcqId4h_5rayon3vecINtB5_13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBV_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB2n_12endian_slice11EndianSliceNtNtB2p_9endianity13RunTimeEndianEjEEINtNtBK_3map11MapConsumerNtNtBK_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB35_E0EE0EB5f_.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB2n_12endian_slice11EndianSliceNtNtB2p_9endianity13RunTimeEndianEjEEINtNtBK_3map11MapConsumerNtNtBK_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB35_E0EE0EB5f_.exit.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB46_12endian_slice11EndianSliceNtNtB48_9endianity13RunTimeEndianEjEEINtNtB2s_3map11MapConsumerNtNtB2s_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB4O_E0EE0NCB2l_s_0INtNtNtB7T_11collections11linked_list10LinkedListINtNtB7T_3vec3VecNtB70_11UnitSummaryEEB9F_E0TB9F_B9F_EE0EB70_.exit.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_RNvXsa_NtCs3uS0LcqId4h_5rayon3vecINtB5_13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBV_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB16_8Registry15in_worker_crossNCINvNtB18_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2S_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4u_12endian_slice11EndianSliceNtNtB4w_9endianity13RunTimeEndianEjEEINtNtB2Q_3map11MapConsumerNtNtB2Q_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5c_E0EE0NCB2J_s_0INtNtNtB8h_11collections11linked_list10LinkedListINtNtB8h_3vec3VecNtB7o_11UnitSummaryEEBa3_E0TBa3_Ba3_EE0EEB7o_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB16_8Registry15in_worker_crossNCINvNtB18_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2S_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4u_12endian_slice11EndianSliceNtNtB4w_9endianity13RunTimeEndianEjEEINtNtB2Q_3map11MapConsumerNtNtB2Q_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5c_E0EE0NCB2J_s_0INtNtNtB8h_11collections11linked_list10LinkedListINtNtB8h_3vec3VecNtB7o_11UnitSummaryEEBa3_E0TBa3_Ba3_EE0EEB7o_.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB46_12endian_slice11EndianSliceNtNtB48_9endianity13RunTimeEndianEjEEINtNtB2s_3map11MapConsumerNtNtB2s_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB4O_E0EE0NCB2l_s_0INtNtNtB7T_11collections11linked_list10LinkedListINtNtB7T_3vec3VecNtB70_11UnitSummaryEEB9F_E0TB9F_B9F_EE0EB70_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB1x_8Registry14in_worker_coldNCINvNtB1z_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3i_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4U_12endian_slice11EndianSliceNtNtB4W_9endianity13RunTimeEndianEjEEINtNtB3g_3map11MapConsumerINtNtNtB3g_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB7Y_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5C_E0EE0NCB39_s_0INtB7g_13CollectResultB7W_EBb0_E0TBb0_Bb0_EE00EEEB7Y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !24, !noundef !5
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNCNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB18_8Registry14in_worker_coldNCINvNtB1a_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2T_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4v_12endian_slice11EndianSliceNtNtB4x_9endianity13RunTimeEndianEjEEINtNtB2R_3map11MapConsumerINtNtNtB2R_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB7z_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5d_E0EE0NCB2K_s_0INtB6R_13CollectResultB7x_EBaB_E0TBaB_BaB_EE00EEB7z_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXsa_NtCs3uS0LcqId4h_5rayon3vecINtB5_13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBV_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB47_12endian_slice11EndianSliceNtNtB49_9endianity13RunTimeEndianEjEEINtNtB2t_3map11MapConsumerINtNtNtB2t_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB7b_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB4P_E0EE0NCB2m_s_0INtB6t_13CollectResultB79_EBad_E0TBad_Bad_EE00EB7b_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void @_RNvXsa_NtCs3uS0LcqId4h_5rayon3vecINtB5_13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBV_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB2n_12endian_slice11EndianSliceNtNtB2p_9endianity13RunTimeEndianEjEEINtNtBK_3map11MapConsumerINtNtNtBK_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB5p_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB35_E0EE0EB5p_.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB2n_12endian_slice11EndianSliceNtNtB2p_9endianity13RunTimeEndianEjEEINtNtBK_3map11MapConsumerINtNtNtBK_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB5p_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB35_E0EE0EB5p_.exit.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB47_12endian_slice11EndianSliceNtNtB49_9endianity13RunTimeEndianEjEEINtNtB2t_3map11MapConsumerINtNtNtB2t_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB7b_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB4P_E0EE0NCB2m_s_0INtB6t_13CollectResultB79_EBad_E0TBad_Bad_EE00EB7b_.exit.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_RNvXsa_NtCs3uS0LcqId4h_5rayon3vecINtB5_13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBV_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNCNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB18_8Registry14in_worker_coldNCINvNtB1a_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2T_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4v_12endian_slice11EndianSliceNtNtB4x_9endianity13RunTimeEndianEjEEINtNtB2R_3map11MapConsumerINtNtNtB2R_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB7z_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5d_E0EE0NCB2K_s_0INtB6R_13CollectResultB7x_EBaB_E0TBaB_BaB_EE00EEB7z_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNCNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB18_8Registry14in_worker_coldNCINvNtB1a_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2T_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4v_12endian_slice11EndianSliceNtNtB4x_9endianity13RunTimeEndianEjEEINtNtB2R_3map11MapConsumerINtNtNtB2R_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB7z_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5d_E0EE0NCB2K_s_0INtB6R_13CollectResultB7x_EBaB_E0TBaB_BaB_EE00EEB7z_.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB47_12endian_slice11EndianSliceNtNtB49_9endianity13RunTimeEndianEjEEINtNtB2t_3map11MapConsumerINtNtNtB2t_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB7b_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB4P_E0EE0NCB2m_s_0INtB6t_13CollectResultB79_EBad_E0TBad_Bad_EE00EB7b_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB1x_8Registry14in_worker_coldNCINvNtB1z_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3i_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4U_12endian_slice11EndianSliceNtNtB4W_9endianity13RunTimeEndianEjEEINtNtB3g_3map11MapConsumerNtNtB3g_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5C_E0EE0NCB39_s_0INtNtNtB8H_11collections11linked_list10LinkedListINtNtB8H_3vec3VecNtB7O_11UnitSummaryEEBat_E0TBat_Bat_EE00EEEB7O_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !27, !noundef !5
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNCNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB18_8Registry14in_worker_coldNCINvNtB1a_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2T_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4v_12endian_slice11EndianSliceNtNtB4x_9endianity13RunTimeEndianEjEEINtNtB2R_3map11MapConsumerNtNtB2R_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5d_E0EE0NCB2K_s_0INtNtNtB8i_11collections11linked_list10LinkedListINtNtB8i_3vec3VecNtB7p_11UnitSummaryEEBa4_E0TBa4_Ba4_EE00EEB7p_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXsa_NtCs3uS0LcqId4h_5rayon3vecINtB5_13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBV_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB47_12endian_slice11EndianSliceNtNtB49_9endianity13RunTimeEndianEjEEINtNtB2t_3map11MapConsumerNtNtB2t_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB4P_E0EE0NCB2m_s_0INtNtNtB7U_11collections11linked_list10LinkedListINtNtB7U_3vec3VecNtB71_11UnitSummaryEEB9G_E0TB9G_B9G_EE00EB71_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke void @_RNvXsa_NtCs3uS0LcqId4h_5rayon3vecINtB5_13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBV_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB2n_12endian_slice11EndianSliceNtNtB2p_9endianity13RunTimeEndianEjEEINtNtBK_3map11MapConsumerNtNtBK_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB35_E0EE0EB5f_.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB2n_12endian_slice11EndianSliceNtNtB2p_9endianity13RunTimeEndianEjEEINtNtBK_3map11MapConsumerNtNtBK_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB35_E0EE0EB5f_.exit.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB47_12endian_slice11EndianSliceNtNtB49_9endianity13RunTimeEndianEjEEINtNtB2t_3map11MapConsumerNtNtB2t_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB4P_E0EE0NCB2m_s_0INtNtNtB7U_11collections11linked_list10LinkedListINtNtB7U_3vec3VecNtB71_11UnitSummaryEEB9G_E0TB9G_B9G_EE00EB71_.exit.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_RNvXsa_NtCs3uS0LcqId4h_5rayon3vecINtB5_13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBV_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNCNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB18_8Registry14in_worker_coldNCINvNtB1a_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2T_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4v_12endian_slice11EndianSliceNtNtB4x_9endianity13RunTimeEndianEjEEINtNtB2R_3map11MapConsumerNtNtB2R_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5d_E0EE0NCB2K_s_0INtNtNtB8i_11collections11linked_list10LinkedListINtNtB8i_3vec3VecNtB7p_11UnitSummaryEEBa4_E0TBa4_Ba4_EE00EEB7p_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNCNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB18_8Registry14in_worker_coldNCINvNtB1a_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2T_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4v_12endian_slice11EndianSliceNtNtB4x_9endianity13RunTimeEndianEjEEINtNtB2R_3map11MapConsumerNtNtB2R_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5d_E0EE0NCB2K_s_0INtNtNtB8i_11collections11linked_list10LinkedListINtNtB8i_3vec3VecNtB7p_11UnitSummaryEEBa4_E0TBa4_Ba4_EE00EEB7p_.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB47_12endian_slice11EndianSliceNtNtB49_9endianity13RunTimeEndianEjEEINtNtB2t_3map11MapConsumerNtNtB2t_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB4P_E0EE0NCB2m_s_0INtNtNtB7U_11collections11linked_list10LinkedListINtNtB7U_3vec3VecNtB71_11UnitSummaryEEB9G_E0TB9G_B9G_EE00EB71_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEEB35_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  %i.a = load i64, ptr %0, align 8, !range !6, !alias.scope !30, !noundef !5
  switch i64 %i.a, label %bb.b [
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEB2G_.exit
    i64 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !30 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.c, align 8, !alias.scope !30, !nonnull !5, !align !7, !noundef !5 ; 5 uses
  %i.d = load ptr, ptr %.val1.i, align 8, !invariant.load !5, !noalias !30 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.d(ptr noundef nonnull %.val.i)
          to label %bb.d unwind label %bb.f, !noalias !30

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !8, !invariant.load !5, !noalias !30 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEB2G_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !9, !invariant.load !5, !noalias !30
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #23, !noalias !30
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEB2G_.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !8, !invariant.load !5, !noalias !30 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate.exit4.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !9, !invariant.load !5, !noalias !30
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #23, !noalias !30
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate.exit4.i.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate.exit4.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.j

bb.h:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs7_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEB2G_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEB2G_.exit: ; preds = %bb.a, %bb.d, %bb.e, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEB2P_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %i.a = load i64, ptr %0, align 8, !range !6, !alias.scope !33, !noundef !5
  switch i64 %i.a, label %bb.b [
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEB2q_.exit
    i64 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !33 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.c, align 8, !alias.scope !33, !nonnull !5, !align !7, !noundef !5 ; 5 uses
  %i.d = load ptr, ptr %.val1.i, align 8, !invariant.load !5, !noalias !33 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.d(ptr noundef nonnull %.val.i)
          to label %bb.d unwind label %bb.f, !noalias !33

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !8, !invariant.load !5, !noalias !33 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEB2q_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !9, !invariant.load !5, !noalias !33
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #23, !noalias !33
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEB2q_.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !8, !invariant.load !5, !noalias !33 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate.exit4.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !9, !invariant.load !5, !noalias !33
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #23, !noalias !33
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate.exit4.i.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate.exit4.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.j

bb.h:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs2_NtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumerINtB5_13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEB2q_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEB2q_.exit: ; preds = %bb.a, %bb.d, %bb.e, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultuEEECslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %i.a = load i64, ptr %0, align 8, !range !6, !alias.scope !36, !noundef !5
  %switch.i = icmp samesign ult i64 %i.a, 2
  br i1 %switch.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultuEECslKoDbeUmNq5_14dwarf_validate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !36 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.c, align 8, !alias.scope !36, !nonnull !5, !align !7, !noundef !5 ; 5 uses
  %i.d = load ptr, ptr %.val1.i, align 8, !invariant.load !5, !noalias !36 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.d(ptr noundef nonnull %.val.i)
          to label %bb.d unwind label %bb.f, !noalias !36

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !8, !invariant.load !5, !noalias !36 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultuEECslKoDbeUmNq5_14dwarf_validate.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !9, !invariant.load !5, !noalias !36
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #23, !noalias !36
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultuEECslKoDbeUmNq5_14dwarf_validate.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !8, !invariant.load !5, !noalias !36 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate.exit4.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !9, !invariant.load !5, !noalias !36
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #23, !noalias !36
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate.exit4.i.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate.exit4.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.j

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultuEECslKoDbeUmNq5_14dwarf_validate.exit: ; preds = %bb.a, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4y_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB6a_12endian_slice11EndianSliceNtNtB6c_9endianity13RunTimeEndianEjEEINtNtB4w_3map11MapConsumerNtNtB4w_6extend15ListVecConsumerNCINvB3E_13validate_infoQINtNtNtNtB2p_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6S_E0EEs_0E0B2i_EEB3E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !45, !noundef !5
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCs6o3pVbAMket_10rayon_core4join12join_context6call_bINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB2s_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4B_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB6d_12endian_slice11EndianSliceNtNtB6f_9endianity13RunTimeEndianEjEEINtNtB4z_3map11MapConsumerNtNtB4z_6extend15ListVecConsumerNCINvB3H_13validate_infoQINtNtNtNtB2s_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6V_E0EEs_0E0EEEB3H_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RNvXsa_NtCs3uS0LcqId4h_5rayon3vecINtB5_13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBV_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCs6o3pVbAMket_10rayon_core4join12join_context6call_bINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB2s_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4B_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB6d_12endian_slice11EndianSliceNtNtB6f_9endianity13RunTimeEndianEjEEINtNtB4z_3map11MapConsumerNtNtB4z_6extend15ListVecConsumerNCINvB3H_13validate_infoQINtNtNtNtB2s_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6V_E0EEs_0E0EEEB3H_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEEB35_(ptr noalias nofree noundef align 8 dereferenceable(32) %0) #24
          to label %common.resume unwind label %bb.k

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCs6o3pVbAMket_10rayon_core4join12join_context6call_bINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB2s_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4B_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB6d_12endian_slice11EndianSliceNtNtB6f_9endianity13RunTimeEndianEjEEINtNtB4z_3map11MapConsumerNtNtB4z_6extend15ListVecConsumerNCINvB3H_13validate_infoQINtNtNtNtB2s_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6V_E0EEs_0E0EEEB3H_.exit: ; preds = %bb.a, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.f = load i64, ptr %0, align 8, !range !6, !alias.scope !48, !noundef !5
  switch i64 %i.f, label %bb.d [
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEEB35_.exit
    i64 1, label %bb.j
  ]

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCs6o3pVbAMket_10rayon_core4join12join_context6call_bINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB2s_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4B_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB6d_12endian_slice11EndianSliceNtNtB6f_9endianity13RunTimeEndianEjEEINtNtB4z_3map11MapConsumerNtNtB4z_6extend15ListVecConsumerNCINvB3H_13validate_infoQINtNtNtNtB2s_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6V_E0EEs_0E0EEEB3H_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !48 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.h, align 8, !alias.scope !48, !nonnull !5, !align !7, !noundef !5 ; 5 uses
  %i.i = load ptr, ptr %.val1.i.i, align 8, !invariant.load !5, !noalias !48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.i(ptr noundef nonnull %.val.i.i)
          to label %bb.f unwind label %bb.h, !noalias !48

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !8, !invariant.load !5, !noalias !48 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEEB35_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !9, !invariant.load !5, !noalias !48
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #23, !noalias !48
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEEB35_.exit

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !8, !invariant.load !5, !noalias !48 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %common.resume, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !9, !invariant.load !5, !noalias !48
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.q, i64 noundef range(i64 1, 536870913) %i.t) #23, !noalias !48
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %bb.h, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.h ], [ %i.o, %bb.i ], [ %i.e, %bb.c ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCs6o3pVbAMket_10rayon_core4join12join_context6call_bINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB2s_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4B_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB6d_12endian_slice11EndianSliceNtNtB6f_9endianity13RunTimeEndianEjEEINtNtB4z_3map11MapConsumerNtNtB4z_6extend15ListVecConsumerNCINvB3H_13validate_infoQINtNtNtNtB2s_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6V_E0EEs_0E0EEEB3H_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs7_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEEB35_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEEB35_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCs6o3pVbAMket_10rayon_core4join12join_context6call_bINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB2s_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4B_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB6d_12endian_slice11EndianSliceNtNtB6f_9endianity13RunTimeEndianEjEEINtNtB4z_3map11MapConsumerNtNtB4z_6extend15ListVecConsumerNCINvB3H_13validate_infoQINtNtNtNtB2s_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6V_E0EEs_0E0EEEB3H_.exit, %bb.f, %bb.g, %bb.j
  ret void

bb.k:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvNvNtB2p_8plumbing24bridge_producer_consumer6helperINtNtB2r_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB5w_12endian_slice11EndianSliceNtNtB5y_9endianity13RunTimeEndianEjEEINtNtB2p_3map11MapConsumerINtB2l_15CollectConsumerB3m_ENCINvB3o_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6e_E0EEs_0E0B2i_EEB3o_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !57, !noundef !5
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCs6o3pVbAMket_10rayon_core4join12join_context6call_bINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvNvNtB2s_8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB5z_12endian_slice11EndianSliceNtNtB5B_9endianity13RunTimeEndianEjEEINtNtB2s_3map11MapConsumerINtB2o_15CollectConsumerB3p_ENCINvB3r_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6h_E0EEs_0E0EEEB3r_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXsa_NtCs3uS0LcqId4h_5rayon3vecINtB5_13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBV_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCs6o3pVbAMket_10rayon_core4join12join_context6call_bINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvNvNtB2s_8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB5z_12endian_slice11EndianSliceNtNtB5B_9endianity13RunTimeEndianEjEEINtNtB2s_3map11MapConsumerINtB2o_15CollectConsumerB3p_ENCINvB3r_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6h_E0EEs_0E0EEEB3r_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEB2P_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.e) #24
          to label %common.resume unwind label %bb.k

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCs6o3pVbAMket_10rayon_core4join12join_context6call_bINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvNvNtB2s_8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB5z_12endian_slice11EndianSliceNtNtB5B_9endianity13RunTimeEndianEjEEINtNtB2s_3map11MapConsumerINtB2o_15CollectConsumerB3p_ENCINvB3r_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6h_E0EEs_0E0EEEB3r_.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.g = load i64, ptr %i.f, align 8, !range !6, !alias.scope !60, !noundef !5
  switch i64 %i.g, label %bb.d [
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEB2P_.exit
    i64 1, label %bb.j
  ]

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCs6o3pVbAMket_10rayon_core4join12join_context6call_bINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvNvNtB2s_8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB5z_12endian_slice11EndianSliceNtNtB5B_9endianity13RunTimeEndianEjEEINtNtB2s_3map11MapConsumerINtB2o_15CollectConsumerB3p_ENCINvB3r_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6h_E0EEs_0E0EEEB3r_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val.i.i = load ptr, ptr %i.h, align 8, !alias.scope !60 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1.i.i = load ptr, ptr %i.i, align 8, !alias.scope !60, !nonnull !5, !align !7, !noundef !5 ; 5 uses
  %i.j = load ptr, ptr %.val1.i.i, align 8, !invariant.load !5, !noalias !60 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.j(ptr noundef nonnull %.val.i.i)
          to label %bb.f unwind label %bb.h, !noalias !60

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !8, !invariant.load !5, !noalias !60 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEB2P_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !9, !invariant.load !5, !noalias !60
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #23, !noalias !60
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEB2P_.exit

bb.h:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !8, !invariant.load !5, !noalias !60 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %common.resume, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !9, !invariant.load !5, !noalias !60
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.r, i64 noundef range(i64 1, 536870913) %i.u) #23, !noalias !60
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %bb.h, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.h ], [ %i.p, %bb.i ], [ %i.d, %bb.c ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCs6o3pVbAMket_10rayon_core4join12join_context6call_bINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvNvNtB2s_8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB5z_12endian_slice11EndianSliceNtNtB5B_9endianity13RunTimeEndianEjEEINtNtB2s_3map11MapConsumerINtB2o_15CollectConsumerB3p_ENCINvB3r_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6h_E0EEs_0E0EEEB3r_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_RNvXs2_NtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumerINtB5_13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEB2P_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEB2P_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCs6o3pVbAMket_10rayon_core4join12join_context6call_bINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvNvNtB2s_8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB5z_12endian_slice11EndianSliceNtNtB5B_9endianity13RunTimeEndianEjEEINtNtB2s_3map11MapConsumerINtB2o_15CollectConsumerB3p_ENCINvB3r_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6h_E0EEs_0E0EEEB3r_.exit, %bb.f, %bb.g, %bb.j
  ret void

bb.k:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_buNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_5slice12IterProducerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEINtNtB2s_8for_each15ForEachConsumerNCINvB44_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB7u_9endianity13RunTimeEndianEEs_0EEs_0E0uEEB44_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.b = load i64, ptr %i.a, align 8, !range !6, !alias.scope !67, !noundef !5
  %switch.i.i = icmp samesign ult i64 %i.b, 2
  br i1 %switch.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultuEEECslKoDbeUmNq5_14dwarf_validate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !67 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val1.i.i = load ptr, ptr %i.d, align 8, !alias.scope !67, !nonnull !5, !align !7, !noundef !5 ; 5 uses
  %i.e = load ptr, ptr %.val1.i.i, align 8, !invariant.load !5, !noalias !67 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.e(ptr noundef nonnull %.val.i.i)
          to label %bb.d unwind label %bb.f, !noalias !67

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !8, !invariant.load !5, !noalias !67 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultuEEECslKoDbeUmNq5_14dwarf_validate.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !9, !invariant.load !5, !noalias !67
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #23, !noalias !67
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultuEEECslKoDbeUmNq5_14dwarf_validate.exit

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !8, !invariant.load !5, !noalias !67 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate.exit4.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !9, !invariant.load !5, !noalias !67
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #23, !noalias !67
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate.exit4.i.i.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate.exit4.i.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.k

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultuEEECslKoDbeUmNq5_14dwarf_validate.exit: ; preds = %bb.a, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultTINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1l_EEEB2H_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !5
  switch i64 %i.a, label %bb.b [
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECslKoDbeUmNq5_14dwarf_validate.exit
    i64 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8             ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.c, align 8, !nonnull !5, !align !7, !noundef !5 ; 5 uses
  %i.d = load ptr, ptr %.val1, align 8, !invariant.load !5 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.d(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECslKoDbeUmNq5_14dwarf_validate.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !9, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #23
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECslKoDbeUmNq5_14dwarf_validate.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !9, !invariant.load !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #23
  br label %common.resume

common.resume:                                    ; preds = %bb.i, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.j, %bb.g ], [ %i.q, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECslKoDbeUmNq5_14dwarf_validate.exit: ; preds = %bb.e, %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtBJ_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEBC_EEB1X_.exit, %bb.a
  ret void

bb.h:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs7_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtBJ_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEBC_EEB1X_.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RNvXs7_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtBJ_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEBC_EEB1X_.exit: ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RNvXs7_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECslKoDbeUmNq5_14dwarf_validate.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultTINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEB1l_EEEB2r_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !5
  switch i64 %i.a, label %bb.b [
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECslKoDbeUmNq5_14dwarf_validate.exit
    i64 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8             ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.c, align 8, !nonnull !5, !align !7, !noundef !5 ; 5 uses
  %i.d = load ptr, ptr %.val1, align 8, !invariant.load !5 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.d(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECslKoDbeUmNq5_14dwarf_validate.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !9, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #23
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECslKoDbeUmNq5_14dwarf_validate.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !8, !invariant.load !5 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !9, !invariant.load !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #23
  br label %common.resume

common.resume:                                    ; preds = %bb.i, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.j, %bb.g ], [ %i.q, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECslKoDbeUmNq5_14dwarf_validate.exit: ; preds = %bb.e, %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEBC_EEB1I_.exit, %bb.a
  ret void

bb.h:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs2_NtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumerINtB5_13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEBC_EEB1I_.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RNvXs2_NtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumerINtB5_13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEBC_EEB1I_.exit: ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RNvXs2_NtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumerINtB5_13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECslKoDbeUmNq5_14dwarf_validate.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs3uS0LcqId4h_5rayon4iter6extend13ListVecFolderNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1a_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1h_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1h_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1a_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardbEEECslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !align !10, !noundef !5 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i8, ptr %i.a, align 8, !range !11, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.c = trunc nuw i8 %.val1 to i1
  br i1 %i.c, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #25
  br i1 %i.g, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.b monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = atomicrmw xchg ptr %.val, i32 0 release, align 4
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardbEECslKoDbeUmNq5_14dwarf_validate.exit, !prof !13

bb.e:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardbEECslKoDbeUmNq5_14dwarf_validate.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardbEECslKoDbeUmNq5_14dwarf_validate.exit: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardbEECslKoDbeUmNq5_14dwarf_validate(ptr %.0.val, i8 %.8.val) unnamed_addr #1 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 4
  %i.b = trunc nuw i8 %.8.val to i1
  br i1 %i.b, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #25
  br i1 %i.f, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.a monotonic, align 1
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.g = atomicrmw xchg ptr %.0.val, i32 0 release, align 4
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %bb.e, label %_RNvXsc_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_10MutexGuardbENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate.exit, !prof !13

bb.e:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.0.val)
  br label %_RNvXsc_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_10MutexGuardbENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate.exit

_RNvXsc_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_10MutexGuardbENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate.exit: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtCs6o3pVbAMket_10rayon_core4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1C_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB3e_12endian_slice11EndianSliceNtNtB3g_9endianity13RunTimeEndianEjEEINtNtB1A_3map11MapConsumerINtNtNtB1A_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB6i_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB3W_E0EE0NCB1t_s_0INtB5A_13CollectResultB6g_EB9k_E0EB6i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXsa_NtCs3uS0LcqId4h_5rayon3vecINtB5_13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBV_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB2n_12endian_slice11EndianSliceNtNtB2p_9endianity13RunTimeEndianEjEEINtNtBK_3map11MapConsumerINtNtNtBK_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB5p_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB35_E0EEs_0EB5p_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void @_RNvXsa_NtCs3uS0LcqId4h_5rayon3vecINtB5_13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBV_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB2n_12endian_slice11EndianSliceNtNtB2p_9endianity13RunTimeEndianEjEEINtNtBK_3map11MapConsumerINtNtNtBK_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB5p_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB35_E0EE0EB5p_.exit unwind label %bb.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB2n_12endian_slice11EndianSliceNtNtB2p_9endianity13RunTimeEndianEjEEINtNtBK_3map11MapConsumerINtNtNtBK_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB5p_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB35_E0EEs_0EB5p_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_RNvXsa_NtCs3uS0LcqId4h_5rayon3vecINtB5_13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBV_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB2n_12endian_slice11EndianSliceNtNtB2p_9endianity13RunTimeEndianEjEEINtNtBK_3map11MapConsumerINtNtNtBK_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB5p_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB35_E0EE0EB5p_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtCs6o3pVbAMket_10rayon_core4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1C_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB3e_12endian_slice11EndianSliceNtNtB3g_9endianity13RunTimeEndianEjEEINtNtB1A_3map11MapConsumerNtNtB1A_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB3W_E0EE0NCB1t_s_0INtNtNtB71_11collections11linked_list10LinkedListINtNtB71_3vec3VecNtB68_11UnitSummaryEEB8N_E0EB68_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXsa_NtCs3uS0LcqId4h_5rayon3vecINtB5_13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBV_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB2n_12endian_slice11EndianSliceNtNtB2p_9endianity13RunTimeEndianEjEEINtNtBK_3map11MapConsumerNtNtBK_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB35_E0EEs_0EB5f_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke void @_RNvXsa_NtCs3uS0LcqId4h_5rayon3vecINtB5_13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBV_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB2n_12endian_slice11EndianSliceNtNtB2p_9endianity13RunTimeEndianEjEEINtNtBK_3map11MapConsumerNtNtBK_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB35_E0EE0EB5f_.exit unwind label %bb.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB2n_12endian_slice11EndianSliceNtNtB2p_9endianity13RunTimeEndianEjEEINtNtBK_3map11MapConsumerNtNtBK_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB35_E0EEs_0EB5f_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_RNvXsa_NtCs3uS0LcqId4h_5rayon3vecINtB5_13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBV_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB2n_12endian_slice11EndianSliceNtNtB2p_9endianity13RunTimeEndianEjEEINtNtBK_3map11MapConsumerNtNtBK_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB35_E0EE0EB5f_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtCs3uS0LcqId4h_5rayon4iter6extendINtB6_13ListVecFolderNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEINtNtB8_8plumbing6FolderB11_E12consume_iterINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtBa_3vec10SliceDrainINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB3J_12endian_slice11EndianSliceNtNtB3L_9endianity13RunTimeEndianEjEERNCINvB13_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB4r_E0EEB13_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !alias.scope !71
  invoke void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtCs3uS0LcqId4h_5rayon3vec10SliceDrainINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB3u_12endian_slice11EndianSliceNtNtB3w_9endianity13RunTimeEndianEjEERNCINvBT_13validate_infoQINtNtNtNtB6_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB4c_E0EE11spec_extendBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs3uS0LcqId4h_5rayon4iter6extend13ListVecFolderNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1v_(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #24
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs6o3pVbAMket_10rayon_core4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB2C_12endian_slice11EndianSliceNtNtB2E_9endianity13RunTimeEndianEjEEINtNtBY_3map11MapConsumerINtNtNtBY_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB5E_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB3k_E0EE0NCBR_s_0INtB4X_13CollectResultB5C_EB8F_E0B5E_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(120) %1, ptr noundef nonnull align 128 %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 16               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [128 x i8], align 8               ; 11 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [128 x i8], align 8               ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 16               ; 9 uses
  %i.i = alloca [128 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.l = load i64, ptr %i.k, align 128, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  store ptr %i.j, ptr %i.m, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 104 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store i64 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.p = invoke noundef zeroext i1 @_RNvMs4_NtCs8zAMriesZVa_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs6o3pVbAMket_10rayon_core3job6JobRefE8is_emptyCslKoDbeUmNq5_14dwarf_validate(ptr noundef nonnull align 8 %i.o)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.i, %bb.c, %.sink.split.i
  %.sroa.020.1 = phi i1 [ false, %bb.i ], [ true, %.sink.split.i ], [ true, %bb.b ], [ true, %bb.a ], [ true, %bb.c ]
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCs8zAMriesZVa_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs6o3pVbAMket_10rayon_core3job6JobRefE4pushCslKoDbeUmNq5_14dwarf_validate(ptr noundef nonnull align 8 %i.o, ptr noundef nonnull @_RNvXs2_NtCs6o3pVbAMket_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB53_12endian_slice11EndianSliceNtNtB55_9endianity13RunTimeEndianEjEEINtNtB1W_3map11MapConsumerINtB1S_15CollectConsumerB2T_ENCINvB2V_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5L_E0EEs_0E0B1P_ENtB5_3Job7executeB2V_, ptr noundef nonnull %i.i)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.j, align 16, !nonnull !5, !noundef !5 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 472
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 496
  %i.u = invoke noundef i64 @_RINvMs_NtNtCs6o3pVbAMket_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECslKoDbeUmNq5_14dwarf_validate(ptr noundef nonnull align 8 %i.t)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.v = and i64 %i.u, 65535                      ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RNvMNtCs6o3pVbAMket_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  br i1 %i.p, label %bb.e, label %.sink.split.i, !prof !12

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  invoke void @_RNvMNtCs6o3pVbAMket_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.s, i32 noundef 1)
          to label %_RNvMNtCs6o3pVbAMket_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.e:                                             ; preds = %bb.d
  %i.x = lshr i64 %i.u, 16
  %i.y = and i64 %i.x, 65535
  %i.z = icmp eq i64 %i.y, %i.v
  br i1 %i.z, label %.sink.split.i, label %_RNvMNtCs6o3pVbAMket_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !13

_RNvMNtCs6o3pVbAMket_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.e, %.noexc, %.sink.split.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.069.0.copyload = load ptr, ptr %i.aa, align 8, !nonnull !5, !noundef !5
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.470.0.copyload = load ptr, ptr %.sroa.470.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.571.0.copyload = load i64, ptr %.sroa.571.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx72, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, i64 24, i1 false)
  %i.ab = inttoptr i64 %.sroa.571.0.copyload to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ac = load i64, ptr %.sroa.069.0.copyload, align 8, !noalias !92, !noundef !5
  %i.ad = load i64, ptr %.sroa.470.0.copyload, align 8, !noalias !92, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.470.0.copyload, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !noalias !92, !noundef !5
  invoke void @_RINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB1J_12endian_slice11EndianSliceNtNtB1L_9endianity13RunTimeEndianEjEEINtNtB6_3map11MapConsumerINtNtNtB6_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB4L_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB2r_E0EEB4L_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.ac, i1 noundef zeroext true, i64 noundef %i.ad, i64 noundef %i.af, ptr noalias nofree noundef nonnull align 8 %i.ab, i64 noundef %.sroa.6.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_RNvMNtCs6o3pVbAMket_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  %i.ai = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ah)
          to label %bb.i unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #22
  unreachable

bb.h:                                             ; preds = %_RNvMNtCs6o3pVbAMket_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !92
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.13.0.copyload68 = load i64, ptr %.sroa.13.0..sroa_idx, align 16
  %i.ak = load <2 x ptr>, ptr %i.b, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store <2 x ptr> %i.ak, ptr %i.h, align 16
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.13.0.copyload68, ptr %.sroa.513.0..sroa_idx, align 16
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.ao = extractvalue { ptr, ptr } %i.ai, 0      ; 2 uses
  %i.ap = extractvalue { ptr, ptr } %i.ai, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao), "nonnull"(ptr %i.ap) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvNtCs6o3pVbAMket_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.m, ptr noundef nonnull %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ap) #26
          to label %bb.ag unwind label %.thread

bb.j:                                             ; preds = %bb.h, %bb.w
  %i.aq = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.ar = icmp eq i64 %i.aq, 3
  br i1 %i.ar, label %.loopexit96, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = invoke { ptr, ptr } @_RNvMs4_NtCs8zAMriesZVa_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs6o3pVbAMket_10rayon_core3job6JobRefE3popCslKoDbeUmNq5_14dwarf_validate(ptr noundef nonnull align 8 %i.o)
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc49:                                         ; preds = %bb.k
  %i.at = extractvalue { ptr, ptr } %i.as, 0
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCs6o3pVbAMket_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.preheader.i:                                     ; preds = %.noexc49, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs8_NtCs8zAMriesZVa_15crossbeam_deque5dequeINtB5_7StealerNtNtCs6o3pVbAMket_10rayon_core3job6JobRefE5stealCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.al)
          to label %.noexc50 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc50:                                         ; preds = %.preheader.i
  %i.au = load i64, ptr %i.c, align 8, !range !6, !noundef !5
  switch i64 %i.au, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.l
    i64 2, label %bb.m
  ]

default.unreachable:                              ; preds = %.noexc50
  unreachable

bb.l:                                             ; preds = %.noexc50
  %i.av = load ptr, ptr %i.am, align 8, !nonnull !5, !noundef !5
  %i.aw = load ptr, ptr %i.an, align 8, !noundef !5
  br label %.loopexit.i

bb.m:                                             ; preds = %.noexc50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc50, %bb.l
  %.sroa.5.0.i = phi ptr [ %i.aw, %bb.l ], [ undef, %.noexc50 ]
  %.sroa.0.0.i = phi ptr [ %i.av, %bb.l ], [ null, %.noexc50 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ax = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.ay = insertvalue { ptr, ptr } %i.ax, ptr %.sroa.5.0.i, 1
  br label %_RNvMs8_NtCs6o3pVbAMket_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.loopexit96:                                      ; preds = %bb.j, %bb.ad, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %i.i, i64 128, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sroa.0.0.copyload.i = load i64, ptr %i.az, align 8, !alias.scope !93
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !93 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !93 ; 3 uses
  switch i64 %.sroa.0.0.copyload.i, label %default.unreachable1.i.i [
    i64 0, label %bb.n
    i64 1, label %bb.r
    i64 2, label %bb.o
  ], !prof !14

default.unreachable1.i.i:                         ; preds = %.loopexit96
  unreachable

bb.n:                                             ; preds = %.loopexit96
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27
          to label %.noexc.i unwind label %bb.p, !noalias !94

.noexc.i:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %.loopexit96
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload.i), "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  invoke void @_RNvNtCs6o3pVbAMket_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %.sroa.2.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.4.0.copyload.i) #26
          to label %.noexc1.i unwind label %bb.p, !noalias !94

.noexc1.i:                                        ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %i.d, align 8, !alias.scope !95, !noundef !5
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %.body, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  invoke void @_RNvXsa_NtCs3uS0LcqId4h_5rayon3vecINtB5_13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBV_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bd)
          to label %.body unwind label %bb.t, !noalias !96

bb.r:                                             ; preds = %.loopexit96
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !93
  %i.be = load ptr, ptr %i.d, align 8, !alias.scope !97, !noundef !5
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %_RNvMs1_NtCs6o3pVbAMket_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB53_12endian_slice11EndianSliceNtNtB55_9endianity13RunTimeEndianEjEEINtNtB1W_3map11MapConsumerINtB1S_15CollectConsumerB2T_ENCINvB2V_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5L_E0EEs_0E0B1P_E11into_resultB2V_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  invoke void @_RNvXsa_NtCs3uS0LcqId4h_5rayon3vecINtB5_13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBV_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bg)
          to label %_RNvMs1_NtCs6o3pVbAMket_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB53_12endian_slice11EndianSliceNtNtB55_9endianity13RunTimeEndianEjEEINtNtB1W_3map11MapConsumerINtB1S_15CollectConsumerB2T_ENCINvB2V_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5L_E0EEs_0E0B1P_E11into_resultB2V_.exit unwind label %bb.ae

bb.t:                                             ; preds = %bb.q
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !96
  unreachable

_RNvMs8_NtCs6o3pVbAMket_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %.loopexit.i, %.noexc49
  %.merged.i = phi { ptr, ptr } [ %i.as, %.noexc49 ], [ %i.ay, %.loopexit.i ] ; 2 uses
  %i.bi = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.bj = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.bi, null                 ; 2 uses
  br i1 %.not, label %bb.ac, label %bb.u

bb.u:                                             ; preds = %_RNvMs8_NtCs6o3pVbAMket_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bk = icmp eq ptr %i.i, %i.bj
  br i1 %i.bk, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bl = invoke noundef i64 @_RNvYFUPuEuNtNtNtCskKLDkoKarTP_4core3ops8function5FnPtr4addrCslKoDbeUmNq5_14dwarf_validate(ptr noundef nonnull @_RNvXs2_NtCs6o3pVbAMket_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB53_12endian_slice11EndianSliceNtNtB55_9endianity13RunTimeEndianEjEEINtNtB1W_3map11MapConsumerINtB1S_15CollectConsumerB2T_ENCINvB2V_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5L_E0EEs_0E0B1P_ENtB5_3Job7executeB2V_)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.u, %bb.y
  invoke void %i.bi(ptr noundef %i.bj)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.v
  %i.bm = invoke noundef i64 @_RNvYFUPuEuNtNtNtCskKLDkoKarTP_4core3ops8function5FnPtr4addrCslKoDbeUmNq5_14dwarf_validate(ptr noundef nonnull %i.bi)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.x
  %i.bn = icmp eq i64 %i.bl, %i.bm
  br i1 %i.bn, label %bb.z, label %bb.w

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.f, ptr noundef nonnull align 8 dereferenceable(128) %i.i, i64 128, i1 false)
  invoke void @_RNvMs1_NtCs6o3pVbAMket_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB53_12endian_slice11EndianSliceNtNtB55_9endianity13RunTimeEndianEjEEINtNtB1W_3map11MapConsumerINtB1S_15CollectConsumerB2T_ENCINvB2V_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5L_E0EEs_0E0B1P_E10run_inlineB2V_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(128) %i.f, i1 noundef zeroext true)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ab

bb.ab:                                            ; preds = %_RNvMs1_NtCs6o3pVbAMket_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB53_12endian_slice11EndianSliceNtNtB55_9endianity13RunTimeEndianEjEEINtNtB1W_3map11MapConsumerINtB1S_15CollectConsumerB2T_ENCINvB2V_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5L_E0EEs_0E0B1P_E11into_resultB2V_.exit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.ac:                                            ; preds = %_RNvMs8_NtCs6o3pVbAMket_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bp = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bq = icmp eq i64 %i.bp, 3
  br i1 %i.bq, label %.loopexit96, label %bb.ad, !prof !12

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvMs8_NtCs6o3pVbAMket_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit96 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %bb.s
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.p, %bb.q, %bb.ae
  %eh.lpad-body = phi { ptr, i32 } [ %i.br, %bb.ae ], [ %i.ba, %bb.q ], [ %i.ba, %bb.p ]
  invoke void @_RNvXs2_NtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumerINtB5_13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB2n_12endian_slice11EndianSliceNtNtB2p_9endianity13RunTimeEndianEjEEINtNtBK_3map11MapConsumerINtNtNtBK_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB5p_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB35_E0EE0EB5p_.exit unwind label %bb.af

_RNvMs1_NtCs6o3pVbAMket_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB53_12endian_slice11EndianSliceNtNtB55_9endianity13RunTimeEndianEjEEINtNtB1W_3map11MapConsumerINtB1S_15CollectConsumerB2T_ENCINvB2V_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5L_E0EEs_0E0B1P_E11into_resultB2V_.exit: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.2.0.copyload.i, ptr %i.bs, align 8
  %.sroa.4.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx63, align 8
  %.sroa.5.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.5.0.copyload.i, ptr %.sroa.5.0..sroa_idx64, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ab

bb.af:                                            ; preds = %bb.aj, %.loopexit.split-lp, %.body, %bb.ai
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.v, %bb.w, %bb.x, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ad, %bb.z
  %lpad.loopexit.split-lp98 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp
  %.sroa.019.2 = phi i1 [ %.not, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp98, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke void @_RNvXs2_NtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumerINtB5_13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1H_.exit55 unwind label %bb.af

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1H_.exit55: ; preds = %.loopexit.split-lp
  br i1 %.sroa.019.2, label %bb.ai, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB2n_12endian_slice11EndianSliceNtNtB2p_9endianity13RunTimeEndianEjEEINtNtBK_3map11MapConsumerINtNtNtBK_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB5p_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB35_E0EE0EB5p_.exit

bb.ag:                                            ; preds = %bb.i
  unreachable

bb.ah:                                            ; preds = %bb.ai
  br i1 %.sroa.020.077, label %bb.aj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB2n_12endian_slice11EndianSliceNtNtB2p_9endianity13RunTimeEndianEjEEINtNtBK_3map11MapConsumerINtNtNtBK_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB5p_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB35_E0EE0EB5p_.exit

bb.ai:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1H_.exit55, %.thread
  %.pn4679 = phi { ptr, i32 } [ %i.q, %.thread ], [ %lpad.phi, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1H_.exit55 ] ; 2 uses
  %.sroa.020.077 = phi i1 [ %.sroa.020.1, %.thread ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1H_.exit55 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvNvNtB2p_8plumbing24bridge_producer_consumer6helperINtNtB2r_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB5w_12endian_slice11EndianSliceNtNtB5y_9endianity13RunTimeEndianEjEEINtNtB2p_3map11MapConsumerINtB2l_15CollectConsumerB3m_ENCINvB3o_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6e_E0EEs_0E0B2i_EEB3o_(ptr noalias nofree noundef align 8 dereferenceable(128) %i.i) #24
          to label %bb.ah unwind label %bb.af

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB2n_12endian_slice11EndianSliceNtNtB2p_9endianity13RunTimeEndianEjEEINtNtBK_3map11MapConsumerINtNtNtBK_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB5p_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB35_E0EE0EB5p_.exit: ; preds = %.body, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1H_.exit55, %bb.aj, %bb.ah
  %.pn467895 = phi { ptr, i32 } [ %.pn4679, %bb.aj ], [ %.pn4679, %bb.ah ], [ %lpad.phi, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1H_.exit55 ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn467895

bb.aj:                                            ; preds = %bb.ah
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_RNvXsa_NtCs3uS0LcqId4h_5rayon3vecINtB5_13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBV_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bu)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB2n_12endian_slice11EndianSliceNtNtB2p_9endianity13RunTimeEndianEjEEINtNtBK_3map11MapConsumerINtNtNtBK_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB5p_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB35_E0EE0EB5p_.exit unwind label %bb.af
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs6o3pVbAMket_10rayon_core4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB2C_12endian_slice11EndianSliceNtNtB2E_9endianity13RunTimeEndianEjEEINtNtBY_3map11MapConsumerNtNtBY_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB3k_E0EE0NCBR_s_0INtNtNtB6n_11collections11linked_list10LinkedListINtNtB6n_3vec3VecNtB5u_11UnitSummaryEEB88_E0B5u_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(88) %1, ptr noundef nonnull align 128 %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [112 x i8], align 8               ; 11 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [112 x i8], align 8               ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 16               ; 9 uses
  %i.h = alloca [112 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.l = load i64, ptr %i.k, align 128, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 2 uses
  store ptr %i.j, ptr %i.m, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 88 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 0, ptr %i.h, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.o = invoke noundef zeroext i1 @_RNvMs4_NtCs8zAMriesZVa_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs6o3pVbAMket_10rayon_core3job6JobRefE8is_emptyCslKoDbeUmNq5_14dwarf_validate(ptr noundef nonnull align 8 %i.n)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.i, %bb.c, %.sink.split.i
  %.sroa.020.1 = phi i1 [ false, %bb.i ], [ true, %.sink.split.i ], [ true, %bb.b ], [ true, %bb.a ], [ true, %bb.c ]
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCs8zAMriesZVa_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs6o3pVbAMket_10rayon_core3job6JobRefE4pushCslKoDbeUmNq5_14dwarf_validate(ptr noundef nonnull align 8 %i.n, ptr noundef nonnull @_RNvXs2_NtCs6o3pVbAMket_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB45_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB5H_12endian_slice11EndianSliceNtNtB5J_9endianity13RunTimeEndianEjEEINtNtB43_3map11MapConsumerNtNtB43_6extend15ListVecConsumerNCINvB3b_13validate_infoQINtNtNtNtB1W_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6p_E0EEs_0E0B1P_ENtB5_3Job7executeB3b_, ptr noundef nonnull %i.h)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.j, align 16, !nonnull !5, !noundef !5 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 472
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 496
  %i.t = invoke noundef i64 @_RINvMs_NtNtCs6o3pVbAMket_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECslKoDbeUmNq5_14dwarf_validate(ptr noundef nonnull align 8 %i.s)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.u = and i64 %i.t, 65535                      ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvMNtCs6o3pVbAMket_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  br i1 %i.o, label %bb.e, label %.sink.split.i, !prof !12

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  invoke void @_RNvMNtCs6o3pVbAMket_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.r, i32 noundef 1)
          to label %_RNvMNtCs6o3pVbAMket_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.e:                                             ; preds = %bb.d
  %i.w = lshr i64 %i.t, 16
  %i.x = and i64 %i.w, 65535
  %i.y = icmp eq i64 %i.x, %i.u
  br i1 %i.y, label %.sink.split.i, label %_RNvMNtCs6o3pVbAMket_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !13

_RNvMNtCs6o3pVbAMket_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.e, %.noexc, %.sink.split.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.069.0.copyload = load ptr, ptr %i.z, align 8, !nonnull !5, !noundef !5
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.470.0.copyload = load ptr, ptr %.sroa.470.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.571.0.copyload = load i64, ptr %.sroa.571.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx72, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  %i.aa = inttoptr i64 %.sroa.571.0.copyload to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ab = load i64, ptr %.sroa.069.0.copyload, align 8, !noalias !118, !noundef !5
  %i.ac = load i64, ptr %.sroa.470.0.copyload, align 8, !noalias !118, !noundef !5
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.470.0.copyload, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !118, !noundef !5
  invoke void @_RINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB1J_12endian_slice11EndianSliceNtNtB1L_9endianity13RunTimeEndianEjEEINtNtB6_3map11MapConsumerNtNtB6_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB2r_E0EEB4B_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.ab, i1 noundef zeroext true, i64 noundef %i.ac, i64 noundef %i.ae, ptr noalias nofree noundef nonnull align 8 %i.aa, i64 noundef %.sroa.6.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.7.0.copyload)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_RNvMNtCs6o3pVbAMket_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  %i.ah = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ag)
          to label %bb.i unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #22
  unreachable

bb.h:                                             ; preds = %_RNvMNtCs6o3pVbAMket_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.13.0.copyload68 = load i64, ptr %.sroa.13.0..sroa_idx, align 16
  %i.aj = load <2 x ptr>, ptr %i.a, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store <2 x ptr> %i.aj, ptr %i.g, align 16
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.13.0.copyload68, ptr %.sroa.513.0..sroa_idx, align 16
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.an = extractvalue { ptr, ptr } %i.ah, 0      ; 2 uses
  %i.ao = extractvalue { ptr, ptr } %i.ah, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an), "nonnull"(ptr %i.ao) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvNtCs6o3pVbAMket_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.m, ptr noundef nonnull %i.an, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ao) #26
          to label %bb.ag unwind label %.thread

bb.j:                                             ; preds = %bb.h, %bb.w
  %i.ap = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.aq = icmp eq i64 %i.ap, 3
  br i1 %i.aq, label %.loopexit96, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = invoke { ptr, ptr } @_RNvMs4_NtCs8zAMriesZVa_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs6o3pVbAMket_10rayon_core3job6JobRefE3popCslKoDbeUmNq5_14dwarf_validate(ptr noundef nonnull align 8 %i.n)
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc49:                                         ; preds = %bb.k
  %i.as = extractvalue { ptr, ptr } %i.ar, 0
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCs6o3pVbAMket_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.preheader.i:                                     ; preds = %.noexc49, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs8_NtCs8zAMriesZVa_15crossbeam_deque5dequeINtB5_7StealerNtNtCs6o3pVbAMket_10rayon_core3job6JobRefE5stealCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ak)
          to label %.noexc50 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc50:                                         ; preds = %.preheader.i
  %i.at = load i64, ptr %i.b, align 8, !range !6, !noundef !5
  switch i64 %i.at, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.l
    i64 2, label %bb.m
  ]

default.unreachable:                              ; preds = %.noexc50
  unreachable

bb.l:                                             ; preds = %.noexc50
  %i.au = load ptr, ptr %i.al, align 8, !nonnull !5, !noundef !5
  %i.av = load ptr, ptr %i.am, align 8, !noundef !5
  br label %.loopexit.i

bb.m:                                             ; preds = %.noexc50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc50, %bb.l
  %.sroa.5.0.i = phi ptr [ %i.av, %bb.l ], [ undef, %.noexc50 ]
  %.sroa.0.0.i = phi ptr [ %i.au, %bb.l ], [ null, %.noexc50 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aw = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.ax = insertvalue { ptr, ptr } %i.aw, ptr %.sroa.5.0.i, 1
  br label %_RNvMs8_NtCs6o3pVbAMket_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.loopexit96:                                      ; preds = %bb.j, %bb.ad, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 16 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.c, ptr noundef nonnull align 8 dereferenceable(112) %i.h, i64 112, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 8, !alias.scope !119
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !119 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !119 ; 3 uses
  switch i64 %.sroa.0.0.copyload.i, label %default.unreachable1.i.i [
    i64 0, label %bb.n
    i64 1, label %bb.r
    i64 2, label %bb.o
  ], !prof !14

default.unreachable1.i.i:                         ; preds = %.loopexit96
  unreachable

bb.n:                                             ; preds = %.loopexit96
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27
          to label %.noexc.i unwind label %bb.p, !noalias !120

.noexc.i:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %.loopexit96
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload.i), "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  invoke void @_RNvNtCs6o3pVbAMket_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %.sroa.2.0.copyload.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.4.0.copyload.i) #26
          to label %.noexc1.i unwind label %bb.p, !noalias !120

.noexc1.i:                                        ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !121, !noundef !5
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %.body, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  invoke void @_RNvXsa_NtCs3uS0LcqId4h_5rayon3vecINtB5_13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBV_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bc)
          to label %.body unwind label %bb.t, !noalias !122

bb.r:                                             ; preds = %.loopexit96
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !119
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !123, !noundef !5
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %_RNvMs1_NtCs6o3pVbAMket_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB45_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB5H_12endian_slice11EndianSliceNtNtB5J_9endianity13RunTimeEndianEjEEINtNtB43_3map11MapConsumerNtNtB43_6extend15ListVecConsumerNCINvB3b_13validate_infoQINtNtNtNtB1W_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6p_E0EEs_0E0B1P_E11into_resultB3b_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  invoke void @_RNvXsa_NtCs3uS0LcqId4h_5rayon3vecINtB5_13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBV_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bg)
          to label %_RNvMs1_NtCs6o3pVbAMket_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB45_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB5H_12endian_slice11EndianSliceNtNtB5J_9endianity13RunTimeEndianEjEEINtNtB43_3map11MapConsumerNtNtB43_6extend15ListVecConsumerNCINvB3b_13validate_infoQINtNtNtNtB1W_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6p_E0EEs_0E0B1P_E11into_resultB3b_.exit unwind label %bb.ae

bb.t:                                             ; preds = %bb.q
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !122
  unreachable

_RNvMs8_NtCs6o3pVbAMket_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %.loopexit.i, %.noexc49
  %.merged.i = phi { ptr, ptr } [ %i.ar, %.noexc49 ], [ %i.ax, %.loopexit.i ] ; 2 uses
  %i.bi = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.bj = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.bi, null                 ; 2 uses
  br i1 %.not, label %bb.ac, label %bb.u

bb.u:                                             ; preds = %_RNvMs8_NtCs6o3pVbAMket_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bk = icmp eq ptr %i.h, %i.bj
  br i1 %i.bk, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bl = invoke noundef i64 @_RNvYFUPuEuNtNtNtCskKLDkoKarTP_4core3ops8function5FnPtr4addrCslKoDbeUmNq5_14dwarf_validate(ptr noundef nonnull @_RNvXs2_NtCs6o3pVbAMket_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB45_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB5H_12endian_slice11EndianSliceNtNtB5J_9endianity13RunTimeEndianEjEEINtNtB43_3map11MapConsumerNtNtB43_6extend15ListVecConsumerNCINvB3b_13validate_infoQINtNtNtNtB1W_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6p_E0EEs_0E0B1P_ENtB5_3Job7executeB3b_)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.u, %bb.y
  invoke void %i.bi(ptr noundef %i.bj)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.v
  %i.bm = invoke noundef i64 @_RNvYFUPuEuNtNtNtCskKLDkoKarTP_4core3ops8function5FnPtr4addrCslKoDbeUmNq5_14dwarf_validate(ptr noundef nonnull %i.bi)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.x
  %i.bn = icmp eq i64 %i.bl, %i.bm
  br i1 %i.bn, label %bb.z, label %bb.w

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.e, ptr noundef nonnull align 8 dereferenceable(112) %i.h, i64 112, i1 false)
  invoke void @_RNvMs1_NtCs6o3pVbAMket_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB45_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB5H_12endian_slice11EndianSliceNtNtB5J_9endianity13RunTimeEndianEjEEINtNtB43_3map11MapConsumerNtNtB43_6extend15ListVecConsumerNCINvB3b_13validate_infoQINtNtNtNtB1W_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6p_E0EEs_0E0B1P_E10run_inlineB3b_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.e, i1 noundef zeroext true)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ab

bb.ab:                                            ; preds = %_RNvMs1_NtCs6o3pVbAMket_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB45_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB5H_12endian_slice11EndianSliceNtNtB5J_9endianity13RunTimeEndianEjEEINtNtB43_3map11MapConsumerNtNtB43_6extend15ListVecConsumerNCINvB3b_13validate_infoQINtNtNtNtB1W_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6p_E0EEs_0E0B1P_E11into_resultB3b_.exit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.ac:                                            ; preds = %_RNvMs8_NtCs6o3pVbAMket_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bp = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bq = icmp eq i64 %i.bp, 3
  br i1 %i.bq, label %.loopexit96, label %bb.ad, !prof !12

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvMs8_NtCs6o3pVbAMket_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit96 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %bb.s
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.p, %bb.q, %bb.ae
  %eh.lpad-body = phi { ptr, i32 } [ %i.br, %bb.ae ], [ %i.ay, %bb.q ], [ %i.ay, %bb.p ]
  invoke void @_RNvXs7_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB2n_12endian_slice11EndianSliceNtNtB2p_9endianity13RunTimeEndianEjEEINtNtBK_3map11MapConsumerNtNtBK_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB35_E0EE0EB5f_.exit unwind label %bb.af

_RNvMs1_NtCs6o3pVbAMket_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB45_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB5H_12endian_slice11EndianSliceNtNtB5J_9endianity13RunTimeEndianEjEEINtNtB43_3map11MapConsumerNtNtB43_6extend15ListVecConsumerNCINvB3b_13validate_infoQINtNtNtNtB1W_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6p_E0EEs_0E0B1P_E11into_resultB3b_.exit: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.2.0.copyload.i, ptr %i.bs, align 8
  %.sroa.4.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx63, align 8
  %.sroa.5.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.5.0.copyload.i, ptr %.sroa.5.0..sroa_idx64, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ab

bb.af:                                            ; preds = %bb.aj, %.loopexit.split-lp, %.body, %bb.ai
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
end_hunk_0
begin_hunk_1_@_RNvMs1_NtCs6o3pVbAMket_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4m_12endian_slice11EndianSliceNtNtB4o_9endianity13RunTimeEndianEjEEINtNtB2I_3map11MapConsumerINtNtNtB2I_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB7q_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB54_E0EE0NCB2B_s_0INtB6I_13CollectResultB7o_EBas_E0TBas_Bas_EE0BaZ_E11into_resultB7q_:bb.a
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB1v_8Registry15in_worker_crossNCINvNtB1x_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3h_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4T_12endian_slice11EndianSliceNtNtB4V_9endianity13RunTimeEndianEjEEINtNtB3f_3map11MapConsumerINtNtNtB3f_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB7X_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5B_E0EE0NCB38_s_0INtB7f_13CollectResultB7V_EBaZ_E0TBaZ_BaZ_EE0EEEB7X_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB1v_8Registry15in_worker_crossNCINvNtB1x_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3h_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4T_12endian_slice11EndianSliceNtNtB4V_9endianity13RunTimeEndianEjEEINtNtB3f_3map11MapConsumerINtNtNtB3f_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB7X_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5B_E0EE0NCB38_s_0INtB7f_13CollectResultB7V_EBaZ_E0TBaZ_BaZ_EE0EEEB7X_.exit: ; preds = %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB46_12endian_slice11EndianSliceNtNtB48_9endianity13RunTimeEndianEjEEINtNtB2s_3map11MapConsumerINtNtNtB2s_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB7a_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB4O_E0EE0NCB2l_s_0INtB6s_13CollectResultB78_EBac_E0TBac_Bac_EE0EB7a_.exit.i.i
  ret void

bb.i:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCs6o3pVbAMket_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4m_12endian_slice11EndianSliceNtNtB4o_9endianity13RunTimeEndianEjEEINtNtB2I_3map11MapConsumerNtNtB2I_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB54_E0EE0NCB2B_s_0INtNtNtB89_11collections11linked_list10LinkedListINtNtB89_3vec3VecNtB7g_11UnitSummaryEEB9V_E0TB9V_B9V_EE0Bbq_E11into_resultB7g_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(176) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  switch i64 %.sroa.0.0.copyload, label %default.unreachable1.i [
    i64 0, label %bb.b
    i64 1, label %bb.e
    i64 2, label %bb.c
  ], !prof !14

default.unreachable1.i:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload), "nonnull"(ptr %.sroa.4.0.copyload) ]
  invoke void @_RNvNtCs6o3pVbAMket_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %.sroa.2.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.4.0.copyload) #26
          to label %.noexc1 unwind label %bb.d

.noexc1:                                          ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB1v_8Registry15in_worker_crossNCINvNtB1x_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3h_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4T_12endian_slice11EndianSliceNtNtB4V_9endianity13RunTimeEndianEjEEINtNtB3f_3map11MapConsumerNtNtB3f_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5B_E0EE0NCB38_s_0INtNtNtB8G_11collections11linked_list10LinkedListINtNtB8G_3vec3VecNtB7N_11UnitSummaryEEBas_E0TBas_Bas_EE0EEEB7N_(ptr noalias nofree noundef align 8 dereferenceable(88) %1) #24
          to label %common.resume unwind label %bb.i

bb.e:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %.sroa.2.0.copyload, ptr %0, align 8, !alias.scope !168
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4.0.copyload, ptr %.sroa.4.8..sroa_idx, align 8, !alias.scope !168
  %.sroa.5.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx, i64 32, i1 false)
  %i.c = load ptr, ptr %1, align 8, !alias.scope !169, !noundef !5
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB1v_8Registry15in_worker_crossNCINvNtB1x_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3h_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4T_12endian_slice11EndianSliceNtNtB4V_9endianity13RunTimeEndianEjEEINtNtB3f_3map11MapConsumerNtNtB3f_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5B_E0EE0NCB38_s_0INtNtNtB8G_11collections11linked_list10LinkedListINtNtB8G_3vec3VecNtB7N_11UnitSummaryEEBas_E0TBas_Bas_EE0EEEB7N_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_RNvXsa_NtCs3uS0LcqId4h_5rayon3vecINtB5_13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBV_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB46_12endian_slice11EndianSliceNtNtB48_9endianity13RunTimeEndianEjEEINtNtB2s_3map11MapConsumerNtNtB2s_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB4O_E0EE0NCB2l_s_0INtNtNtB7T_11collections11linked_list10LinkedListINtNtB7T_3vec3VecNtB70_11UnitSummaryEEB9F_E0TB9F_B9F_EE0EB70_.exit.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke void @_RNvXsa_NtCs3uS0LcqId4h_5rayon3vecINtB5_13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBV_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.g ], [ %i.b, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB46_12endian_slice11EndianSliceNtNtB48_9endianity13RunTimeEndianEjEEINtNtB2s_3map11MapConsumerNtNtB2s_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB4O_E0EE0NCB2l_s_0INtNtNtB7T_11collections11linked_list10LinkedListINtNtB7T_3vec3VecNtB70_11UnitSummaryEEB9F_E0TB9F_B9F_EE0EB70_.exit.i.i: ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @_RNvXsa_NtCs3uS0LcqId4h_5rayon3vecINtB5_13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBV_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB1v_8Registry15in_worker_crossNCINvNtB1x_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3h_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4T_12endian_slice11EndianSliceNtNtB4V_9endianity13RunTimeEndianEjEEINtNtB3f_3map11MapConsumerNtNtB3f_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5B_E0EE0NCB38_s_0INtNtNtB8G_11collections11linked_list10LinkedListINtNtB8G_3vec3VecNtB7N_11UnitSummaryEEBas_E0TBas_Bas_EE0EEEB7N_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB1v_8Registry15in_worker_crossNCINvNtB1x_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3h_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4T_12endian_slice11EndianSliceNtNtB4V_9endianity13RunTimeEndianEjEEINtNtB3f_3map11MapConsumerNtNtB3f_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5B_E0EE0NCB38_s_0INtNtNtB8G_11collections11linked_list10LinkedListINtNtB8G_3vec3VecNtB7N_11UnitSummaryEEBas_E0TBas_Bas_EE0EEEB7N_.exit: ; preds = %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB46_12endian_slice11EndianSliceNtNtB48_9endianity13RunTimeEndianEjEEINtNtB2s_3map11MapConsumerNtNtB2s_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB4O_E0EE0NCB2l_s_0INtNtNtB7T_11collections11linked_list10LinkedListINtNtB7T_3vec3VecNtB70_11UnitSummaryEEB9F_E0TB9F_B9F_EE0EB70_.exit.i.i
  ret void

bb.i:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCs6o3pVbAMket_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_5slice12IterProducerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEINtNtB2I_8for_each15ForEachConsumerNCINvB4k_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB7K_9endianity13RunTimeEndianEEs_0EE0NCB2B_s_0uuE0TuuEE0B9s_E11into_resultB4k_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(144) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8
  switch i64 %.sroa.0.0.copyload, label %default.unreachable1.i [
    i64 0, label %bb.b
    i64 1, label %_RNvMs7_NtCs6o3pVbAMket_10rayon_core3jobINtB5_9JobResultTuuEE17into_return_valueCslKoDbeUmNq5_14dwarf_validate.exit
    i64 2, label %bb.c
  ], !prof !14

default.unreachable1.i:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27, !noalias !172
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvNtCs6o3pVbAMket_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %.sroa.2.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.3.0.copyload) #26, !noalias !172
  unreachable

_RNvMs7_NtCs6o3pVbAMket_10rayon_core3jobINtB5_9JobResultTuuEE17into_return_valueCslKoDbeUmNq5_14dwarf_validate.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCs6o3pVbAMket_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB45_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB5H_12endian_slice11EndianSliceNtNtB5J_9endianity13RunTimeEndianEjEEINtNtB43_3map11MapConsumerNtNtB43_6extend15ListVecConsumerNCINvB3b_13validate_infoQINtNtNtNtB1W_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6p_E0EEs_0E0B1P_E10run_inlineB3b_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(112) %1, i1 noundef zeroext %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.3.sroa.5.0.copyload = load ptr, ptr %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx, align 8, !nonnull !5, !noundef !5
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.3.sroa.4.0.copyload = load i64, ptr %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.3.sroa.3.0.copyload = load ptr, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, align 8, !nonnull !5, !noundef !5
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.3.sroa.2.0.copyload = load ptr, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.3.sroa.0.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  %i.b = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !183, !noundef !5
  %i.c = load i64, ptr %.sroa.3.sroa.0.0.copyload, align 8, !noalias !183, !noundef !5
  %i.d = sub i64 %i.b, %i.c
  %i.e = load i64, ptr %.sroa.3.sroa.2.0.copyload, align 8, !noalias !183, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.3.sroa.2.0.copyload, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noalias !183, !noundef !5
  invoke void @_RINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB1J_12endian_slice11EndianSliceNtNtB1L_9endianity13RunTimeEndianEjEEINtNtB6_3map11MapConsumerNtNtB6_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB2r_E0EEB4B_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, i64 noundef %i.d, i1 noundef zeroext %2, i64 noundef %i.e, i64 noundef %i.g, ptr noalias nofree noundef nonnull align 8 %.sroa.3.sroa.3.0.copyload, i64 noundef %.sroa.3.sroa.4.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.3.sroa.5.0.copyload)
          to label %_RNCINvNvNtCs6o3pVbAMket_10rayon_core4join12join_context6call_bINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB15_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3e_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4Q_12endian_slice11EndianSliceNtNtB4S_9endianity13RunTimeEndianEjEEINtNtB3c_3map11MapConsumerNtNtB3c_6extend15ListVecConsumerNCINvB2k_13validate_infoQINtNtNtNtB15_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5y_E0EEs_0E0B2k_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #26
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEEB35_(ptr noalias nofree noundef align 8 dereferenceable(32) %1) #24
          to label %common.resume unwind label %bb.m

bb.e:                                             ; preds = %bb.c
  unreachable

_RNCINvNvNtCs6o3pVbAMket_10rayon_core4join12join_context6call_bINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB15_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3e_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4Q_12endian_slice11EndianSliceNtNtB4S_9endianity13RunTimeEndianEjEEINtNtB3c_3map11MapConsumerNtNtB3c_6extend15ListVecConsumerNCINvB2k_13validate_infoQINtNtNtNtB15_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5y_E0EEs_0E0B2k_.exit: ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %i.i = load i64, ptr %1, align 8, !range !6, !alias.scope !186, !noundef !5
  switch i64 %i.i, label %bb.f [
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEEB35_.exit
    i64 1, label %bb.l
  ]

bb.f:                                             ; preds = %_RNCINvNvNtCs6o3pVbAMket_10rayon_core4join12join_context6call_bINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB15_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3e_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4Q_12endian_slice11EndianSliceNtNtB4S_9endianity13RunTimeEndianEjEEINtNtB3c_3map11MapConsumerNtNtB3c_6extend15ListVecConsumerNCINvB2k_13validate_infoQINtNtNtNtB15_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5y_E0EEs_0E0B2k_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i = load ptr, ptr %i.j, align 8, !alias.scope !186 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i = load ptr, ptr %i.k, align 8, !alias.scope !186, !nonnull !5, !align !7, !noundef !5 ; 5 uses
  %i.l = load ptr, ptr %.val1.i.i, align 8, !invariant.load !5, !noalias !186 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.l(ptr noundef nonnull %.val.i.i)
          to label %bb.h unwind label %bb.j, !noalias !186

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !8, !invariant.load !5, !noalias !186 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEEB35_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !9, !invariant.load !5, !noalias !186
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #23, !noalias !186
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEEB35_.exit

bb.j:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !8, !invariant.load !5, !noalias !186 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %common.resume, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.w = load i64, ptr %i.v, align 8, !range !9, !invariant.load !5, !noalias !186
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.t, i64 noundef range(i64 1, 536870913) %i.w) #23, !noalias !186
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.j, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.j ], [ %i.r, %bb.k ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %_RNCINvNvNtCs6o3pVbAMket_10rayon_core4join12join_context6call_bINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB15_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3e_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4Q_12endian_slice11EndianSliceNtNtB4S_9endianity13RunTimeEndianEjEEINtNtB3c_3map11MapConsumerNtNtB3c_6extend15ListVecConsumerNCINvB2k_13validate_infoQINtNtNtNtB15_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5y_E0EEs_0E0B2k_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvXs7_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEEB35_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEEB35_.exit: ; preds = %_RNCINvNvNtCs6o3pVbAMket_10rayon_core4join12join_context6call_bINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB15_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3e_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4Q_12endian_slice11EndianSliceNtNtB4S_9endianity13RunTimeEndianEjEEINtNtB3c_3map11MapConsumerNtNtB3c_6extend15ListVecConsumerNCINvB2k_13validate_infoQINtNtNtNtB15_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5y_E0EEs_0E0B2k_.exit, %bb.h, %bb.i, %bb.l
  ret void

bb.m:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCs6o3pVbAMket_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB45_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB5H_12endian_slice11EndianSliceNtNtB5J_9endianity13RunTimeEndianEjEEINtNtB43_3map11MapConsumerNtNtB43_6extend15ListVecConsumerNCINvB3b_13validate_infoQINtNtNtNtB1W_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6p_E0EEs_0E0B1P_E11into_resultB3b_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(112) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %1, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  switch i64 %.sroa.0.0.copyload, label %default.unreachable1.i [
    i64 0, label %bb.b
    i64 1, label %bb.f
    i64 2, label %bb.c
  ], !prof !14

default.unreachable1.i:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload), "nonnull"(ptr %.sroa.4.0.copyload) ]
  invoke void @_RNvNtCs6o3pVbAMket_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %.sroa.2.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.4.0.copyload) #26
          to label %.noexc1 unwind label %bb.d

.noexc1:                                          ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !198, !noundef !5
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCs6o3pVbAMket_10rayon_core4join12join_context6call_bINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB2s_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4B_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB6d_12endian_slice11EndianSliceNtNtB6f_9endianity13RunTimeEndianEjEEINtNtB4z_3map11MapConsumerNtNtB4z_6extend15ListVecConsumerNCINvB3H_13validate_infoQINtNtNtNtB2s_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6V_E0EEs_0E0EEEB3H_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_RNvXsa_NtCs3uS0LcqId4h_5rayon3vecINtB5_13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBV_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCs6o3pVbAMket_10rayon_core4join12join_context6call_bINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB2s_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4B_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB6d_12endian_slice11EndianSliceNtNtB6f_9endianity13RunTimeEndianEjEEINtNtB4z_3map11MapConsumerNtNtB4z_6extend15ListVecConsumerNCINvB3H_13validate_infoQINtNtNtNtB2s_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6V_E0EEs_0E0EEEB3H_.exit unwind label %bb.h

bb.f:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr %.sroa.2.0.copyload, ptr %0, align 8, !alias.scope !199
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4.0.copyload, ptr %.sroa.4.8..sroa_idx, align 8, !alias.scope !199
  %.sroa.5.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0.copyload, ptr %.sroa.5.8..sroa_idx, align 8, !alias.scope !199
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !200, !noundef !5
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCs6o3pVbAMket_10rayon_core4join12join_context6call_bINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB2s_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4B_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB6d_12endian_slice11EndianSliceNtNtB6f_9endianity13RunTimeEndianEjEEINtNtB4z_3map11MapConsumerNtNtB4z_6extend15ListVecConsumerNCINvB3H_13validate_infoQINtNtNtNtB2s_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6V_E0EEs_0E0EEEB3H_.exit3, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @_RNvXsa_NtCs3uS0LcqId4h_5rayon3vecINtB5_13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBV_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCs6o3pVbAMket_10rayon_core4join12join_context6call_bINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB2s_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4B_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB6d_12endian_slice11EndianSliceNtNtB6f_9endianity13RunTimeEndianEjEEINtNtB4z_3map11MapConsumerNtNtB4z_6extend15ListVecConsumerNCINvB3H_13validate_infoQINtNtNtNtB2s_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6V_E0EEs_0E0EEEB3H_.exit3

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCs6o3pVbAMket_10rayon_core4join12join_context6call_bINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB2s_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4B_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB6d_12endian_slice11EndianSliceNtNtB6f_9endianity13RunTimeEndianEjEEINtNtB4z_3map11MapConsumerNtNtB4z_6extend15ListVecConsumerNCINvB3H_13validate_infoQINtNtNtNtB2s_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6V_E0EEs_0E0EEEB3H_.exit3: ; preds = %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCs6o3pVbAMket_10rayon_core4join12join_context6call_bINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB2s_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4B_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB6d_12endian_slice11EndianSliceNtNtB6f_9endianity13RunTimeEndianEjEEINtNtB4z_3map11MapConsumerNtNtB4z_6extend15ListVecConsumerNCINvB3H_13validate_infoQINtNtNtNtB2s_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6V_E0EEs_0E0EEEB3H_.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCs6o3pVbAMket_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB53_12endian_slice11EndianSliceNtNtB55_9endianity13RunTimeEndianEjEEINtNtB1W_3map11MapConsumerINtB1S_15CollectConsumerB2T_ENCINvB2V_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5L_E0EEs_0E0B1P_E10run_inlineB2V_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(128) %1, i1 noundef zeroext %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.3.sroa.4.0.copyload = load i64, ptr %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.3.sroa.3.0.copyload = load ptr, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, align 8, !nonnull !5, !noundef !5
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3.sroa.2.0.copyload = load ptr, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.3.sroa.0.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !211
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx, i64 24, i1 false)
  %i.b = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !211, !noundef !5
  %i.c = load i64, ptr %.sroa.3.sroa.0.0.copyload, align 8, !noalias !211, !noundef !5
  %i.d = sub i64 %i.b, %i.c
  %i.e = load i64, ptr %.sroa.3.sroa.2.0.copyload, align 8, !noalias !211, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.3.sroa.2.0.copyload, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noalias !211, !noundef !5
  invoke void @_RINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB1J_12endian_slice11EndianSliceNtNtB1L_9endianity13RunTimeEndianEjEEINtNtB6_3map11MapConsumerINtNtNtB6_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB4L_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB2r_E0EEB4L_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, i64 noundef %i.d, i1 noundef zeroext %2, i64 noundef %i.e, i64 noundef %i.g, ptr noalias nofree noundef nonnull align 8 %.sroa.3.sroa.3.0.copyload, i64 noundef %.sroa.3.sroa.4.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.f unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #26
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEB2P_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i) #24
          to label %common.resume unwind label %bb.n

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !211
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.experimental.noalias.scope.decl(metadata !212)
  call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %i.k = load i64, ptr %i.j, align 8, !range !6, !alias.scope !214, !noundef !5
  switch i64 %i.k, label %bb.g [
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEB2P_.exit
    i64 1, label %bb.m
  ]

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i.i = load ptr, ptr %i.l, align 8, !alias.scope !214 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val1.i.i = load ptr, ptr %i.m, align 8, !alias.scope !214, !nonnull !5, !align !7, !noundef !5 ; 5 uses
  %i.n = load ptr, ptr %.val1.i.i, align 8, !invariant.load !5, !noalias !214 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.n(ptr noundef nonnull %.val.i.i)
          to label %bb.i unwind label %bb.k, !noalias !214

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !8, !invariant.load !5, !noalias !214 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEB2P_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !9, !invariant.load !5, !noalias !214
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.p, i64 noundef range(i64 1, 536870913) %i.s) #23, !noalias !214
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEB2P_.exit

bb.k:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !8, !invariant.load !5, !noalias !214 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %common.resume, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !9, !invariant.load !5, !noalias !214
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.v, i64 noundef range(i64 1, 536870913) %i.y) #23, !noalias !214
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.k, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.k ], [ %i.t, %bb.l ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @_RNvXs2_NtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumerINtB5_13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEB2P_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEB2P_.exit: ; preds = %bb.f, %bb.i, %bb.j, %bb.m
  ret void

bb.n:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCs6o3pVbAMket_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB53_12endian_slice11EndianSliceNtNtB55_9endianity13RunTimeEndianEjEEINtNtB1W_3map11MapConsumerINtB1S_15CollectConsumerB2T_ENCINvB2V_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5L_E0EEs_0E0B1P_E11into_resultB2V_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(128) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  switch i64 %.sroa.0.0.copyload, label %default.unreachable1.i [
    i64 0, label %bb.b
    i64 1, label %bb.f
    i64 2, label %bb.c
  ], !prof !14

default.unreachable1.i:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload), "nonnull"(ptr %.sroa.4.0.copyload) ]
  invoke void @_RNvNtCs6o3pVbAMket_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %.sroa.2.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.4.0.copyload) #26
          to label %.noexc1 unwind label %bb.d

.noexc1:                                          ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = load ptr, ptr %1, align 8, !alias.scope !226, !noundef !5
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCs6o3pVbAMket_10rayon_core4join12join_context6call_bINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvNvNtB2s_8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB5z_12endian_slice11EndianSliceNtNtB5B_9endianity13RunTimeEndianEjEEINtNtB2s_3map11MapConsumerINtB2o_15CollectConsumerB3p_ENCINvB3r_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6h_E0EEs_0E0EEEB3r_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_RNvXsa_NtCs3uS0LcqId4h_5rayon3vecINtB5_13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBV_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCs6o3pVbAMket_10rayon_core4join12join_context6call_bINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvNvNtB2s_8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB5z_12endian_slice11EndianSliceNtNtB5B_9endianity13RunTimeEndianEjEEINtNtB2s_3map11MapConsumerINtB2o_15CollectConsumerB3p_ENCINvB3r_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6h_E0EEs_0E0EEEB3r_.exit unwind label %bb.h

bb.f:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr %.sroa.2.0.copyload, ptr %0, align 8, !alias.scope !227
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4.0.copyload, ptr %.sroa.4.8..sroa_idx, align 8, !alias.scope !227
  %.sroa.5.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0.copyload, ptr %.sroa.5.8..sroa_idx, align 8, !alias.scope !227
  %i.f = load ptr, ptr %1, align 8, !alias.scope !228, !noundef !5
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCs6o3pVbAMket_10rayon_core4join12join_context6call_bINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvNvNtB2s_8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB5z_12endian_slice11EndianSliceNtNtB5B_9endianity13RunTimeEndianEjEEINtNtB2s_3map11MapConsumerINtB2o_15CollectConsumerB3p_ENCINvB3r_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6h_E0EEs_0E0EEEB3r_.exit3, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvXsa_NtCs3uS0LcqId4h_5rayon3vecINtB5_13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBV_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCs6o3pVbAMket_10rayon_core4join12join_context6call_bINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvNvNtB2s_8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB5z_12endian_slice11EndianSliceNtNtB5B_9endianity13RunTimeEndianEjEEINtNtB2s_3map11MapConsumerINtB2o_15CollectConsumerB3p_ENCINvB3r_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6h_E0EEs_0E0EEEB3r_.exit3

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCs6o3pVbAMket_10rayon_core4join12join_context6call_bINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvNvNtB2s_8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB5z_12endian_slice11EndianSliceNtNtB5B_9endianity13RunTimeEndianEjEEINtNtB2s_3map11MapConsumerINtB2o_15CollectConsumerB3p_ENCINvB3r_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6h_E0EEs_0E0EEEB3r_.exit3: ; preds = %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCs6o3pVbAMket_10rayon_core4join12join_context6call_bINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvNvNtB2s_8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB5z_12endian_slice11EndianSliceNtNtB5B_9endianity13RunTimeEndianEjEEINtNtB2s_3map11MapConsumerINtB2o_15CollectConsumerB3p_ENCINvB3r_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6h_E0EEs_0E0EEEB3r_.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCs6o3pVbAMket_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_buNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB21_5slice12IterProducerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEINtNtB1Z_8for_each15ForEachConsumerNCINvB3B_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB71_9endianity13RunTimeEndianEEs_0EEs_0E0uE10run_inlineB3B_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(104) %0, i1 noundef zeroext %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.3.sroa.5.0.copyload = load ptr, ptr %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx, align 8, !nonnull !5, !noundef !5
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.3.sroa.4.0.copyload = load i64, ptr %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.3.sroa.3.0.copyload = load ptr, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, align 8, !nonnull !5, !noundef !5
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.sroa.2.0.copyload = load ptr, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.3.sroa.0.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  %i.a = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !237, !noundef !5
  %i.b = load i64, ptr %.sroa.3.sroa.0.0.copyload, align 8, !noalias !237, !noundef !5
  %i.c = sub i64 %i.a, %i.b
  %i.d = load i64, ptr %.sroa.3.sroa.2.0.copyload, align 8, !noalias !237, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.3.sroa.2.0.copyload, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noalias !237, !noundef !5
  invoke void @_RINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEINtNtB6_8for_each15ForEachConsumerNCINvB1H_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB56_9endianity13RunTimeEndianEEs_0EEB1H_(i64 noundef %i.c, i1 noundef zeroext %1, i64 noundef %i.d, i64 noundef %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.3.sroa.3.0.copyload, i64 noundef %.sroa.3.sroa.4.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.3.sroa.5.0.copyload)
          to label %_RNCINvNvNtCs6o3pVbAMket_10rayon_core4join12join_context6call_buNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1a_5slice12IterProducerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEINtNtB18_8for_each15ForEachConsumerNCINvB2K_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB6a_9endianity13RunTimeEndianEEs_0EEs_0E0B2K_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #26
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultuEEECslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #24
          to label %common.resume unwind label %bb.l

bb.e:                                             ; preds = %bb.c
  unreachable

_RNCINvNvNtCs6o3pVbAMket_10rayon_core4join12join_context6call_buNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1a_5slice12IterProducerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEINtNtB18_8for_each15ForEachConsumerNCINvB2K_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB6a_9endianity13RunTimeEndianEEs_0EEs_0E0B2K_.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  %i.j = load i64, ptr %i.i, align 8, !range !6, !alias.scope !240, !noundef !5
  %switch.i.i = icmp samesign ult i64 %i.j, 2
  br i1 %switch.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultuEEECslKoDbeUmNq5_14dwarf_validate.exit, label %bb.f

bb.f:                                             ; preds = %_RNCINvNvNtCs6o3pVbAMket_10rayon_core4join12join_context6call_buNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1a_5slice12IterProducerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEINtNtB18_8for_each15ForEachConsumerNCINvB2K_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB6a_9endianity13RunTimeEndianEEs_0EEs_0E0B2K_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val.i.i = load ptr, ptr %i.k, align 8, !alias.scope !240 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val1.i.i = load ptr, ptr %i.l, align 8, !alias.scope !240, !nonnull !5, !align !7, !noundef !5 ; 5 uses
  %i.m = load ptr, ptr %.val1.i.i, align 8, !invariant.load !5, !noalias !240 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.m(ptr noundef nonnull %.val.i.i)
          to label %bb.h unwind label %bb.j, !noalias !240

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !8, !invariant.load !5, !noalias !240 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultuEEECslKoDbeUmNq5_14dwarf_validate.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !9, !invariant.load !5, !noalias !240
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #23, !noalias !240
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultuEEECslKoDbeUmNq5_14dwarf_validate.exit

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !8, !invariant.load !5, !noalias !240 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %common.resume, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !9, !invariant.load !5, !noalias !240
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #23, !noalias !240
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.j, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.j ], [ %i.s, %bb.k ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultuEEECslKoDbeUmNq5_14dwarf_validate.exit: ; preds = %_RNCINvNvNtCs6o3pVbAMket_10rayon_core4join12join_context6call_buNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1a_5slice12IterProducerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEINtNtB18_8for_each15ForEachConsumerNCINvB2K_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB6a_9endianity13RunTimeEndianEEs_0EEs_0E0B2K_.exit, %bb.h, %bb.i
  ret void

bb.l:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCs6o3pVbAMket_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_buNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB21_5slice12IterProducerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEINtNtB1Z_8for_each15ForEachConsumerNCINvB3B_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB71_9endianity13RunTimeEndianEEs_0EEs_0E0uE11into_resultB3B_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(104) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8
  switch i64 %.sroa.0.0.copyload, label %default.unreachable1.i [
    i64 0, label %bb.b
    i64 1, label %_RNvMs7_NtCs6o3pVbAMket_10rayon_core3jobINtB5_9JobResultuE17into_return_valueCslKoDbeUmNq5_14dwarf_validate.exit
    i64 2, label %bb.c
  ], !prof !14

default.unreachable1.i:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27, !noalias !243
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  tail call void @_RNvNtCs6o3pVbAMket_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %.sroa.2.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.3.0.copyload) #26, !noalias !243
  unreachable

_RNvMs7_NtCs6o3pVbAMket_10rayon_core3jobINtB5_9JobResultuE17into_return_valueCslKoDbeUmNq5_14dwarf_validate.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(inaccessiblemem: write) uwtable
define hidden noundef range(i64 0, -9223372036854775808) i64 @_RNvXNtCs906JEEYSgkH_6memchr3extPhNtB2_7Pointer8distanceCslKoDbeUmNq5_14dwarf_validate(ptr noundef %0, ptr noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, -1
  tail call void @llvm.assume(i1 %i.d)
  ret i64 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCs3uS0LcqId4h_5rayon4iter6extendINtB5_13ListVecFolderNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEINtNtB7_8plumbing6FolderB10_E8completeB12_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = icmp ult i64 %i.c, 144115188075855872
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = invoke noundef nonnull align 8 ptr @_RNvMs6_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEE13push_back_mutB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1)
          to label %bb.g unwind label %bb.f       ; 0 uses

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1a_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.i, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1a_.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs7_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.i

bb.g:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1a_.exit
  ret void

bb.i:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCs6o3pVbAMket_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB31_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4D_12endian_slice11EndianSliceNtNtB4F_9endianity13RunTimeEndianEjEEINtNtB2Z_3map11MapConsumerINtNtNtB2Z_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB7H_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5l_E0EE0NCB2S_s_0INtB6Z_13CollectResultB7F_EBaJ_E0TBaJ_BaJ_EE00Bbg_ENtB5_3Job7executeB7H_(ptr noundef %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [120 x i8], align 8               ; 7 uses
  %i.c = alloca [120 x i8], align 8               ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.5 = alloca [32 x i8], align 8            ; 4 uses
  %.sroa.6 = alloca [72 x i8], align 8            ; 4 uses
  %.sroa.14 = alloca [32 x i8], align 8           ; 5 uses
  %.sroa.9 = alloca [32 x i8], align 8            ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  store ptr null, ptr %i.e, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.j, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.15.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !253
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.15.0..sroa_idx53, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %.sroa.0.0.copyload, ptr %i.c, align 8
  %.sroa.1046.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %.sroa.1046.0..sroa_idx47, align 8
  %.sroa.14.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx51, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %i.f = invoke noundef ptr @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellPNtNtCs6o3pVbAMket_10rayon_core8registry12WorkerThreadEE4withNvMs8_BW_BT_3getB1r_ECslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @0)
          to label %bb.c unwind label %bb.f, !noalias !254 ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %_RNvXsl_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs6o3pVbAMket_10rayon_core3jobINtB1i_9JobResultTINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEB26_EE4callNCNCINvMs4_NtB1k_8registryNtB4g_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtB2d_8plumbing24bridge_producer_consumer6helperINtNtB2f_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB6U_12endian_slice11EndianSliceNtNtB6W_9endianity13RunTimeEndianEjEEINtNtB2d_3map11MapConsumerINtB29_15CollectConsumerB3a_ENCINvB3c_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB7C_E0EE0NCB5w_s_0B26_B26_E0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB3c_.exit.i, !prof !15

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #26
          to label %bb.e unwind label %bb.f, !noalias !254

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.b
  %lpad.thr_comm.i.i.i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtCs6o3pVbAMket_10rayon_core4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1C_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB3e_12endian_slice11EndianSliceNtNtB3g_9endianity13RunTimeEndianEjEEINtNtB1A_3map11MapConsumerINtNtNtB1A_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB6i_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB3W_E0EE0NCB1t_s_0INtB5A_13CollectResultB6g_EB9k_E0EB6i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.c) #24
          to label %.body unwind label %bb.g, !noalias !255

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !255
  unreachable

_RNvXsl_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs6o3pVbAMket_10rayon_core3jobINtB1i_9JobResultTINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEB26_EE4callNCNCINvMs4_NtB1k_8registryNtB4g_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtB2d_8plumbing24bridge_producer_consumer6helperINtNtB2f_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB6U_12endian_slice11EndianSliceNtNtB6W_9endianity13RunTimeEndianEjEEINtNtB2d_3map11MapConsumerINtB29_15CollectConsumerB3a_ENCINvB3c_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB7C_E0EE0NCB5w_s_0B26_B26_E0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB3c_.exit.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !254
  store ptr %.sroa.0.0.copyload, ptr %i.b, align 8, !noalias !256
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !256
  %.sroa.5.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx55, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, i64 32, i1 false), !noalias !256
  %.sroa.6.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.0..sroa_idx56, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6, i64 72, i1 false), !noalias !256
  invoke fastcc void @_RNCINvNtCs6o3pVbAMket_10rayon_core4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB2C_12endian_slice11EndianSliceNtNtB2E_9endianity13RunTimeEndianEjEEINtNtBY_3map11MapConsumerINtNtNtBY_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB5E_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB3k_E0EE0NCBR_s_0INtB4X_13CollectResultB5C_EB8F_E0B5E_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.d, ptr noalias nofree noundef align 8 captures(address) dereferenceable(120) %i.b, ptr noundef nonnull align 128 %i.f)
          to label %bb.n unwind label %bb.h

bb.h:                                             ; preds = %_RNvXsl_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs6o3pVbAMket_10rayon_core3jobINtB1i_9JobResultTINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEB26_EE4callNCNCINvMs4_NtB1k_8registryNtB4g_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtB2d_8plumbing24bridge_producer_consumer6helperINtNtB2f_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB6U_12endian_slice11EndianSliceNtNtB6W_9endianity13RunTimeEndianEjEEINtNtB2d_3map11MapConsumerINtB29_15CollectConsumerB3a_ENCINvB3c_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB7C_E0EE0NCB5w_s_0B26_B26_E0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB3c_.exit.i
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.f, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.i, %bb.h ], [ %lpad.thr_comm.i.i.i.i, %bb.f ]
  %i.j = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.k = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.j)
          to label %bb.o unwind label %bb.i       ; 2 uses

bb.i:                                             ; preds = %.body
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #22
  unreachable

bb.j:                                             ; preds = %bb.a
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #26
          to label %bb.m unwind label %bb.l

bb.k:                                             ; preds = %bb.q, %bb.l
  %.pn = phi { ptr, i32 } [ %i.m, %bb.l ], [ %i.q, %bb.q ]
  invoke void @_RNvXNtCs6o3pVbAMket_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6o3pVbAMket_10rayon_core6unwind12AbortIfPanicECslKoDbeUmNq5_14dwarf_validate.exit unwind label %bb.t

bb.l:                                             ; preds = %bb.r, %bb.j
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %bb.j
  unreachable

bb.n:                                             ; preds = %_RNvXsl_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs6o3pVbAMket_10rayon_core3jobINtB1i_9JobResultTINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEB26_EE4callNCNCINvMs4_NtB1k_8registryNtB4g_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtB2d_8plumbing24bridge_producer_consumer6helperINtNtB2f_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB6U_12endian_slice11EndianSliceNtNtB6W_9endianity13RunTimeEndianEjEEINtNtB2d_3map11MapConsumerINtB29_15CollectConsumerB3a_ENCINvB3c_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB7C_E0EE0NCB5w_s_0B26_B26_E0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB3c_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !253
  %.sroa.0.0.copyload45 = load ptr, ptr %i.d, align 8
  %.sroa.1046.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.1046.0.copyload50 = load ptr, ptr %.sroa.1046.0..sroa_idx49, align 8
  %.sroa.14.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx52, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, i64 32, i1 false)
  br label %bb.p

bb.o:                                             ; preds = %.body
  %i.n = extractvalue { ptr, ptr } %i.k, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n), "nonnull"(ptr %i.o) ]
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.0.063 = phi ptr [ %i.n, %bb.o ], [ %.sroa.0.0.copyload45, %bb.n ] ; 2 uses
  %.sroa.1046.061 = phi ptr [ %i.o, %bb.o ], [ %.sroa.1046.0.copyload50, %bb.n ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 2, %bb.o ], [ 1, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultTINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEB1l_EEEB2r_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.p)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.q = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %i.p, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.sroa.0.063, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %.sroa.1046.061, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  br label %bb.k

bb.r:                                             ; preds = %bb.p
  store i64 %.sroa.04.0, ptr %i.p, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.sroa.0.063, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %.sroa.1046.061, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %.val = load ptr, ptr %0, align 8, !noundef !5
  invoke fastcc void @_RNvXsd_NtCs6o3pVbAMket_10rayon_core5latchINtB5_8LatchRefNtB5_9LockLatchENtB5_5Latch3setCslKoDbeUmNq5_14dwarf_validate(ptr %.val)
          to label %bb.s unwind label %bb.l

bb.s:                                             ; preds = %bb.r
  ret void

bb.t:                                             ; preds = %bb.k
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6o3pVbAMket_10rayon_core6unwind12AbortIfPanicECslKoDbeUmNq5_14dwarf_validate.exit: ; preds = %bb.k
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCs6o3pVbAMket_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB31_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4D_12endian_slice11EndianSliceNtNtB4F_9endianity13RunTimeEndianEjEEINtNtB2Z_3map11MapConsumerNtNtB2Z_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5l_E0EE0NCB2S_s_0INtNtNtB8q_11collections11linked_list10LinkedListINtNtB8q_3vec3VecNtB7x_11UnitSummaryEEBac_E0TBac_Bac_EE00BbH_ENtB5_3Job7executeB7x_(ptr noundef %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [88 x i8], align 8                ; 7 uses
  %i.c = alloca [88 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.5 = alloca [32 x i8], align 8            ; 4 uses
  %.sroa.6 = alloca [40 x i8], align 8            ; 4 uses
  %.sroa.14 = alloca [32 x i8], align 8           ; 5 uses
  %.sroa.9 = alloca [32 x i8], align 8            ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  store ptr null, ptr %i.e, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.j, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.15.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !266
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.15.0..sroa_idx53, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %.sroa.0.0.copyload, ptr %i.c, align 8
  %.sroa.1046.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %.sroa.1046.0..sroa_idx47, align 8
  %.sroa.14.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx51, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %i.f = invoke noundef ptr @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellPNtNtCs6o3pVbAMket_10rayon_core8registry12WorkerThreadEE4withNvMs8_BW_BT_3getB1r_ECslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @0)
          to label %bb.c unwind label %bb.f, !noalias !267 ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %_RNvXsl_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs6o3pVbAMket_10rayon_core3jobINtB1i_9JobResultTINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB2d_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB26_EE4callNCNCINvMs4_NtB1k_8registryNtB4x_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5W_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB7y_12endian_slice11EndianSliceNtNtB7A_9endianity13RunTimeEndianEjEEINtNtB5U_3map11MapConsumerNtNtB5U_6extend15ListVecConsumerNCINvB3s_13validate_infoQINtNtNtNtB2d_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB8g_E0EE0NCB5N_s_0B26_B26_E0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB3s_.exit.i, !prof !15

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #26
          to label %bb.e unwind label %bb.f, !noalias !267

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.b
  %lpad.thr_comm.i.i.i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtCs6o3pVbAMket_10rayon_core4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1C_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB3e_12endian_slice11EndianSliceNtNtB3g_9endianity13RunTimeEndianEjEEINtNtB1A_3map11MapConsumerNtNtB1A_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB3W_E0EE0NCB1t_s_0INtNtNtB71_11collections11linked_list10LinkedListINtNtB71_3vec3VecNtB68_11UnitSummaryEEB8N_E0EB68_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.c) #24
          to label %.body unwind label %bb.g, !noalias !268

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !268
  unreachable

_RNvXsl_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs6o3pVbAMket_10rayon_core3jobINtB1i_9JobResultTINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB2d_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB26_EE4callNCNCINvMs4_NtB1k_8registryNtB4x_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5W_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB7y_12endian_slice11EndianSliceNtNtB7A_9endianity13RunTimeEndianEjEEINtNtB5U_3map11MapConsumerNtNtB5U_6extend15ListVecConsumerNCINvB3s_13validate_infoQINtNtNtNtB2d_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB8g_E0EE0NCB5N_s_0B26_B26_E0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB3s_.exit.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !267
  store ptr %.sroa.0.0.copyload, ptr %i.b, align 8, !noalias !269
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !269
  %.sroa.5.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx55, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, i64 32, i1 false), !noalias !269
  %.sroa.6.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx56, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, i64 40, i1 false), !noalias !269
  invoke fastcc void @_RNCINvNtCs6o3pVbAMket_10rayon_core4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB2C_12endian_slice11EndianSliceNtNtB2E_9endianity13RunTimeEndianEjEEINtNtBY_3map11MapConsumerNtNtBY_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB3k_E0EE0NCBR_s_0INtNtNtB6n_11collections11linked_list10LinkedListINtNtB6n_3vec3VecNtB5u_11UnitSummaryEEB88_E0B5u_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.d, ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %i.b, ptr noundef nonnull align 128 %i.f)
          to label %bb.n unwind label %bb.h

bb.h:                                             ; preds = %_RNvXsl_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs6o3pVbAMket_10rayon_core3jobINtB1i_9JobResultTINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB2d_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB26_EE4callNCNCINvMs4_NtB1k_8registryNtB4x_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5W_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB7y_12endian_slice11EndianSliceNtNtB7A_9endianity13RunTimeEndianEjEEINtNtB5U_3map11MapConsumerNtNtB5U_6extend15ListVecConsumerNCINvB3s_13validate_infoQINtNtNtNtB2d_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB8g_E0EE0NCB5N_s_0B26_B26_E0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB3s_.exit.i
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.f, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.i, %bb.h ], [ %lpad.thr_comm.i.i.i.i, %bb.f ]
  %i.j = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.k = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.j)
          to label %bb.o unwind label %bb.i       ; 2 uses

bb.i:                                             ; preds = %.body
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #22
  unreachable

bb.j:                                             ; preds = %bb.a
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #26
          to label %bb.m unwind label %bb.l

bb.k:                                             ; preds = %bb.q, %bb.l
  %.pn = phi { ptr, i32 } [ %i.m, %bb.l ], [ %i.q, %bb.q ]
  invoke void @_RNvXNtCs6o3pVbAMket_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6o3pVbAMket_10rayon_core6unwind12AbortIfPanicECslKoDbeUmNq5_14dwarf_validate.exit unwind label %bb.t

bb.l:                                             ; preds = %bb.r, %bb.j
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %bb.j
  unreachable

bb.n:                                             ; preds = %_RNvXsl_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs6o3pVbAMket_10rayon_core3jobINtB1i_9JobResultTINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB2d_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB26_EE4callNCNCINvMs4_NtB1k_8registryNtB4x_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5W_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB7y_12endian_slice11EndianSliceNtNtB7A_9endianity13RunTimeEndianEjEEINtNtB5U_3map11MapConsumerNtNtB5U_6extend15ListVecConsumerNCINvB3s_13validate_infoQINtNtNtNtB2d_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB8g_E0EE0NCB5N_s_0B26_B26_E0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB3s_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !266
  %.sroa.0.0.copyload45 = load ptr, ptr %i.d, align 8
  %.sroa.1046.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.1046.0.copyload50 = load ptr, ptr %.sroa.1046.0..sroa_idx49, align 8
  %.sroa.14.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx52, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, i64 32, i1 false)
  br label %bb.p

bb.o:                                             ; preds = %.body
  %i.n = extractvalue { ptr, ptr } %i.k, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n), "nonnull"(ptr %i.o) ]
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.0.063 = phi ptr [ %i.n, %bb.o ], [ %.sroa.0.0.copyload45, %bb.n ] ; 2 uses
  %.sroa.1046.061 = phi ptr [ %i.o, %bb.o ], [ %.sroa.1046.0.copyload50, %bb.n ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 2, %bb.o ], [ 1, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultTINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1l_EEEB2H_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.p)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.q = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %i.p, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.0.063, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.sroa.1046.061, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  br label %bb.k

bb.r:                                             ; preds = %bb.p
  store i64 %.sroa.04.0, ptr %i.p, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.0.063, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.sroa.1046.061, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %.val = load ptr, ptr %0, align 8, !noundef !5
  invoke fastcc void @_RNvXsd_NtCs6o3pVbAMket_10rayon_core5latchINtB5_8LatchRefNtB5_9LockLatchENtB5_5Latch3setCslKoDbeUmNq5_14dwarf_validate(ptr %.val)
          to label %bb.s unwind label %bb.l

bb.s:                                             ; preds = %bb.r
  ret void

bb.t:                                             ; preds = %bb.k
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6o3pVbAMket_10rayon_core6unwind12AbortIfPanicECslKoDbeUmNq5_14dwarf_validate.exit: ; preds = %bb.k
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCs6o3pVbAMket_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB31_5slice12IterProducerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEINtNtB2Z_8for_each15ForEachConsumerNCINvB4B_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB81_9endianity13RunTimeEndianEEs_0EE0NCB2S_s_0uuE0TuuEE00B9J_ENtB5_3Job7executeB4B_(ptr nofree noundef captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [88 x i8], align 16               ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load <2 x ptr>, ptr %i.c, align 8
  %.sroa.0.0.copyload = load ptr, ptr %i.c, align 8
  store ptr null, ptr %i.c, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.f, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 72, i1 false)
  store <2 x ptr> %i.d, ptr %i.b, align 16
  %i.e = invoke noundef ptr @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellPNtNtCs6o3pVbAMket_10rayon_core8registry12WorkerThreadEE4withNvMs8_BW_BT_3getB1r_ECslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @0)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %bb.b
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %_RNvXsl_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs6o3pVbAMket_10rayon_core3jobINtB1i_9JobResultTuuEE4callNCNCINvMs4_NtB1k_8registryNtB2q_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3P_5slice12IterProducerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEINtNtB3N_8for_each15ForEachConsumerNCINvB5p_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB8P_9endianity13RunTimeEndianEEs_0EE0NCB3G_s_0uuE0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5p_.exit.i, !prof !15

bb.c:                                             ; preds = %.noexc
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #27
          to label %.noexc27 unwind label %bb.d

.noexc27:                                         ; preds = %bb.c
  unreachable

_RNvXsl_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs6o3pVbAMket_10rayon_core3jobINtB1i_9JobResultTuuEE4callNCNCINvMs4_NtB1k_8registryNtB2q_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3P_5slice12IterProducerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEINtNtB3N_8for_each15ForEachConsumerNCINvB5p_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB8P_9endianity13RunTimeEndianEEs_0EE0NCB3G_s_0uuE0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5p_.exit.i: ; preds = %.noexc
  invoke fastcc void @_RNCINvNtCs6o3pVbAMket_10rayon_core4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEINtNtBY_8for_each15ForEachConsumerNCINvB2A_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB5Z_9endianity13RunTimeEndianEEs_0EE0NCBR_s_0uuE0B2A_(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(88) %i.b, ptr noundef nonnull align 128 %i.e) #28
          to label %bb.j unwind label %bb.d

bb.d:                                             ; preds = %_RNvXsl_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs6o3pVbAMket_10rayon_core3jobINtB1i_9JobResultTuuEE4callNCNCINvMs4_NtB1k_8registryNtB2q_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3P_5slice12IterProducerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEINtNtB3N_8for_each15ForEachConsumerNCINvB5p_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB8P_9endianity13RunTimeEndianEEs_0EE0NCB3G_s_0uuE0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5p_.exit.i, %bb.c, %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.h)
          to label %bb.k unwind label %bb.e       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #22
  unreachable

bb.f:                                             ; preds = %bb.a
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #26
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %.body, %bb.h
  %.pn = phi { ptr, i32 } [ %i.k, %bb.h ], [ %i.x, %.body ]
  invoke void @_RNvXNtCs6o3pVbAMket_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6o3pVbAMket_10rayon_core6unwind12AbortIfPanicECslKoDbeUmNq5_14dwarf_validate.exit unwind label %bb.t

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultTuuEEECslKoDbeUmNq5_14dwarf_validate.exit, %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %bb.f
  unreachable

bb.j:                                             ; preds = %_RNvXsl_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs6o3pVbAMket_10rayon_core3jobINtB1i_9JobResultTuuEE4callNCNCINvMs4_NtB1k_8registryNtB2q_8Registry14in_worker_coldNCINvNtB1k_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3P_5slice12IterProducerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEINtNtB3N_8for_each15ForEachConsumerNCINvB5p_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB8P_9endianity13RunTimeEndianEEs_0EE0NCB3G_s_0uuE0B25_E00E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5p_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.l = extractvalue { ptr, ptr } %i.i, 0        ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.i, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l), "nonnull"(ptr %i.m) ]
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.7.0 = phi ptr [ %i.m, %bb.k ], [ undef, %bb.j ] ; 2 uses
  %.sroa.6.0 = phi ptr [ %i.l, %bb.k ], [ undef, %bb.j ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 2, %bb.k ], [ 1, %bb.j ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  %i.o = load i64, ptr %i.n, align 8, !range !6, !alias.scope !272, !noundef !5
  %switch.i = icmp samesign ult i64 %i.o, 2
  br i1 %switch.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultTuuEEECslKoDbeUmNq5_14dwarf_validate.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %.val.i = load ptr, ptr %i.p, align 8, !alias.scope !272 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %.val1.i = load ptr, ptr %i.q, align 8, !alias.scope !272, !nonnull !5, !align !7, !noundef !5 ; 5 uses
  %i.r = load ptr, ptr %.val1.i, align 8, !invariant.load !5, !noalias !272 ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.r(ptr noundef nonnull %.val.i)
          to label %bb.o unwind label %bb.q, !noalias !272

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !8, !invariant.load !5, !noalias !272 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultTuuEEECslKoDbeUmNq5_14dwarf_validate.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.w = load i64, ptr %i.v, align 8, !range !9, !invariant.load !5, !noalias !272
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.t, i64 noundef range(i64 1, 536870913) %i.w) #23, !noalias !272
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultTuuEEECslKoDbeUmNq5_14dwarf_validate.exit

bb.q:                                             ; preds = %bb.n
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !8, !invariant.load !5, !noalias !272 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.body, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !9, !invariant.load !5, !noalias !272
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.z, i64 noundef range(i64 1, 536870913) %i.ac) #23, !noalias !272
  br label %.body

.body:                                            ; preds = %bb.q, %bb.r
  store i64 %.sroa.04.0, ptr %i.n, align 8
  store ptr %.sroa.6.0, ptr %i.p, align 8
  store ptr %.sroa.7.0, ptr %i.q, align 8
  br label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultTuuEEECslKoDbeUmNq5_14dwarf_validate.exit: ; preds = %bb.p, %bb.o, %bb.l
  store i64 %.sroa.04.0, ptr %i.n, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.7.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx8, align 8
  %.val = load ptr, ptr %0, align 8, !noundef !5
  invoke fastcc void @_RNvXsd_NtCs6o3pVbAMket_10rayon_core5latchINtB5_8LatchRefNtB5_9LockLatchENtB5_5Latch3setCslKoDbeUmNq5_14dwarf_validate(ptr %.val)
          to label %bb.s unwind label %bb.h

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultTuuEEECslKoDbeUmNq5_14dwarf_validate.exit
  ret void

bb.t:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6o3pVbAMket_10rayon_core6unwind12AbortIfPanicECslKoDbeUmNq5_14dwarf_validate.exit: ; preds = %bb.g
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCs6o3pVbAMket_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4m_12endian_slice11EndianSliceNtNtB4o_9endianity13RunTimeEndianEjEEINtNtB2I_3map11MapConsumerINtNtNtB2I_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB7q_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB54_E0EE0NCB2B_s_0INtB6I_13CollectResultB7o_EBas_E0TBas_Bas_EE0BaZ_ENtB5_3Job7executeB7q_(ptr noundef %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [120 x i8], align 8               ; 7 uses
  %i.c = alloca [120 x i8], align 8               ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.5 = alloca [32 x i8], align 8            ; 4 uses
  %.sroa.6 = alloca [72 x i8], align 8            ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.14 = alloca [32 x i8], align 8           ; 5 uses
  %.sroa.9 = alloca [32 x i8], align 8            ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.j, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.15.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !290
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.15.0..sroa_idx56, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %.sroa.0.0.copyload, ptr %i.c, align 8
  %.sroa.1049.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %.sroa.1049.0..sroa_idx50, align 8
  %.sroa.14.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx54, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %i.f = invoke noundef ptr @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellPNtNtCs6o3pVbAMket_10rayon_core8registry12WorkerThreadEE4withNvMs8_BW_BT_3getB1r_ECslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @0)
          to label %bb.c unwind label %bb.f, !noalias !291 ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %_RNvXsl_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs6o3pVbAMket_10rayon_core3jobINtB1i_9JobResultTINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEB26_EE4callNCINvMs4_NtB1k_8registryNtB4e_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtB2d_8plumbing24bridge_producer_consumer6helperINtNtB2f_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB6T_12endian_slice11EndianSliceNtNtB6V_9endianity13RunTimeEndianEjEEINtNtB2d_3map11MapConsumerINtB29_15CollectConsumerB3a_ENCINvB3c_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB7B_E0EE0NCB5v_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB3c_.exit.i, !prof !15

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #26
          to label %bb.e unwind label %bb.f, !noalias !291

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.b
  %lpad.thr_comm.i.i.i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtCs6o3pVbAMket_10rayon_core4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1C_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB3e_12endian_slice11EndianSliceNtNtB3g_9endianity13RunTimeEndianEjEEINtNtB1A_3map11MapConsumerINtNtNtB1A_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB6i_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB3W_E0EE0NCB1t_s_0INtB5A_13CollectResultB6g_EB9k_E0EB6i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.c) #24
          to label %.body43 unwind label %bb.g, !noalias !292

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !292
  unreachable

_RNvXsl_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs6o3pVbAMket_10rayon_core3jobINtB1i_9JobResultTINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEB26_EE4callNCINvMs4_NtB1k_8registryNtB4e_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtB2d_8plumbing24bridge_producer_consumer6helperINtNtB2f_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB6T_12endian_slice11EndianSliceNtNtB6V_9endianity13RunTimeEndianEjEEINtNtB2d_3map11MapConsumerINtB29_15CollectConsumerB3a_ENCINvB3c_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB7B_E0EE0NCB5v_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB3c_.exit.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !291
  store ptr %.sroa.0.0.copyload, ptr %i.b, align 8, !noalias !293
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !293
  %.sroa.5.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx58, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, i64 32, i1 false), !noalias !293
  %.sroa.6.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.0..sroa_idx59, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6, i64 72, i1 false), !noalias !293
  invoke fastcc void @_RNCINvNtCs6o3pVbAMket_10rayon_core4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB2C_12endian_slice11EndianSliceNtNtB2E_9endianity13RunTimeEndianEjEEINtNtBY_3map11MapConsumerINtNtNtBY_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB5E_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB3k_E0EE0NCBR_s_0INtB4X_13CollectResultB5C_EB8F_E0B5E_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.d, ptr noalias nofree noundef align 8 captures(address) dereferenceable(120) %i.b, ptr noundef nonnull align 128 %i.f)
          to label %bb.m unwind label %bb.h

bb.h:                                             ; preds = %_RNvXsl_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs6o3pVbAMket_10rayon_core3jobINtB1i_9JobResultTINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEB26_EE4callNCINvMs4_NtB1k_8registryNtB4e_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtB2d_8plumbing24bridge_producer_consumer6helperINtNtB2f_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB6T_12endian_slice11EndianSliceNtNtB6V_9endianity13RunTimeEndianEjEEINtNtB2d_3map11MapConsumerINtB29_15CollectConsumerB3a_ENCINvB3c_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB7B_E0EE0NCB5v_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB3c_.exit.i
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %.body43

.body43:                                          ; preds = %bb.f, %bb.h
  %eh.lpad-body44 = phi { ptr, i32 } [ %i.i, %bb.h ], [ %lpad.thr_comm.i.i.i.i, %bb.f ]
  %i.j = extractvalue { ptr, i32 } %eh.lpad-body44, 0
  %i.k = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.j)
          to label %bb.n unwind label %bb.i       ; 2 uses

bb.i:                                             ; preds = %.body43
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #22
  unreachable

bb.j:                                             ; preds = %bb.a
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #26
          to label %bb.l unwind label %bb.k

.body:                                            ; preds = %bb.y, %bb.ab, %bb.ac, %bb.k, %bb.p
  %.pn = phi { ptr, i32 } [ %i.q, %bb.p ], [ %i.m, %bb.k ], [ %i.ah, %bb.ac ], [ %i.ah, %bb.ab ], [ %i.ah, %bb.y ]
  invoke void @_RNvXNtCs6o3pVbAMket_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6o3pVbAMket_10rayon_core6unwind12AbortIfPanicECslKoDbeUmNq5_14dwarf_validate.exit unwind label %bb.af

bb.k:                                             ; preds = %bb.aa, %bb.j
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %_RNvXsl_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs6o3pVbAMket_10rayon_core3jobINtB1i_9JobResultTINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEB26_EE4callNCINvMs4_NtB1k_8registryNtB4e_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtB2d_8plumbing24bridge_producer_consumer6helperINtNtB2f_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB6T_12endian_slice11EndianSliceNtNtB6V_9endianity13RunTimeEndianEjEEINtNtB2d_3map11MapConsumerINtB29_15CollectConsumerB3a_ENCINvB3c_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB7B_E0EE0NCB5v_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB3c_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !290
  %.sroa.0.0.copyload48 = load ptr, ptr %i.d, align 8
  %.sroa.1049.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.1049.0.copyload53 = load ptr, ptr %.sroa.1049.0..sroa_idx52, align 8
  %.sroa.14.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx55, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, i64 32, i1 false)
  br label %bb.o

bb.n:                                             ; preds = %.body43
  %i.n = extractvalue { ptr, ptr } %i.k, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n), "nonnull"(ptr %i.o) ]
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.0.066 = phi ptr [ %i.n, %bb.n ], [ %.sroa.0.0.copyload48, %bb.m ] ; 2 uses
  %.sroa.1049.064 = phi ptr [ %i.o, %bb.n ], [ %.sroa.1049.0.copyload53, %bb.m ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 2, %bb.n ], [ 1, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultTINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEB1l_EEEB2r_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.p)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.q = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %i.p, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %.sroa.0.066, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.sroa.1049.064, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  br label %.body

bb.q:                                             ; preds = %bb.o
  store i64 %.sroa.04.0, ptr %i.p, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %.sroa.0.066, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.sroa.1049.064, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.t = load i8, ptr %i.s, align 8, !range !11, !noundef !5
  %i.u = trunc nuw i8 %i.t to i1                  ; 3 uses
  br i1 %i.u, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.v = load ptr, ptr %i.r, align 8, !nonnull !5, !align !7, !noundef !5
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !5, !noundef !5
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.x = load ptr, ptr %i.r, align 8, !nonnull !5, !align !7, !noundef !5 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !5, !noundef !5
  %i.z = atomicrmw add ptr %i.y, i64 1 monotonic, align 8
  %i.aa = icmp slt i64 %i.z, 0
  br i1 %i.aa, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.u, %bb.r
  %.pn.i = phi ptr [ %i.ag, %bb.u ], [ %i.w, %bb.r ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !5
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ae = atomicrmw xchg ptr %i.ad, i64 3 acq_rel, align 8
  %i.af = icmp eq i64 %i.ae, 2
  br i1 %i.af, label %bb.x, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.ag = load ptr, ptr %i.x, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.ag, ptr %i.e, align 8
  br label %bb.t

bb.v:                                             ; preds = %bb.s
  call void @llvm.trap()
  unreachable

bb.w:                                             ; preds = %bb.x, %bb.t
  br i1 %i.u, label %bb.z, label %bb.ae

bb.x:                                             ; preds = %bb.t
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.ac)
          to label %bb.w unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.u, label %bb.ab, label %.body

bb.z:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !294)
  call void @llvm.experimental.noalias.scope.decl(metadata !295)
  %i.ai = load ptr, ptr %i.e, align 8, !alias.scope !296, !nonnull !5, !noundef !5
  %i.aj = atomicrmw add ptr %i.ai, i64 -1 release, align 8, !noalias !296
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs6o3pVbAMket_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #25
          to label %bb.ae unwind label %bb.k

bb.ab:                                            ; preds = %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !297)
  call void @llvm.experimental.noalias.scope.decl(metadata !298)
  %i.al = load ptr, ptr %i.e, align 8, !alias.scope !299, !nonnull !5, !noundef !5
  %i.am = atomicrmw add ptr %i.al, i64 -1 release, align 8, !noalias !299
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.ac, label %.body

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs6o3pVbAMket_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #25
          to label %.body unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.ae:                                            ; preds = %bb.z, %bb.w, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.af:                                            ; preds = %.body
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6o3pVbAMket_10rayon_core6unwind12AbortIfPanicECslKoDbeUmNq5_14dwarf_validate.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCs6o3pVbAMket_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4m_12endian_slice11EndianSliceNtNtB4o_9endianity13RunTimeEndianEjEEINtNtB2I_3map11MapConsumerNtNtB2I_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB54_E0EE0NCB2B_s_0INtNtNtB89_11collections11linked_list10LinkedListINtNtB89_3vec3VecNtB7g_11UnitSummaryEEB9V_E0TB9V_B9V_EE0Bbq_ENtB5_3Job7executeB7g_(ptr noundef %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [88 x i8], align 8                ; 7 uses
  %i.c = alloca [88 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.5 = alloca [32 x i8], align 8            ; 4 uses
  %.sroa.6 = alloca [40 x i8], align 8            ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.14 = alloca [32 x i8], align 8           ; 5 uses
  %.sroa.9 = alloca [32 x i8], align 8            ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.j, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.15.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !317
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.15.0..sroa_idx56, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %.sroa.0.0.copyload, ptr %i.c, align 8
  %.sroa.1049.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %.sroa.1049.0..sroa_idx50, align 8
  %.sroa.14.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx54, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %i.f = invoke noundef ptr @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellPNtNtCs6o3pVbAMket_10rayon_core8registry12WorkerThreadEE4withNvMs8_BW_BT_3getB1r_ECslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @0)
          to label %bb.c unwind label %bb.f, !noalias !318 ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %_RNvXsl_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs6o3pVbAMket_10rayon_core3jobINtB1i_9JobResultTINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB2d_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB26_EE4callNCINvMs4_NtB1k_8registryNtB4v_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5V_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB7x_12endian_slice11EndianSliceNtNtB7z_9endianity13RunTimeEndianEjEEINtNtB5T_3map11MapConsumerNtNtB5T_6extend15ListVecConsumerNCINvB3s_13validate_infoQINtNtNtNtB2d_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB8f_E0EE0NCB5M_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB3s_.exit.i, !prof !15

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #26
          to label %bb.e unwind label %bb.f, !noalias !318

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.b
  %lpad.thr_comm.i.i.i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtCs6o3pVbAMket_10rayon_core4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1C_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB3e_12endian_slice11EndianSliceNtNtB3g_9endianity13RunTimeEndianEjEEINtNtB1A_3map11MapConsumerNtNtB1A_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB3W_E0EE0NCB1t_s_0INtNtNtB71_11collections11linked_list10LinkedListINtNtB71_3vec3VecNtB68_11UnitSummaryEEB8N_E0EB68_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.c) #24
          to label %.body43 unwind label %bb.g, !noalias !319

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !319
  unreachable

_RNvXsl_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs6o3pVbAMket_10rayon_core3jobINtB1i_9JobResultTINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB2d_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB26_EE4callNCINvMs4_NtB1k_8registryNtB4v_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5V_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB7x_12endian_slice11EndianSliceNtNtB7z_9endianity13RunTimeEndianEjEEINtNtB5T_3map11MapConsumerNtNtB5T_6extend15ListVecConsumerNCINvB3s_13validate_infoQINtNtNtNtB2d_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB8f_E0EE0NCB5M_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB3s_.exit.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !318
  store ptr %.sroa.0.0.copyload, ptr %i.b, align 8, !noalias !320
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !320
  %.sroa.5.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx58, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, i64 32, i1 false), !noalias !320
  %.sroa.6.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx59, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, i64 40, i1 false), !noalias !320
  invoke fastcc void @_RNCINvNtCs6o3pVbAMket_10rayon_core4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB2C_12endian_slice11EndianSliceNtNtB2E_9endianity13RunTimeEndianEjEEINtNtBY_3map11MapConsumerNtNtBY_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB3k_E0EE0NCBR_s_0INtNtNtB6n_11collections11linked_list10LinkedListINtNtB6n_3vec3VecNtB5u_11UnitSummaryEEB88_E0B5u_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.d, ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %i.b, ptr noundef nonnull align 128 %i.f)
          to label %bb.m unwind label %bb.h

bb.h:                                             ; preds = %_RNvXsl_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs6o3pVbAMket_10rayon_core3jobINtB1i_9JobResultTINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB2d_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB26_EE4callNCINvMs4_NtB1k_8registryNtB4v_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5V_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB7x_12endian_slice11EndianSliceNtNtB7z_9endianity13RunTimeEndianEjEEINtNtB5T_3map11MapConsumerNtNtB5T_6extend15ListVecConsumerNCINvB3s_13validate_infoQINtNtNtNtB2d_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB8f_E0EE0NCB5M_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB3s_.exit.i
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %.body43

.body43:                                          ; preds = %bb.f, %bb.h
  %eh.lpad-body44 = phi { ptr, i32 } [ %i.i, %bb.h ], [ %lpad.thr_comm.i.i.i.i, %bb.f ]
  %i.j = extractvalue { ptr, i32 } %eh.lpad-body44, 0
  %i.k = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.j)
          to label %bb.n unwind label %bb.i       ; 2 uses

bb.i:                                             ; preds = %.body43
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #22
  unreachable

bb.j:                                             ; preds = %bb.a
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #26
          to label %bb.l unwind label %bb.k

.body:                                            ; preds = %bb.y, %bb.ab, %bb.ac, %bb.k, %bb.p
  %.pn = phi { ptr, i32 } [ %i.q, %bb.p ], [ %i.m, %bb.k ], [ %i.ah, %bb.ac ], [ %i.ah, %bb.ab ], [ %i.ah, %bb.y ]
  invoke void @_RNvXNtCs6o3pVbAMket_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6o3pVbAMket_10rayon_core6unwind12AbortIfPanicECslKoDbeUmNq5_14dwarf_validate.exit unwind label %bb.af

bb.k:                                             ; preds = %bb.aa, %bb.j
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %_RNvXsl_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs6o3pVbAMket_10rayon_core3jobINtB1i_9JobResultTINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB2d_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB26_EE4callNCINvMs4_NtB1k_8registryNtB4v_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB5V_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB7x_12endian_slice11EndianSliceNtNtB7z_9endianity13RunTimeEndianEjEEINtNtB5T_3map11MapConsumerNtNtB5T_6extend15ListVecConsumerNCINvB3s_13validate_infoQINtNtNtNtB2d_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB8f_E0EE0NCB5M_s_0B26_B26_E0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB3s_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !317
  %.sroa.0.0.copyload48 = load ptr, ptr %i.d, align 8
  %.sroa.1049.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.1049.0.copyload53 = load ptr, ptr %.sroa.1049.0..sroa_idx52, align 8
  %.sroa.14.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx55, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14, i64 32, i1 false)
  br label %bb.o

bb.n:                                             ; preds = %.body43
  %i.n = extractvalue { ptr, ptr } %i.k, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n), "nonnull"(ptr %i.o) ]
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.0.066 = phi ptr [ %i.n, %bb.n ], [ %.sroa.0.0.copyload48, %bb.m ] ; 2 uses
  %.sroa.1049.064 = phi ptr [ %i.o, %bb.n ], [ %.sroa.1049.0.copyload53, %bb.m ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 2, %bb.n ], [ 1, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultTINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1l_EEEB2H_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.p)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.q = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %i.p, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.sroa.0.066, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.1049.064, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  br label %.body

bb.q:                                             ; preds = %bb.o
  store i64 %.sroa.04.0, ptr %i.p, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.sroa.0.066, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.1049.064, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.t = load i8, ptr %i.s, align 8, !range !11, !noundef !5
  %i.u = trunc nuw i8 %i.t to i1                  ; 3 uses
  br i1 %i.u, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.v = load ptr, ptr %i.r, align 8, !nonnull !5, !align !7, !noundef !5
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !5, !noundef !5
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.x = load ptr, ptr %i.r, align 8, !nonnull !5, !align !7, !noundef !5 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !5, !noundef !5
  %i.z = atomicrmw add ptr %i.y, i64 1 monotonic, align 8
  %i.aa = icmp slt i64 %i.z, 0
  br i1 %i.aa, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.u, %bb.r
  %.pn.i = phi ptr [ %i.ag, %bb.u ], [ %i.w, %bb.r ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !5
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ae = atomicrmw xchg ptr %i.ad, i64 3 acq_rel, align 8
  %i.af = icmp eq i64 %i.ae, 2
  br i1 %i.af, label %bb.x, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.ag = load ptr, ptr %i.x, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.ag, ptr %i.e, align 8
  br label %bb.t

bb.v:                                             ; preds = %bb.s
  call void @llvm.trap()
  unreachable

bb.w:                                             ; preds = %bb.x, %bb.t
  br i1 %i.u, label %bb.z, label %bb.ae

bb.x:                                             ; preds = %bb.t
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.ac)
          to label %bb.w unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.u, label %bb.ab, label %.body

bb.z:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !321)
  call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %i.ai = load ptr, ptr %i.e, align 8, !alias.scope !323, !nonnull !5, !noundef !5
  %i.aj = atomicrmw add ptr %i.ai, i64 -1 release, align 8, !noalias !323
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs6o3pVbAMket_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #25
          to label %bb.ae unwind label %bb.k

bb.ab:                                            ; preds = %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !324)
  call void @llvm.experimental.noalias.scope.decl(metadata !325)
  %i.al = load ptr, ptr %i.e, align 8, !alias.scope !326, !nonnull !5, !noundef !5
  %i.am = atomicrmw add ptr %i.al, i64 -1 release, align 8, !noalias !326
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.ac, label %.body

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs6o3pVbAMket_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #25
          to label %.body unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.ae:                                            ; preds = %bb.z, %bb.w, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.af:                                            ; preds = %.body
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6o3pVbAMket_10rayon_core6unwind12AbortIfPanicECslKoDbeUmNq5_14dwarf_validate.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCs6o3pVbAMket_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvMs4_NtB7_8registryNtB1m_8Registry15in_worker_crossNCINvNtB7_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2K_5slice12IterProducerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEINtNtB2I_8for_each15ForEachConsumerNCINvB4k_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB7K_9endianity13RunTimeEndianEEs_0EE0NCB2B_s_0uuE0TuuEE0B9s_ENtB5_3Job7executeB4k_(ptr nofree noundef captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [88 x i8], align 16               ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  %i.d = load <2 x ptr>, ptr %0, align 8
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.f, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 72, i1 false)
  store <2 x ptr> %i.d, ptr %i.b, align 16
  %i.e = invoke noundef ptr @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellPNtNtCs6o3pVbAMket_10rayon_core8registry12WorkerThreadEE4withNvMs8_BW_BT_3getB1r_ECslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @0)
          to label %.noexc29 unwind label %bb.d   ; 2 uses

.noexc29:                                         ; preds = %bb.b
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %_RNvXsl_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs6o3pVbAMket_10rayon_core3jobINtB1i_9JobResultTuuEE4callNCINvMs4_NtB1k_8registryNtB2o_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3O_5slice12IterProducerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEINtNtB3M_8for_each15ForEachConsumerNCINvB5o_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB8O_9endianity13RunTimeEndianEEs_0EE0NCB3F_s_0uuE0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5o_.exit.i, !prof !15

bb.c:                                             ; preds = %.noexc29
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #27
          to label %.noexc30 unwind label %bb.d

.noexc30:                                         ; preds = %bb.c
  unreachable

_RNvXsl_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs6o3pVbAMket_10rayon_core3jobINtB1i_9JobResultTuuEE4callNCINvMs4_NtB1k_8registryNtB2o_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3O_5slice12IterProducerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEINtNtB3M_8for_each15ForEachConsumerNCINvB5o_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB8O_9endianity13RunTimeEndianEEs_0EE0NCB3F_s_0uuE0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5o_.exit.i: ; preds = %.noexc29
  invoke fastcc void @_RNCINvNtCs6o3pVbAMket_10rayon_core4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEINtNtBY_8for_each15ForEachConsumerNCINvB2A_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB5Z_9endianity13RunTimeEndianEEs_0EE0NCBR_s_0uuE0B2A_(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(88) %i.b, ptr noundef nonnull align 128 %i.e) #28
          to label %bb.i unwind label %bb.d

bb.d:                                             ; preds = %_RNvXsl_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs6o3pVbAMket_10rayon_core3jobINtB1i_9JobResultTuuEE4callNCINvMs4_NtB1k_8registryNtB2o_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3O_5slice12IterProducerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEINtNtB3M_8for_each15ForEachConsumerNCINvB5o_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB8O_9endianity13RunTimeEndianEEs_0EE0NCB3F_s_0uuE0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5o_.exit.i, %bb.c, %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.h)
          to label %bb.j unwind label %bb.e       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #22
  unreachable

bb.f:                                             ; preds = %bb.a
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #26
          to label %bb.h unwind label %bb.g

.body27:                                          ; preds = %bb.y, %bb.ab, %bb.ac, %bb.g, %.body
  %.pn = phi { ptr, i32 } [ %i.x, %.body ], [ %i.k, %bb.g ], [ %i.at, %bb.ac ], [ %i.at, %bb.ab ], [ %i.at, %bb.y ]
  invoke void @_RNvXNtCs6o3pVbAMket_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6o3pVbAMket_10rayon_core6unwind12AbortIfPanicECslKoDbeUmNq5_14dwarf_validate.exit unwind label %bb.af

bb.g:                                             ; preds = %bb.aa, %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body27

bb.h:                                             ; preds = %bb.f
  unreachable

bb.i:                                             ; preds = %_RNvXsl_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCINvMs7_NtCs6o3pVbAMket_10rayon_core3jobINtB1i_9JobResultTuuEE4callNCINvMs4_NtB1k_8registryNtB2o_8Registry15in_worker_crossNCINvNtB1k_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3O_5slice12IterProducerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEINtNtB3M_8for_each15ForEachConsumerNCINvB5o_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB8O_9endianity13RunTimeEndianEEs_0EE0NCB3F_s_0uuE0B25_E0E0EINtNtNtB9_3ops8function6FnOnceuE9call_onceB5o_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.k

bb.j:                                             ; preds = %bb.d
  %i.l = extractvalue { ptr, ptr } %i.i, 0        ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.i, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l), "nonnull"(ptr %i.m) ]
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.7.0 = phi ptr [ %i.m, %bb.j ], [ undef, %bb.i ] ; 2 uses
  %.sroa.6.0 = phi ptr [ %i.l, %bb.j ], [ undef, %bb.i ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 2, %bb.j ], [ 1, %bb.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  %i.o = load i64, ptr %i.n, align 8, !range !6, !alias.scope !337, !noundef !5
  %switch.i = icmp samesign ult i64 %i.o, 2
  br i1 %switch.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultTuuEEECslKoDbeUmNq5_14dwarf_validate.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.val.i = load ptr, ptr %i.p, align 8, !alias.scope !337 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %.val1.i = load ptr, ptr %i.q, align 8, !alias.scope !337, !nonnull !5, !align !7, !noundef !5 ; 5 uses
  %i.r = load ptr, ptr %.val1.i, align 8, !invariant.load !5, !noalias !337 ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.r(ptr noundef nonnull %.val.i)
          to label %bb.n unwind label %bb.p, !noalias !337

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !8, !invariant.load !5, !noalias !337 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultTuuEEECslKoDbeUmNq5_14dwarf_validate.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.w = load i64, ptr %i.v, align 8, !range !9, !invariant.load !5, !noalias !337
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.t, i64 noundef range(i64 1, 536870913) %i.w) #23, !noalias !337
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultTuuEEECslKoDbeUmNq5_14dwarf_validate.exit

bb.p:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !8, !invariant.load !5, !noalias !337 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.body, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !9, !invariant.load !5, !noalias !337
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.z, i64 noundef range(i64 1, 536870913) %i.ac) #23, !noalias !337
  br label %.body

.body:                                            ; preds = %bb.p, %bb.q
  store i64 %.sroa.04.0, ptr %i.n, align 8
  store ptr %.sroa.6.0, ptr %i.p, align 8
  store ptr %.sroa.7.0, ptr %i.q, align 8
  br label %.body27

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultTuuEEECslKoDbeUmNq5_14dwarf_validate.exit: ; preds = %bb.o, %bb.n, %bb.k
  store i64 %.sroa.04.0, ptr %i.n, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.7.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx8, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.af = load i8, ptr %i.ae, align 8, !range !11, !noundef !5
  %i.ag = trunc nuw i8 %i.af to i1                ; 3 uses
  br i1 %i.ag, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultTuuEEECslKoDbeUmNq5_14dwarf_validate.exit
  %i.ah = load ptr, ptr %i.ad, align 8, !nonnull !5, !align !7, !noundef !5
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !5, !noundef !5
  br label %bb.t

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultTuuEEECslKoDbeUmNq5_14dwarf_validate.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.aj = load ptr, ptr %i.ad, align 8, !nonnull !5, !align !7, !noundef !5 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !5, !noundef !5
  %i.al = atomicrmw add ptr %i.ak, i64 1 monotonic, align 8
  %i.am = icmp slt i64 %i.al, 0
  br i1 %i.am, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.u, %bb.r
  %.pn.i = phi ptr [ %i.as, %bb.u ], [ %i.ai, %bb.r ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ao = load i64, ptr %i.an, align 8, !noundef !5
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aq = atomicrmw xchg ptr %i.ap, i64 3 acq_rel, align 8
  %i.ar = icmp eq i64 %i.aq, 2
  br i1 %i.ar, label %bb.x, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.as = load ptr, ptr %i.aj, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.as, ptr %i.c, align 8
  br label %bb.t

bb.v:                                             ; preds = %bb.s
  tail call void @llvm.trap()
  unreachable

bb.w:                                             ; preds = %bb.x, %bb.t
  br i1 %i.ag, label %bb.z, label %bb.ae

bb.x:                                             ; preds = %bb.t
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.ao)
          to label %bb.w unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.ag, label %bb.ab, label %.body27

bb.z:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  %i.au = load ptr, ptr %i.c, align 8, !alias.scope !340, !nonnull !5, !noundef !5
  %i.av = atomicrmw add ptr %i.au, i64 -1 release, align 8, !noalias !340
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs6o3pVbAMket_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #25
          to label %bb.ae unwind label %bb.g

bb.ab:                                            ; preds = %bb.y
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  %i.ax = load ptr, ptr %i.c, align 8, !alias.scope !343, !nonnull !5, !noundef !5
  %i.ay = atomicrmw add ptr %i.ax, i64 -1 release, align 8, !noalias !343
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.ac, label %.body27

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs6o3pVbAMket_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #25
          to label %.body27 unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.ae:                                            ; preds = %bb.z, %bb.w, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.af:                                            ; preds = %.body27
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6o3pVbAMket_10rayon_core6unwind12AbortIfPanicECslKoDbeUmNq5_14dwarf_validate.exit: ; preds = %.body27
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCs6o3pVbAMket_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB45_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB5H_12endian_slice11EndianSliceNtNtB5J_9endianity13RunTimeEndianEjEEINtNtB43_3map11MapConsumerNtNtB43_6extend15ListVecConsumerNCINvB3b_13validate_infoQINtNtNtNtB1W_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6p_E0EEs_0E0B1P_ENtB5_3Job7executeB3b_(ptr noundef %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.5.sroa.6.0.copyload = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.5.sroa.7.0.copyload = load ptr, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  store ptr null, ptr %i.d, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.e, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  %i.e = inttoptr i64 %.sroa.5.sroa.4.0.copyload to ptr ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload), "nonnull"(ptr %.sroa.5.sroa.7.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !366, !noundef !5
  %i.g = load i64, ptr %.sroa.5.sroa.0.0.copyload, align 8, !noalias !366, !noundef !5
  %i.h = sub i64 %i.f, %i.g
  %i.i = load i64, ptr %i.e, align 8, !noalias !366, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noalias !366, !noundef !5
  invoke void @_RINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB1J_12endian_slice11EndianSliceNtNtB1L_9endianity13RunTimeEndianEjEEINtNtB6_3map11MapConsumerNtNtB6_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB2r_E0EEB4B_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.h, i1 noundef zeroext true, i64 noundef %i.i, i64 noundef %i.k, ptr noalias nofree noundef nonnull align 8 %.sroa.5.sroa.5.0.copyload, i64 noundef %.sroa.5.sroa.6.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.5.sroa.7.0.copyload)
          to label %bb.h unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.m)
          to label %bb.i unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #22
  unreachable

bb.e:                                             ; preds = %bb.a
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #26
          to label %bb.g unwind label %bb.f

.body46:                                          ; preds = %bb.z, %bb.ac, %bb.ad, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.p, %bb.f ], [ %i.az, %bb.ad ], [ %i.az, %bb.ac ], [ %i.az, %bb.z ]
  invoke void @_RNvXNtCs6o3pVbAMket_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6o3pVbAMket_10rayon_core6unwind12AbortIfPanicECslKoDbeUmNq5_14dwarf_validate.exit unwind label %bb.ag

bb.f:                                             ; preds = %bb.ab, %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body46

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.b
  %.sroa.0.0.copyload49 = load ptr, ptr %i.b, align 8
  %.sroa.9.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx50, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.14.0.copyload = load i64, ptr %.sroa.14.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.q = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.n, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q), "nonnull"(ptr %i.r) ]
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.0.060 = phi ptr [ %i.q, %bb.i ], [ %.sroa.0.0.copyload49, %bb.h ] ; 2 uses
  %.sroa.9.05157 = phi ptr [ %i.r, %bb.i ], [ %.sroa.9.0.copyload, %bb.h ] ; 2 uses
  %.sroa.9.0 = phi i64 [ undef, %bb.i ], [ %.sroa.14.0.copyload, %bb.h ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 2, %bb.i ], [ 1, %bb.h ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !367)
  %i.s = load i64, ptr %0, align 8, !range !6, !alias.scope !367, !noundef !5
  switch i64 %i.s, label %bb.k [
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEB2G_.exit
    i64 1, label %bb.q
  ]

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.t, align 8, !alias.scope !367 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.u, align 8, !alias.scope !367, !nonnull !5, !align !7, !noundef !5 ; 5 uses
  %i.v = load ptr, ptr %.val1.i, align 8, !invariant.load !5, !noalias !367 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.v(ptr noundef nonnull %.val.i)
          to label %bb.m unwind label %bb.o, !noalias !367

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !8, !invariant.load !5, !noalias !367 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEB2G_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !9, !invariant.load !5, !noalias !367
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.x, i64 noundef range(i64 1, 536870913) %i.aa) #23, !noalias !367
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEB2G_.exit

bb.o:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !8, !invariant.load !5, !noalias !367 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !range !9, !invariant.load !5, !noalias !367
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.ad, i64 noundef range(i64 1, 536870913) %i.ag) #23, !noalias !367
  br label %.body

bb.q:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs7_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEB2G_.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.o, %bb.p, %bb.r
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %bb.r ], [ %i.ab, %bb.p ], [ %i.ab, %bb.o ]
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.060, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.9.05157, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  br label %.body46

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEB2G_.exit: ; preds = %bb.n, %bb.m, %bb.j, %bb.q
  store i64 %.sroa.04.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.060, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.9.05157, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx10, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.al = load i8, ptr %i.ak, align 8, !range !11, !noundef !5
  %i.am = trunc nuw i8 %i.al to i1                ; 3 uses
  br i1 %i.am, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEB2G_.exit
  %i.an = load ptr, ptr %i.aj, align 8, !nonnull !5, !align !7, !noundef !5
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !5, !noundef !5
  br label %bb.u

bb.t:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEB2G_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ap = load ptr, ptr %i.aj, align 8, !nonnull !5, !align !7, !noundef !5 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !5, !noundef !5
  %i.ar = atomicrmw add ptr %i.aq, i64 1 monotonic, align 8
  %i.as = icmp slt i64 %i.ar, 0
  br i1 %i.as, label %bb.w, label %bb.v

bb.u:                                             ; preds = %bb.v, %bb.s
  %.pn.i = phi ptr [ %i.ay, %bb.v ], [ %i.ao, %bb.s ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.au = load i64, ptr %i.at, align 8, !noundef !5
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aw = atomicrmw xchg ptr %i.av, i64 3 acq_rel, align 8
  %i.ax = icmp eq i64 %i.aw, 2
  br i1 %i.ax, label %bb.y, label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.ay = load ptr, ptr %i.ap, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.ay, ptr %i.c, align 8
  br label %bb.u

bb.w:                                             ; preds = %bb.t
  call void @llvm.trap()
  unreachable

bb.x:                                             ; preds = %bb.y, %bb.u
  br i1 %i.am, label %bb.aa, label %bb.af

bb.y:                                             ; preds = %bb.u
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.au)
          to label %bb.x unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.am, label %bb.ac, label %.body46

bb.aa:                                            ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !368)
  call void @llvm.experimental.noalias.scope.decl(metadata !369)
  %i.ba = load ptr, ptr %i.c, align 8, !alias.scope !370, !nonnull !5, !noundef !5
  %i.bb = atomicrmw add ptr %i.ba, i64 -1 release, align 8, !noalias !370
  %i.bc = icmp eq i64 %i.bb, 1
  br i1 %i.bc, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs6o3pVbAMket_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #25
          to label %bb.af unwind label %bb.f

bb.ac:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !371)
  call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %i.bd = load ptr, ptr %i.c, align 8, !alias.scope !373, !nonnull !5, !noundef !5
  %i.be = atomicrmw add ptr %i.bd, i64 -1 release, align 8, !noalias !373
  %i.bf = icmp eq i64 %i.be, 1
  br i1 %i.bf, label %bb.ad, label %.body46

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs6o3pVbAMket_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #25
          to label %.body46 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.af:                                            ; preds = %bb.aa, %bb.x, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.ag:                                            ; preds = %.body46
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6o3pVbAMket_10rayon_core6unwind12AbortIfPanicECslKoDbeUmNq5_14dwarf_validate.exit: ; preds = %.body46
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCs6o3pVbAMket_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB53_12endian_slice11EndianSliceNtNtB55_9endianity13RunTimeEndianEjEEINtNtB1W_3map11MapConsumerINtB1S_15CollectConsumerB2T_ENCINvB2V_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5L_E0EEs_0E0B1P_ENtB5_3Job7executeB2V_(ptr noundef %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.sroa.6.0.copyload = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.e, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !396
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, i64 24, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  %i.e = inttoptr i64 %.sroa.5.sroa.4.0.copyload to ptr ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !396, !noundef !5
  %i.g = load i64, ptr %.sroa.5.sroa.0.0.copyload, align 8, !noalias !396, !noundef !5
  %i.h = sub i64 %i.f, %i.g
  %i.i = load i64, ptr %i.e, align 8, !noalias !396, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noalias !396, !noundef !5
  invoke void @_RINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB1J_12endian_slice11EndianSliceNtNtB1L_9endianity13RunTimeEndianEjEEINtNtB6_3map11MapConsumerINtNtNtB6_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB4L_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB2r_E0EEB4L_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, i64 noundef %i.h, i1 noundef zeroext true, i64 noundef %i.i, i64 noundef %i.k, ptr noalias nofree noundef nonnull align 8 %.sroa.5.sroa.5.0.copyload, i64 noundef %.sroa.5.sroa.6.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.h unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.m)
          to label %bb.i unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #22
  unreachable

bb.e:                                             ; preds = %bb.a
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #26
          to label %bb.g unwind label %bb.f

.body46:                                          ; preds = %bb.z, %bb.ac, %bb.ad, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.p, %bb.f ], [ %i.ba, %bb.ad ], [ %i.ba, %bb.ac ], [ %i.ba, %bb.z ]
  invoke void @_RNvXNtCs6o3pVbAMket_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6o3pVbAMket_10rayon_core6unwind12AbortIfPanicECslKoDbeUmNq5_14dwarf_validate.exit unwind label %bb.ag

bb.f:                                             ; preds = %bb.ab, %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body46

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !396
  %.sroa.0.0.copyload49 = load ptr, ptr %i.c, align 8
  %.sroa.9.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx50, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.14.0.copyload = load i64, ptr %.sroa.14.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.q = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.n, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q), "nonnull"(ptr %i.r) ]
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.0.060 = phi ptr [ %i.q, %bb.i ], [ %.sroa.0.0.copyload49, %bb.h ] ; 2 uses
  %.sroa.9.05157 = phi ptr [ %i.r, %bb.i ], [ %.sroa.9.0.copyload, %bb.h ] ; 2 uses
  %.sroa.9.0 = phi i64 [ undef, %bb.i ], [ %.sroa.14.0.copyload, %bb.h ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 2, %bb.i ], [ 1, %bb.h ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !397)
  %i.t = load i64, ptr %i.s, align 8, !range !6, !alias.scope !397, !noundef !5
  switch i64 %i.t, label %bb.k [
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEB2q_.exit
    i64 1, label %bb.q
  ]

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val.i = load ptr, ptr %i.u, align 8, !alias.scope !397 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1.i = load ptr, ptr %i.v, align 8, !alias.scope !397, !nonnull !5, !align !7, !noundef !5 ; 5 uses
  %i.w = load ptr, ptr %.val1.i, align 8, !invariant.load !5, !noalias !397 ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.w(ptr noundef nonnull %.val.i)
          to label %bb.m unwind label %bb.o, !noalias !397

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !8, !invariant.load !5, !noalias !397 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEB2q_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !9, !invariant.load !5, !noalias !397
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #23, !noalias !397
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEB2q_.exit

bb.o:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !8, !invariant.load !5, !noalias !397 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !9, !invariant.load !5, !noalias !397
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.ae, i64 noundef range(i64 1, 536870913) %i.ah) #23, !noalias !397
  br label %.body

bb.q:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_RNvXs2_NtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumerINtB5_13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEB2q_.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.o, %bb.p, %bb.r
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.r ], [ %i.ac, %bb.p ], [ %i.ac, %bb.o ]
  store i64 %.sroa.04.0, ptr %i.s, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.0.060, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.9.05157, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  br label %.body46

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEB2q_.exit: ; preds = %bb.n, %bb.m, %bb.j, %bb.q
  store i64 %.sroa.04.0, ptr %i.s, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.0.060, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.9.05157, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx10, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.am = load i8, ptr %i.al, align 8, !range !11, !noundef !5
  %i.an = trunc nuw i8 %i.am to i1                ; 3 uses
  br i1 %i.an, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEB2q_.exit
  %i.ao = load ptr, ptr %i.ak, align 8, !nonnull !5, !align !7, !noundef !5
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !5, !noundef !5
  br label %bb.u

bb.t:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEB2q_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.aq = load ptr, ptr %i.ak, align 8, !nonnull !5, !align !7, !noundef !5 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !5, !noundef !5
  %i.as = atomicrmw add ptr %i.ar, i64 1 monotonic, align 8
  %i.at = icmp slt i64 %i.as, 0
  br i1 %i.at, label %bb.w, label %bb.v

bb.u:                                             ; preds = %bb.v, %bb.s
  %.pn.i = phi ptr [ %i.az, %bb.v ], [ %i.ap, %bb.s ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.av = load i64, ptr %i.au, align 8, !noundef !5
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ax = atomicrmw xchg ptr %i.aw, i64 3 acq_rel, align 8
  %i.ay = icmp eq i64 %i.ax, 2
  br i1 %i.ay, label %bb.y, label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.az = load ptr, ptr %i.aq, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.az, ptr %i.d, align 8
  br label %bb.u

bb.w:                                             ; preds = %bb.t
  call void @llvm.trap()
  unreachable

bb.x:                                             ; preds = %bb.y, %bb.u
  br i1 %i.an, label %bb.aa, label %bb.af

bb.y:                                             ; preds = %bb.u
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.av)
          to label %bb.x unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.an, label %bb.ac, label %.body46

bb.aa:                                            ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !398)
  call void @llvm.experimental.noalias.scope.decl(metadata !399)
  %i.bb = load ptr, ptr %i.d, align 8, !alias.scope !400, !nonnull !5, !noundef !5
  %i.bc = atomicrmw add ptr %i.bb, i64 -1 release, align 8, !noalias !400
  %i.bd = icmp eq i64 %i.bc, 1
  br i1 %i.bd, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs6o3pVbAMket_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #25
          to label %bb.af unwind label %bb.f

bb.ac:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !401)
  call void @llvm.experimental.noalias.scope.decl(metadata !402)
  %i.be = load ptr, ptr %i.d, align 8, !alias.scope !403, !nonnull !5, !noundef !5
  %i.bf = atomicrmw add ptr %i.be, i64 -1 release, align 8, !noalias !403
  %i.bg = icmp eq i64 %i.bf, 1
  br i1 %i.bg, label %bb.ad, label %.body46

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs6o3pVbAMket_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #25
          to label %.body46 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.af:                                            ; preds = %bb.aa, %bb.x, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.ag:                                            ; preds = %.body46
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6o3pVbAMket_10rayon_core6unwind12AbortIfPanicECslKoDbeUmNq5_14dwarf_validate.exit: ; preds = %.body46
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCs6o3pVbAMket_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_buNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB21_5slice12IterProducerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEINtNtB1Z_8for_each15ForEachConsumerNCINvB3B_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB71_9endianity13RunTimeEndianEEs_0EEs_0E0uENtB5_3Job7executeB3B_(ptr nofree noundef captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.sroa.6.0.copyload = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.5.sroa.7.0.copyload = load ptr, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.e, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload), "nonnull"(ptr %.sroa.5.sroa.4.0.copyload), "nonnull"(ptr %.sroa.5.sroa.5.0.copyload), "nonnull"(ptr %.sroa.5.sroa.7.0.copyload) ]
  %i.c = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !422, !noundef !5
  %i.d = load i64, ptr %.sroa.5.sroa.0.0.copyload, align 8, !noalias !422, !noundef !5
  %i.e = sub i64 %i.c, %i.d
  %i.f = load i64, ptr %.sroa.5.sroa.4.0.copyload, align 8, !noalias !422, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.4.0.copyload, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noalias !422, !noundef !5
  invoke void @_RINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEINtNtB6_8for_each15ForEachConsumerNCINvB1H_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB56_9endianity13RunTimeEndianEEs_0EEB1H_(i64 noundef %i.e, i1 noundef zeroext true, i64 noundef %i.f, i64 noundef %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.5.sroa.5.0.copyload, i64 noundef %.sroa.5.sroa.6.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.5.sroa.7.0.copyload)
          to label %__rust_try.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  %i.k = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.j)
          to label %bb.h unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #22
  unreachable

bb.e:                                             ; preds = %bb.a
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #26
          to label %bb.g unwind label %bb.f

.body27:                                          ; preds = %bb.v, %bb.y, %bb.z, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %i.z, %.body ], [ %i.m, %bb.f ], [ %i.av, %bb.z ], [ %i.av, %bb.y ], [ %i.av, %bb.v ]
  invoke void @_RNvXNtCs6o3pVbAMket_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6o3pVbAMket_10rayon_core6unwind12AbortIfPanicECslKoDbeUmNq5_14dwarf_validate.exit unwind label %bb.ac

bb.f:                                             ; preds = %bb.x, %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body27

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.c
  %i.n = extractvalue { ptr, ptr } %i.k, 0
  %i.o = extractvalue { ptr, ptr } %i.k, 1
  br label %__rust_try.exit

__rust_try.exit:                                  ; preds = %bb.b, %bb.h
  %.sroa.7.0 = phi ptr [ %i.o, %bb.h ], [ undef, %bb.b ] ; 2 uses
  %.sroa.6.0 = phi ptr [ %i.n, %bb.h ], [ undef, %bb.b ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 2, %bb.h ], [ 1, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423)
  %i.q = load i64, ptr %i.p, align 8, !range !6, !alias.scope !423, !noundef !5
  %switch.i = icmp samesign ult i64 %i.q, 2
  br i1 %switch.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultuEECslKoDbeUmNq5_14dwarf_validate.exit, label %bb.i

bb.i:                                             ; preds = %__rust_try.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.val.i = load ptr, ptr %i.r, align 8, !alias.scope !423 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.val1.i = load ptr, ptr %i.s, align 8, !alias.scope !423, !nonnull !5, !align !7, !noundef !5 ; 5 uses
  %i.t = load ptr, ptr %.val1.i, align 8, !invariant.load !5, !noalias !423 ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.t(ptr noundef nonnull %.val.i)
          to label %bb.k unwind label %bb.m, !noalias !423

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !8, !invariant.load !5, !noalias !423 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultuEECslKoDbeUmNq5_14dwarf_validate.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !9, !invariant.load !5, !noalias !423
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.v, i64 noundef range(i64 1, 536870913) %i.y) #23, !noalias !423
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultuEECslKoDbeUmNq5_14dwarf_validate.exit

bb.m:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !8, !invariant.load !5, !noalias !423 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.body, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !range !9, !invariant.load !5, !noalias !423
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.ab, i64 noundef range(i64 1, 536870913) %i.ae) #23, !noalias !423
  br label %.body

.body:                                            ; preds = %bb.m, %bb.n
  store i64 %.sroa.04.0, ptr %i.p, align 8
  store ptr %.sroa.6.0, ptr %i.r, align 8
  store ptr %.sroa.7.0, ptr %i.s, align 8
  br label %.body27

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultuEECslKoDbeUmNq5_14dwarf_validate.exit: ; preds = %bb.l, %bb.k, %__rust_try.exit
  store i64 %.sroa.04.0, ptr %i.p, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.7.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx8, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ah = load i8, ptr %i.ag, align 8, !range !11, !noundef !5
  %i.ai = trunc nuw i8 %i.ah to i1                ; 3 uses
  br i1 %i.ai, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultuEECslKoDbeUmNq5_14dwarf_validate.exit
  %i.aj = load ptr, ptr %i.af, align 8, !nonnull !5, !align !7, !noundef !5
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !5, !noundef !5
  br label %bb.q

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultuEECslKoDbeUmNq5_14dwarf_validate.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.al = load ptr, ptr %i.af, align 8, !nonnull !5, !align !7, !noundef !5 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !5, !noundef !5
  %i.an = atomicrmw add ptr %i.am, i64 1 monotonic, align 8
  %i.ao = icmp slt i64 %i.an, 0
  br i1 %i.ao, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.r, %bb.o
  %.pn.i = phi ptr [ %i.au, %bb.r ], [ %i.ak, %bb.o ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !5
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.as = atomicrmw xchg ptr %i.ar, i64 3 acq_rel, align 8
  %i.at = icmp eq i64 %i.as, 2
  br i1 %i.at, label %bb.u, label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.au = load ptr, ptr %i.al, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.au, ptr %i.b, align 8
  br label %bb.q

bb.s:                                             ; preds = %bb.p
  tail call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %bb.u, %bb.q
  br i1 %i.ai, label %bb.w, label %bb.ab

bb.u:                                             ; preds = %bb.q
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.aq)
          to label %bb.t unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.ai, label %bb.y, label %.body27

bb.w:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  %i.aw = load ptr, ptr %i.b, align 8, !alias.scope !426, !nonnull !5, !noundef !5
  %i.ax = atomicrmw add ptr %i.aw, i64 -1 release, align 8, !noalias !426
  %i.ay = icmp eq i64 %i.ax, 1
  br i1 %i.ay, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs6o3pVbAMket_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #25
          to label %bb.ab unwind label %bb.f

bb.y:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  %i.az = load ptr, ptr %i.b, align 8, !alias.scope !429, !nonnull !5, !noundef !5
  %i.ba = atomicrmw add ptr %i.az, i64 -1 release, align 8, !noalias !429
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %bb.z, label %.body27

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs6o3pVbAMket_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #25
          to label %.body27 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.ab:                                            ; preds = %bb.w, %bb.t, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.ac:                                            ; preds = %.body27
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs6o3pVbAMket_10rayon_core6unwind12AbortIfPanicECslKoDbeUmNq5_14dwarf_validate.exit: ; preds = %.body27
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXsR_NtCskKLDkoKarTP_4core5arrayAINtNtB7_6option6OptionjEje_NtNtB7_7default7Default7defaultCslKoDbeUmNq5_14dwarf_validate(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([224 x i8]) align 8 captures(none) dereferenceable(224) initializes((0, 8), (16, 24), (32, 40), (48, 56), (64, 72), (80, 88), (96, 104), (112, 120), (128, 136), (144, 152), (160, 168), (176, 184), (192, 200), (208, 216)) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  store i64 0, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 0, ptr %i.m, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsd_NtCs6o3pVbAMket_10rayon_core5latchINtB5_8LatchRefNtB5_9LockLatchENtB5_5Latch3setCslKoDbeUmNq5_14dwarf_validate(ptr nonnull %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexbE4lockCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 4 %.0.val)
  call void @llvm.experimental.noalias.scope.decl(metadata !432)
  %i.c = load i64, ptr %i.b, align 8, !range !433, !alias.scope !432, !noundef !5
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCslKoDbeUmNq5_14dwarf_validate.exit.i, !prof !13

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !432
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !432, !nonnull !5, !align !10, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i8, ptr %i.g, align 8, !range !11, !alias.scope !432, !noundef !5
  store ptr %i.f, ptr %i.a, align 8, !noalias !432
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.h, ptr %i.i, align 8, !noalias !432
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #26
          to label %bb.d unwind label %bb.c, !noalias !432

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardbEEECslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #24
          to label %common.resume.i unwind label %bb.e, !noalias !432

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !432
  unreachable

common.resume.i:                                  ; preds = %bb.f, %bb.c
  %common.resume.op.i = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.r, %bb.f ]
  resume { ptr, i32 } %common.resume.op.i
end_hunk_1
