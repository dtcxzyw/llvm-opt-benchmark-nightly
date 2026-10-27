Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/dwarf_validate.dwarf_validate.fd51000a27e4c067-cgu.04?download=true
inline.NumInlined: 193
inline.NumDeleted: 109
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCs6o3pVbAMket_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1r_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB33_12endian_slice11EndianSliceNtNtB35_9endianity13RunTimeEndianEjEEINtNtB1p_3map11MapConsumerINtNtNtB1p_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB67_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB3L_E0EE0NCB1i_s_0INtB5p_13CollectResultB65_EB99_E0TB99_B99_EEB67_:bb.a

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.b, ptr noundef nonnull align 8 dereferenceable(120) %1, i64 120, i1 false)
  call fastcc void @_RNCINvNtCs6o3pVbAMket_10rayon_core4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB2C_12endian_slice11EndianSliceNtNtB2E_9endianity13RunTimeEndianEjEEINtNtBY_3map11MapConsumerINtNtNtBY_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB5E_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB3k_E0EE0NCBR_s_0INtB4X_13CollectResultB5C_EB8F_E0B5E_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(120) %i.b, ptr noundef nonnull align 128 %.val.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB6_8Registry9in_workerNCINvNtB8_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1J_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB3l_12endian_slice11EndianSliceNtNtB3n_9endianity13RunTimeEndianEjEEINtNtB1H_3map11MapConsumerINtNtNtB1H_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB6p_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB43_E0EE0NCB1A_s_0INtB5H_13CollectResultB6n_EB9r_E0TB9r_B9r_EEB6p_.exit

bb.c:                                             ; preds = %bb.a
  %i.e = invoke noundef nonnull align 8 ptr @_RNvNtCs6o3pVbAMket_10rayon_core8registry15global_registry()
          to label %bb.d unwind label %bb.i

_RINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB6_8Registry9in_workerNCINvNtB8_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1J_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB3l_12endian_slice11EndianSliceNtNtB3n_9endianity13RunTimeEndianEjEEINtNtB1H_3map11MapConsumerINtNtNtB1H_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB6p_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB43_E0EE0NCB1A_s_0INtB5H_13CollectResultB6n_EB9r_E0TB9r_B9r_EEB6p_.exit: ; preds = %.noexc2, %bb.g, %bb.f, %bb.b
  ret void

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.c, align 8, !noalias !74, !noundef !5 ; 4 uses
  %i.h = icmp eq ptr %.val.i.i.i, null
  br i1 %i.h, label %bb.f, label %bb.e, !prof !7

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 272
  %i.j = load ptr, ptr %i.i, align 16, !noalias !75, !nonnull !5, !noundef !5
  %.not.i = icmp eq ptr %i.j, %i.f
  br i1 %.not.i, label %.noexc2, label %bb.g, !prof !6

bb.f:                                             ; preds = %bb.d
  tail call fastcc void @_RINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB6_8Registry14in_worker_coldNCINvNtB8_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1P_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB3r_12endian_slice11EndianSliceNtNtB3t_9endianity13RunTimeEndianEjEEINtNtB1N_3map11MapConsumerINtNtNtB1N_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB6v_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB49_E0EE0NCB1G_s_0INtB5N_13CollectResultB6t_EB9x_E0TB9x_B9x_EEB6v_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %0, ptr noundef nonnull align 128 %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %1)
  br label %_RINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB6_8Registry9in_workerNCINvNtB8_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1J_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB3l_12endian_slice11EndianSliceNtNtB3n_9endianity13RunTimeEndianEjEEINtNtB1H_3map11MapConsumerINtNtNtB1H_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB6p_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB43_E0EE0NCB1A_s_0INtB5H_13CollectResultB6n_EB9r_E0TB9r_B9r_EEB6p_.exit

.noexc2:                                          ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(120) %1, i64 120, i1 false)
  call fastcc void @_RNCINvNtCs6o3pVbAMket_10rayon_core4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB2C_12endian_slice11EndianSliceNtNtB2E_9endianity13RunTimeEndianEjEEINtNtBY_3map11MapConsumerINtNtNtBY_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB5E_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB3k_E0EE0NCBR_s_0INtB4X_13CollectResultB5C_EB8F_E0B5E_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(120) %i.a, ptr noundef nonnull align 128 %.val.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !75
  br label %_RINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB6_8Registry9in_workerNCINvNtB8_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1J_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB3l_12endian_slice11EndianSliceNtNtB3n_9endianity13RunTimeEndianEjEEINtNtB1H_3map11MapConsumerINtNtNtB1H_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB6p_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB43_E0EE0NCB1A_s_0INtB5H_13CollectResultB6n_EB9r_E0TB9r_B9r_EEB6p_.exit

bb.g:                                             ; preds = %bb.e
  tail call fastcc void @_RINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB6_8Registry15in_worker_crossNCINvNtB8_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1Q_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB3s_12endian_slice11EndianSliceNtNtB3u_9endianity13RunTimeEndianEjEEINtNtB1O_3map11MapConsumerINtNtNtB1O_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB6w_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB4a_E0EE0NCB1H_s_0INtB5O_13CollectResultB6u_EB9y_E0TB9y_B9y_EEB6w_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %0, ptr noundef nonnull align 128 %i.g, ptr noundef nonnull align 128 %.val.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %1)
  br label %_RINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB6_8Registry9in_workerNCINvNtB8_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1J_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB3l_12endian_slice11EndianSliceNtNtB3n_9endianity13RunTimeEndianEjEEINtNtB1H_3map11MapConsumerINtNtNtB1H_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB6p_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB43_E0EE0NCB1A_s_0INtB5H_13CollectResultB6n_EB9r_E0TB9r_B9r_EEB6p_.exit

bb.h:                                             ; preds = %bb.i
  resume { ptr, i32 } %lpad.thr_comm.split-lp

bb.i:                                             ; preds = %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtCs6o3pVbAMket_10rayon_core4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1C_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB3e_12endian_slice11EndianSliceNtNtB3g_9endianity13RunTimeEndianEjEEINtNtB1A_3map11MapConsumerINtNtNtB1A_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB6i_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB3W_E0EE0NCB1t_s_0INtB5A_13CollectResultB6g_EB9k_E0EB6i_(ptr noalias nofree noundef align 8 dereferenceable(120) %1) #23
          to label %bb.h unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs6o3pVbAMket_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1r_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB33_12endian_slice11EndianSliceNtNtB35_9endianity13RunTimeEndianEjEEINtNtB1p_3map11MapConsumerNtNtB1p_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB3L_E0EE0NCB1i_s_0INtNtNtB6Q_11collections11linked_list10LinkedListINtNtB6Q_3vec3VecNtB5X_11UnitSummaryEEB8C_E0TB8C_B8C_EEB5X_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(88) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %i.b = alloca [88 x i8], align 8                ; 4 uses
  %i.c = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs6o3pVbAMket_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL) ; 2 uses
  %.val.i.i = load ptr, ptr %i.c, align 8, !noalias !83, !noundef !5 ; 2 uses
  %i.d = icmp eq ptr %.val.i.i, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false)
  call fastcc void @_RNCINvNtCs6o3pVbAMket_10rayon_core4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB2C_12endian_slice11EndianSliceNtNtB2E_9endianity13RunTimeEndianEjEEINtNtBY_3map11MapConsumerNtNtBY_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB3k_E0EE0NCBR_s_0INtNtNtB6n_11collections11linked_list10LinkedListINtNtB6n_3vec3VecNtB5u_11UnitSummaryEEB88_E0B5u_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %i.b, ptr noundef nonnull align 128 %.val.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB6_8Registry9in_workerNCINvNtB8_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1J_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB3l_12endian_slice11EndianSliceNtNtB3n_9endianity13RunTimeEndianEjEEINtNtB1H_3map11MapConsumerNtNtB1H_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB43_E0EE0NCB1A_s_0INtNtNtB78_11collections11linked_list10LinkedListINtNtB78_3vec3VecNtB6f_11UnitSummaryEEB8U_E0TB8U_B8U_EEB6f_.exit

bb.c:                                             ; preds = %bb.a
  %i.e = invoke noundef nonnull align 8 ptr @_RNvNtCs6o3pVbAMket_10rayon_core8registry15global_registry()
          to label %bb.d unwind label %bb.i

_RINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB6_8Registry9in_workerNCINvNtB8_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1J_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB3l_12endian_slice11EndianSliceNtNtB3n_9endianity13RunTimeEndianEjEEINtNtB1H_3map11MapConsumerNtNtB1H_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB43_E0EE0NCB1A_s_0INtNtNtB78_11collections11linked_list10LinkedListINtNtB78_3vec3VecNtB6f_11UnitSummaryEEB8U_E0TB8U_B8U_EEB6f_.exit: ; preds = %.noexc2, %bb.g, %bb.f, %bb.b
  ret void

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.c, align 8, !noalias !84, !noundef !5 ; 4 uses
  %i.h = icmp eq ptr %.val.i.i.i, null
  br i1 %i.h, label %bb.f, label %bb.e, !prof !7

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 272
  %i.j = load ptr, ptr %i.i, align 16, !noalias !85, !nonnull !5, !noundef !5
  %.not.i = icmp eq ptr %i.j, %i.f
  br i1 %.not.i, label %.noexc2, label %bb.g, !prof !6

bb.f:                                             ; preds = %bb.d
  tail call fastcc void @_RINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB6_8Registry14in_worker_coldNCINvNtB8_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1P_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB3r_12endian_slice11EndianSliceNtNtB3t_9endianity13RunTimeEndianEjEEINtNtB1N_3map11MapConsumerNtNtB1N_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB49_E0EE0NCB1G_s_0INtNtNtB7e_11collections11linked_list10LinkedListINtNtB7e_3vec3VecNtB6l_11UnitSummaryEEB90_E0TB90_B90_EEB6l_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %0, ptr noundef nonnull align 128 %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1)
  br label %_RINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB6_8Registry9in_workerNCINvNtB8_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1J_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB3l_12endian_slice11EndianSliceNtNtB3n_9endianity13RunTimeEndianEjEEINtNtB1H_3map11MapConsumerNtNtB1H_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB43_E0EE0NCB1A_s_0INtNtNtB78_11collections11linked_list10LinkedListINtNtB78_3vec3VecNtB6f_11UnitSummaryEEB8U_E0TB8U_B8U_EEB6f_.exit

.noexc2:                                          ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !85
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false)
  call fastcc void @_RNCINvNtCs6o3pVbAMket_10rayon_core4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB2C_12endian_slice11EndianSliceNtNtB2E_9endianity13RunTimeEndianEjEEINtNtBY_3map11MapConsumerNtNtBY_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB3k_E0EE0NCBR_s_0INtNtNtB6n_11collections11linked_list10LinkedListINtNtB6n_3vec3VecNtB5u_11UnitSummaryEEB88_E0B5u_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %i.a, ptr noundef nonnull align 128 %.val.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !85
  br label %_RINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB6_8Registry9in_workerNCINvNtB8_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1J_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB3l_12endian_slice11EndianSliceNtNtB3n_9endianity13RunTimeEndianEjEEINtNtB1H_3map11MapConsumerNtNtB1H_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB43_E0EE0NCB1A_s_0INtNtNtB78_11collections11linked_list10LinkedListINtNtB78_3vec3VecNtB6f_11UnitSummaryEEB8U_E0TB8U_B8U_EEB6f_.exit

bb.g:                                             ; preds = %bb.e
  tail call fastcc void @_RINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB6_8Registry15in_worker_crossNCINvNtB8_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1Q_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB3s_12endian_slice11EndianSliceNtNtB3u_9endianity13RunTimeEndianEjEEINtNtB1O_3map11MapConsumerNtNtB1O_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB4a_E0EE0NCB1H_s_0INtNtNtB7f_11collections11linked_list10LinkedListINtNtB7f_3vec3VecNtB6m_11UnitSummaryEEB91_E0TB91_B91_EEB6m_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %0, ptr noundef nonnull align 128 %i.g, ptr noundef nonnull align 128 %.val.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1)
  br label %_RINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB6_8Registry9in_workerNCINvNtB8_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1J_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB3l_12endian_slice11EndianSliceNtNtB3n_9endianity13RunTimeEndianEjEEINtNtB1H_3map11MapConsumerNtNtB1H_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB43_E0EE0NCB1A_s_0INtNtNtB78_11collections11linked_list10LinkedListINtNtB78_3vec3VecNtB6f_11UnitSummaryEEB8U_E0TB8U_B8U_EEB6f_.exit

bb.h:                                             ; preds = %bb.i
  resume { ptr, i32 } %lpad.thr_comm.split-lp

bb.i:                                             ; preds = %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtCs6o3pVbAMket_10rayon_core4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1C_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB3e_12endian_slice11EndianSliceNtNtB3g_9endianity13RunTimeEndianEjEEINtNtB1A_3map11MapConsumerNtNtB1A_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB3W_E0EE0NCB1t_s_0INtNtNtB71_11collections11linked_list10LinkedListINtNtB71_3vec3VecNtB68_11UnitSummaryEEB8N_E0EB68_(ptr noalias nofree noundef align 8 dereferenceable(88) %1) #23
          to label %bb.h unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs6o3pVbAMket_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1r_5slice12IterProducerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEINtNtB1p_8for_each15ForEachConsumerNCINvB31_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB6r_9endianity13RunTimeEndianEEs_0EE0NCB1i_s_0uuE0TuuEEB31_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(88) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs6o3pVbAMket_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL) ; 2 uses
  %.val.i.i = load ptr, ptr %i.a, align 8, !noalias !92, !noundef !5 ; 2 uses
  %i.b = icmp eq ptr %.val.i.i, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RNCINvNtCs6o3pVbAMket_10rayon_core4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEINtNtBY_8for_each15ForEachConsumerNCINvB2A_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB5Z_9endianity13RunTimeEndianEEs_0EE0NCBR_s_0uuE0B2A_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %0, ptr noundef nonnull align 128 %.val.i.i) #26
  br label %_RINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB6_8Registry9in_workerNCINvNtB8_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1J_5slice12IterProducerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEINtNtB1H_8for_each15ForEachConsumerNCINvB3j_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB6J_9endianity13RunTimeEndianEEs_0EE0NCB1A_s_0uuE0TuuEEB3j_.exit

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 ptr @_RNvNtCs6o3pVbAMket_10rayon_core8registry15global_registry()
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 128 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.a, align 8, !noalias !93, !noundef !5 ; 4 uses
  %i.f = icmp eq ptr %.val.i.i.i, null
  br i1 %i.f, label %bb.e, label %bb.d, !prof !7

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 272
  %i.h = load ptr, ptr %i.g, align 16, !noalias !94, !nonnull !5, !noundef !5
  %.not.i = icmp eq ptr %i.h, %i.d
  br i1 %.not.i, label %bb.f, label %bb.g, !prof !6

bb.e:                                             ; preds = %bb.c
  tail call fastcc void @_RINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB6_8Registry14in_worker_coldNCINvNtB8_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1P_5slice12IterProducerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEINtNtB1N_8for_each15ForEachConsumerNCINvB3p_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB6P_9endianity13RunTimeEndianEEs_0EE0NCB1G_s_0uuE0TuuEEB3p_(ptr noundef nonnull align 128 %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0)
  br label %_RINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB6_8Registry9in_workerNCINvNtB8_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1J_5slice12IterProducerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEINtNtB1H_8for_each15ForEachConsumerNCINvB3j_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB6J_9endianity13RunTimeEndianEEs_0EE0NCB1A_s_0uuE0TuuEEB3j_.exit

bb.f:                                             ; preds = %bb.d
  tail call fastcc void @_RNCINvNtCs6o3pVbAMket_10rayon_core4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEINtNtBY_8for_each15ForEachConsumerNCINvB2A_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB5Z_9endianity13RunTimeEndianEEs_0EE0NCBR_s_0uuE0B2A_(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(88) %0, ptr noundef nonnull align 128 %.val.i.i.i) #26
  br label %_RINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB6_8Registry9in_workerNCINvNtB8_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1J_5slice12IterProducerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEINtNtB1H_8for_each15ForEachConsumerNCINvB3j_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB6J_9endianity13RunTimeEndianEEs_0EE0NCB1A_s_0uuE0TuuEEB3j_.exit

bb.g:                                             ; preds = %bb.d
  tail call fastcc void @_RINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB6_8Registry15in_worker_crossNCINvNtB8_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1Q_5slice12IterProducerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEINtNtB1O_8for_each15ForEachConsumerNCINvB3q_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB6Q_9endianity13RunTimeEndianEEs_0EE0NCB1H_s_0uuE0TuuEEB3q_(ptr noundef nonnull align 128 %i.e, ptr noundef nonnull align 128 %.val.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0)
  br label %_RINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB6_8Registry9in_workerNCINvNtB8_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1J_5slice12IterProducerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEINtNtB1H_8for_each15ForEachConsumerNCINvB3j_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB6J_9endianity13RunTimeEndianEEs_0EE0NCB1A_s_0uuE0TuuEEB3j_.exit

_RINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB6_8Registry9in_workerNCINvNtB8_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1J_5slice12IterProducerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEINtNtB1H_8for_each15ForEachConsumerNCINvB3j_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB6J_9endianity13RunTimeEndianEEs_0EE0NCB1A_s_0uuE0TuuEEB3j_.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEEB35_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  %i.a = load i64, ptr %0, align 8, !range !8, !alias.scope !97, !noundef !5
  switch i64 %i.a, label %bb.b [
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEB2G_.exit
    i64 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !97 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.c, align 8, !alias.scope !97, !nonnull !5, !align !9, !noundef !5 ; 5 uses
  %i.d = load ptr, ptr %.val1.i, align 8, !invariant.load !5, !noalias !97 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.d(ptr noundef nonnull %.val.i)
          to label %bb.d unwind label %bb.f, !noalias !97

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !10, !invariant.load !5, !noalias !97 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEB2G_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !11, !invariant.load !5, !noalias !97
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #25, !noalias !97
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1r_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEB2G_.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !10, !invariant.load !5, !noalias !97 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate.exit4.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !11, !invariant.load !5, !noalias !97
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #25, !noalias !97
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.a = load i64, ptr %0, align 8, !range !8, !alias.scope !100, !noundef !5
  switch i64 %i.a, label %bb.b [
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEB2q_.exit
    i64 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !100 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.c, align 8, !alias.scope !100, !nonnull !5, !align !9, !noundef !5 ; 5 uses
  %i.d = load ptr, ptr %.val1.i, align 8, !invariant.load !5, !noalias !100 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.d(ptr noundef nonnull %.val.i)
          to label %bb.d unwind label %bb.f, !noalias !100

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !10, !invariant.load !5, !noalias !100 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEB2q_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !11, !invariant.load !5, !noalias !100
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #25, !noalias !100
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEB2q_.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !10, !invariant.load !5, !noalias !100 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate.exit4.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !11, !invariant.load !5, !noalias !100
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #25, !noalias !100
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
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultTINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1R_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1K_EEEEB36_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  %i.a = load i64, ptr %0, align 8, !range !8, !alias.scope !105, !noundef !5
  switch i64 %i.a, label %bb.b [
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultTINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1l_EEEB2H_.exit
    i64 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !105 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.c, align 8, !alias.scope !105, !nonnull !5, !align !9, !noundef !5 ; 5 uses
  %i.d = load ptr, ptr %.val1.i, align 8, !invariant.load !5, !noalias !105 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.d(ptr noundef nonnull %.val.i)
          to label %bb.d unwind label %bb.f, !noalias !105

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !10, !invariant.load !5, !noalias !105 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultTINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1l_EEEB2H_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !11, !invariant.load !5, !noalias !105
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #25, !noalias !105
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultTINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1l_EEEB2H_.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !10, !invariant.load !5, !noalias !105 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %common.resume.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !11, !invariant.load !5, !noalias !105
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #25, !noalias !105
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.i, %bb.g, %bb.f
  %common.resume.op.i = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.j, %bb.g ], [ %i.q, %bb.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.h:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs7_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtBJ_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEBC_EEB1X_.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RNvXs7_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !106
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtBJ_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEBC_EEB1X_.exit.i: ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RNvXs7_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultTINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1l_EEEB2H_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultTINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1l_EEEB2H_.exit: ; preds = %bb.a, %bb.d, %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtBJ_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEBC_EEB1X_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultTINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEB1K_EEEEB2Q_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.a = load i64, ptr %0, align 8, !range !8, !alias.scope !109, !noundef !5
  switch i64 %i.a, label %bb.b [
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultTINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEB1l_EEEB2r_.exit
    i64 1, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !109 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.c, align 8, !alias.scope !109, !nonnull !5, !align !9, !noundef !5 ; 5 uses
  %i.d = load ptr, ptr %.val1.i, align 8, !invariant.load !5, !noalias !109 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.d(ptr noundef nonnull %.val.i)
          to label %bb.d unwind label %bb.f, !noalias !109

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !10, !invariant.load !5, !noalias !109 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultTINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEB1l_EEEB2r_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !11, !invariant.load !5, !noalias !109
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #25, !noalias !109
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultTINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEB1l_EEEB2r_.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !10, !invariant.load !5, !noalias !109 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %common.resume.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !11, !invariant.load !5, !noalias !109
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #25, !noalias !109
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.i, %bb.g, %bb.f
  %common.resume.op.i = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.j, %bb.g ], [ %i.q, %bb.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.h:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs2_NtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumerINtB5_13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEBC_EEB1I_.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RNvXs2_NtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumerINtB5_13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEBC_EEB1I_.exit.i: ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RNvXs2_NtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumerINtB5_13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultTINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEB1l_EEEB2r_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job9JobResultTINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEB1l_EEEB2r_.exit: ; preds = %bb.a, %bb.d, %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEBC_EEB1I_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job8StackJobINtNtBG_5latch8LatchRefNtB1m_9LockLatchENCNCINvMs4_NtBG_8registryNtB28_8Registry14in_worker_coldNCINvNtBG_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB57_12endian_slice11EndianSliceNtNtB59_9endianity13RunTimeEndianEjEEINtNtB3t_3map11MapConsumerINtNtNtB3t_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB8b_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5P_E0EE0NCB3m_s_0INtB7t_13CollectResultB89_EBbd_E0TBbd_Bbd_EE00BbK_EEB8b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !114, !noundef !5
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB1x_8Registry14in_worker_coldNCINvNtB1z_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3i_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4U_12endian_slice11EndianSliceNtNtB4W_9endianity13RunTimeEndianEjEEINtNtB3g_3map11MapConsumerINtNtNtB3g_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB7Y_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5C_E0EE0NCB39_s_0INtB7g_13CollectResultB7W_EBb0_E0TBb0_Bb0_EE00EEEB7Y_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RNvXsa_NtCs3uS0LcqId4h_5rayon3vecINtB5_13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBV_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB47_12endian_slice11EndianSliceNtNtB49_9endianity13RunTimeEndianEjEEINtNtB2t_3map11MapConsumerINtNtNtB2t_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB7b_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB4P_E0EE0NCB2m_s_0INtB6t_13CollectResultB79_EBad_E0TBad_Bad_EE00EB7b_.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_RNvXsa_NtCs3uS0LcqId4h_5rayon3vecINtB5_13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBV_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB47_12endian_slice11EndianSliceNtNtB49_9endianity13RunTimeEndianEjEEINtNtB2t_3map11MapConsumerINtNtNtB2t_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB7b_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB4P_E0EE0NCB2m_s_0INtB6t_13CollectResultB79_EBad_E0TBad_Bad_EE00EB7b_.exit.i.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_RNvXsa_NtCs3uS0LcqId4h_5rayon3vecINtB5_13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBV_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB1x_8Registry14in_worker_coldNCINvNtB1z_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3i_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4U_12endian_slice11EndianSliceNtNtB4W_9endianity13RunTimeEndianEjEEINtNtB3g_3map11MapConsumerINtNtNtB3g_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB7Y_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5C_E0EE0NCB39_s_0INtB7g_13CollectResultB7W_EBb0_E0TBb0_Bb0_EE00EEEB7Y_.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB47_12endian_slice11EndianSliceNtNtB49_9endianity13RunTimeEndianEjEEINtNtB2t_3map11MapConsumerINtNtNtB2t_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB7b_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB4P_E0EE0NCB2m_s_0INtB6t_13CollectResultB79_EBad_E0TBad_Bad_EE00EB7b_.exit.i.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.e, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultTINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEB1K_EEEEB2Q_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.j) #23
          to label %bb.g unwind label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB1x_8Registry14in_worker_coldNCINvNtB1z_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3i_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4U_12endian_slice11EndianSliceNtNtB4W_9endianity13RunTimeEndianEjEEINtNtB3g_3map11MapConsumerINtNtNtB3g_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB7Y_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5C_E0EE0NCB39_s_0INtB7g_13CollectResultB7W_EBb0_E0TBb0_Bb0_EE00EEEB7Y_.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB47_12endian_slice11EndianSliceNtNtB49_9endianity13RunTimeEndianEjEEINtNtB2t_3map11MapConsumerINtNtNtB2t_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB7b_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB4P_E0EE0NCB2m_s_0INtB6t_13CollectResultB79_EBad_E0TBad_Bad_EE00EB7b_.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultTINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEB1K_EEEEB2Q_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.k)
  ret void

bb.f:                                             ; preds = %.body
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.g:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job8StackJobINtNtBG_5latch8LatchRefNtB1m_9LockLatchENCNCINvMs4_NtBG_8registryNtB28_8Registry14in_worker_coldNCINvNtBG_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB57_12endian_slice11EndianSliceNtNtB59_9endianity13RunTimeEndianEjEEINtNtB3t_3map11MapConsumerNtNtB3t_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5P_E0EE0NCB3m_s_0INtNtNtB8U_11collections11linked_list10LinkedListINtNtB8U_3vec3VecNtB81_11UnitSummaryEEBaG_E0TBaG_BaG_EE00Bcb_EEB81_(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !119, !noundef !5
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB1x_8Registry14in_worker_coldNCINvNtB1z_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3i_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4U_12endian_slice11EndianSliceNtNtB4W_9endianity13RunTimeEndianEjEEINtNtB3g_3map11MapConsumerNtNtB3g_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5C_E0EE0NCB39_s_0INtNtNtB8H_11collections11linked_list10LinkedListINtNtB8H_3vec3VecNtB7O_11UnitSummaryEEBat_E0TBat_Bat_EE00EEEB7O_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RNvXsa_NtCs3uS0LcqId4h_5rayon3vecINtB5_13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBV_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB47_12endian_slice11EndianSliceNtNtB49_9endianity13RunTimeEndianEjEEINtNtB2t_3map11MapConsumerNtNtB2t_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB4P_E0EE0NCB2m_s_0INtNtNtB7U_11collections11linked_list10LinkedListINtNtB7U_3vec3VecNtB71_11UnitSummaryEEB9G_E0TB9G_B9G_EE00EB71_.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_RNvXsa_NtCs3uS0LcqId4h_5rayon3vecINtB5_13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBV_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB47_12endian_slice11EndianSliceNtNtB49_9endianity13RunTimeEndianEjEEINtNtB2t_3map11MapConsumerNtNtB2t_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB4P_E0EE0NCB2m_s_0INtNtNtB7U_11collections11linked_list10LinkedListINtNtB7U_3vec3VecNtB71_11UnitSummaryEEB9G_E0TB9G_B9G_EE00EB71_.exit.i.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_RNvXsa_NtCs3uS0LcqId4h_5rayon3vecINtB5_13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBV_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB1x_8Registry14in_worker_coldNCINvNtB1z_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3i_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4U_12endian_slice11EndianSliceNtNtB4W_9endianity13RunTimeEndianEjEEINtNtB3g_3map11MapConsumerNtNtB3g_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5C_E0EE0NCB39_s_0INtNtNtB8H_11collections11linked_list10LinkedListINtNtB8H_3vec3VecNtB7O_11UnitSummaryEEBat_E0TBat_Bat_EE00EEEB7O_.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB47_12endian_slice11EndianSliceNtNtB49_9endianity13RunTimeEndianEjEEINtNtB2t_3map11MapConsumerNtNtB2t_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB4P_E0EE0NCB2m_s_0INtNtNtB7U_11collections11linked_list10LinkedListINtNtB7U_3vec3VecNtB71_11UnitSummaryEEB9G_E0TB9G_B9G_EE00EB71_.exit.i.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.e, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultTINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1R_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1K_EEEEB36_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.j) #23
          to label %bb.g unwind label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB1x_8Registry14in_worker_coldNCINvNtB1z_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3i_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4U_12endian_slice11EndianSliceNtNtB4W_9endianity13RunTimeEndianEjEEINtNtB3g_3map11MapConsumerNtNtB3g_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5C_E0EE0NCB39_s_0INtNtNtB8H_11collections11linked_list10LinkedListINtNtB8H_3vec3VecNtB7O_11UnitSummaryEEBat_E0TBat_Bat_EE00EEEB7O_.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtBM_8Registry14in_worker_coldNCINvNtBO_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2v_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB47_12endian_slice11EndianSliceNtNtB49_9endianity13RunTimeEndianEjEEINtNtB2t_3map11MapConsumerNtNtB2t_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB4P_E0EE0NCB2m_s_0INtNtNtB7U_11collections11linked_list10LinkedListINtNtB7U_3vec3VecNtB71_11UnitSummaryEEB9G_E0TB9G_B9G_EE00EB71_.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultTINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1R_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1K_EEEEB36_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.k)
  ret void

bb.f:                                             ; preds = %.body
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.g:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job8StackJobINtNtBG_5latch8LatchRefNtB1m_9LockLatchENCNCINvMs4_NtBG_8registryNtB28_8Registry14in_worker_coldNCINvNtBG_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3v_5slice12IterProducerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEINtNtB3t_8for_each15ForEachConsumerNCINvB55_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB8v_9endianity13RunTimeEndianEEs_0EE0NCB3m_s_0uuE0TuuEE00Bad_EEB55_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %i.b = load i64, ptr %i.a, align 8, !range !8, !alias.scope !126, !noundef !5
  %switch.i.i = icmp samesign ult i64 %i.b, 2
  br i1 %switch.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultTuuEEEECslKoDbeUmNq5_14dwarf_validate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !126 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val1.i.i = load ptr, ptr %i.d, align 8, !alias.scope !126, !nonnull !5, !align !9, !noundef !5 ; 5 uses
  %i.e = load ptr, ptr %.val1.i.i, align 8, !invariant.load !5, !noalias !126 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.e(ptr noundef nonnull %.val.i.i)
          to label %bb.d unwind label %bb.f, !noalias !126

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !10, !invariant.load !5, !noalias !126 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultTuuEEEECslKoDbeUmNq5_14dwarf_validate.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !11, !invariant.load !5, !noalias !126
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #25, !noalias !126
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultTuuEEEECslKoDbeUmNq5_14dwarf_validate.exit

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !10, !invariant.load !5, !noalias !126 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate.exit4.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !11, !invariant.load !5, !noalias !126
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #25, !noalias !126
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate.exit4.i.i.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate.exit4.i.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.k

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultTuuEEEECslKoDbeUmNq5_14dwarf_validate.exit: ; preds = %bb.a, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvNtBG_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3d_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4P_12endian_slice11EndianSliceNtNtB4R_9endianity13RunTimeEndianEjEEINtNtB3b_3map11MapConsumerINtNtNtB3b_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB7T_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5x_E0EE0NCB34_s_0INtB7b_13CollectResultB7R_EBaV_E0TBaV_BaV_EE0Bbs_EEB7T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !131, !noundef !5
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB1v_8Registry15in_worker_crossNCINvNtB1x_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3h_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4T_12endian_slice11EndianSliceNtNtB4V_9endianity13RunTimeEndianEjEEINtNtB3f_3map11MapConsumerINtNtNtB3f_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB7X_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5B_E0EE0NCB38_s_0INtB7f_13CollectResultB7V_EBaZ_E0TBaZ_BaZ_EE0EEEB7X_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXsa_NtCs3uS0LcqId4h_5rayon3vecINtB5_13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBV_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB46_12endian_slice11EndianSliceNtNtB48_9endianity13RunTimeEndianEjEEINtNtB2s_3map11MapConsumerINtNtNtB2s_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB7a_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB4O_E0EE0NCB2l_s_0INtB6s_13CollectResultB78_EBac_E0TBac_Bac_EE0EB7a_.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void @_RNvXsa_NtCs3uS0LcqId4h_5rayon3vecINtB5_13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBV_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB46_12endian_slice11EndianSliceNtNtB48_9endianity13RunTimeEndianEjEEINtNtB2s_3map11MapConsumerINtNtNtB2s_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB7a_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB4O_E0EE0NCB2l_s_0INtB6s_13CollectResultB78_EBac_E0TBac_Bac_EE0EB7a_.exit.i.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void @_RNvXsa_NtCs3uS0LcqId4h_5rayon3vecINtB5_13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBV_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB1v_8Registry15in_worker_crossNCINvNtB1x_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3h_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4T_12endian_slice11EndianSliceNtNtB4V_9endianity13RunTimeEndianEjEEINtNtB3f_3map11MapConsumerINtNtNtB3f_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB7X_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5B_E0EE0NCB38_s_0INtB7f_13CollectResultB7V_EBaZ_E0TBaZ_BaZ_EE0EEEB7X_.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB46_12endian_slice11EndianSliceNtNtB48_9endianity13RunTimeEndianEjEEINtNtB2s_3map11MapConsumerINtNtNtB2s_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB7a_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB4O_E0EE0NCB2l_s_0INtB6s_13CollectResultB78_EBac_E0TBac_Bac_EE0EB7a_.exit.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.d, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultTINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEB1K_EEEEB2Q_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.i) #23
          to label %bb.g unwind label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB1v_8Registry15in_worker_crossNCINvNtB1x_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3h_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4T_12endian_slice11EndianSliceNtNtB4V_9endianity13RunTimeEndianEjEEINtNtB3f_3map11MapConsumerINtNtNtB3f_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB7X_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5B_E0EE0NCB38_s_0INtB7f_13CollectResultB7V_EBaZ_E0TBaZ_BaZ_EE0EEEB7X_.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB46_12endian_slice11EndianSliceNtNtB48_9endianity13RunTimeEndianEjEEINtNtB2s_3map11MapConsumerINtNtNtB2s_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB7a_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB4O_E0EE0NCB2l_s_0INtB6s_13CollectResultB78_EBac_E0TBac_Bac_EE0EB7a_.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultTINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEB1K_EEEEB2Q_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.j)
  ret void

bb.f:                                             ; preds = %.body
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.g:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvNtBG_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3d_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4P_12endian_slice11EndianSliceNtNtB4R_9endianity13RunTimeEndianEjEEINtNtB3b_3map11MapConsumerNtNtB3b_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5x_E0EE0NCB34_s_0INtNtNtB8C_11collections11linked_list10LinkedListINtNtB8C_3vec3VecNtB7J_11UnitSummaryEEBao_E0TBao_Bao_EE0BbT_EEB7J_(ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !136, !noundef !5
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB1v_8Registry15in_worker_crossNCINvNtB1x_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3h_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4T_12endian_slice11EndianSliceNtNtB4V_9endianity13RunTimeEndianEjEEINtNtB3f_3map11MapConsumerNtNtB3f_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5B_E0EE0NCB38_s_0INtNtNtB8G_11collections11linked_list10LinkedListINtNtB8G_3vec3VecNtB7N_11UnitSummaryEEBas_E0TBas_Bas_EE0EEEB7N_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXsa_NtCs3uS0LcqId4h_5rayon3vecINtB5_13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBV_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB46_12endian_slice11EndianSliceNtNtB48_9endianity13RunTimeEndianEjEEINtNtB2s_3map11MapConsumerNtNtB2s_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB4O_E0EE0NCB2l_s_0INtNtNtB7T_11collections11linked_list10LinkedListINtNtB7T_3vec3VecNtB70_11UnitSummaryEEB9F_E0TB9F_B9F_EE0EB70_.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke void @_RNvXsa_NtCs3uS0LcqId4h_5rayon3vecINtB5_13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBV_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB46_12endian_slice11EndianSliceNtNtB48_9endianity13RunTimeEndianEjEEINtNtB2s_3map11MapConsumerNtNtB2s_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB4O_E0EE0NCB2l_s_0INtNtNtB7T_11collections11linked_list10LinkedListINtNtB7T_3vec3VecNtB70_11UnitSummaryEEB9F_E0TB9F_B9F_EE0EB70_.exit.i.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke void @_RNvXsa_NtCs3uS0LcqId4h_5rayon3vecINtB5_13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBV_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB1v_8Registry15in_worker_crossNCINvNtB1x_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3h_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4T_12endian_slice11EndianSliceNtNtB4V_9endianity13RunTimeEndianEjEEINtNtB3f_3map11MapConsumerNtNtB3f_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5B_E0EE0NCB38_s_0INtNtNtB8G_11collections11linked_list10LinkedListINtNtB8G_3vec3VecNtB7N_11UnitSummaryEEBas_E0TBas_Bas_EE0EEEB7N_.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB46_12endian_slice11EndianSliceNtNtB48_9endianity13RunTimeEndianEjEEINtNtB2s_3map11MapConsumerNtNtB2s_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB4O_E0EE0NCB2l_s_0INtNtNtB7T_11collections11linked_list10LinkedListINtNtB7T_3vec3VecNtB70_11UnitSummaryEEB9F_E0TB9F_B9F_EE0EB70_.exit.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.d, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultTINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1R_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1K_EEEEB36_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.i) #23
          to label %bb.g unwind label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtB1v_8Registry15in_worker_crossNCINvNtB1x_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3h_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4T_12endian_slice11EndianSliceNtNtB4V_9endianity13RunTimeEndianEjEEINtNtB3f_3map11MapConsumerNtNtB3f_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5B_E0EE0NCB38_s_0INtNtNtB8G_11collections11linked_list10LinkedListINtNtB8G_3vec3VecNtB7N_11UnitSummaryEEBas_E0TBas_Bas_EE0EEEB7N_.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs4_NtCs6o3pVbAMket_10rayon_core8registryNtBK_8Registry15in_worker_crossNCINvNtBM_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB46_12endian_slice11EndianSliceNtNtB48_9endianity13RunTimeEndianEjEEINtNtB2s_3map11MapConsumerNtNtB2s_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB4O_E0EE0NCB2l_s_0INtNtNtB7T_11collections11linked_list10LinkedListINtNtB7T_3vec3VecNtB70_11UnitSummaryEEB9F_E0TB9F_B9F_EE0EB70_.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultTINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1R_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1K_EEEEB36_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.j)
  ret void

bb.f:                                             ; preds = %.body
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.g:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvMs4_NtBG_8registryNtB1P_8Registry15in_worker_crossNCINvNtBG_4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB3d_5slice12IterProducerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEINtNtB3b_8for_each15ForEachConsumerNCINvB4N_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB8d_9endianity13RunTimeEndianEEs_0EE0NCB34_s_0uuE0TuuEE0B9V_EEB4N_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.b = load i64, ptr %i.a, align 8, !range !8, !alias.scope !143, !noundef !5
  %switch.i.i = icmp samesign ult i64 %i.b, 2
  br i1 %switch.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultTuuEEEECslKoDbeUmNq5_14dwarf_validate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !143 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val1.i.i = load ptr, ptr %i.d, align 8, !alias.scope !143, !nonnull !5, !align !9, !noundef !5 ; 5 uses
  %i.e = load ptr, ptr %.val1.i.i, align 8, !invariant.load !5, !noalias !143 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.e(ptr noundef nonnull %.val.i.i)
          to label %bb.d unwind label %bb.f, !noalias !143

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !10, !invariant.load !5, !noalias !143 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultTuuEEEECslKoDbeUmNq5_14dwarf_validate.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !11, !invariant.load !5, !noalias !143
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #25, !noalias !143
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultTuuEEEECslKoDbeUmNq5_14dwarf_validate.exit

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !10, !invariant.load !5, !noalias !143 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate.exit4.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !11, !invariant.load !5, !noalias !143
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #25, !noalias !143
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate.exit4.i.i.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate.exit4.i.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.k

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultTuuEEEECslKoDbeUmNq5_14dwarf_validate.exit: ; preds = %bb.a, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4y_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB6a_12endian_slice11EndianSliceNtNtB6c_9endianity13RunTimeEndianEjEEINtNtB4w_3map11MapConsumerNtNtB4w_6extend15ListVecConsumerNCINvB3E_13validate_infoQINtNtNtNtB2p_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6S_E0EEs_0E0B2i_EEB3E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !152, !noundef !5
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCs6o3pVbAMket_10rayon_core4join12join_context6call_bINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB2s_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4B_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB6d_12endian_slice11EndianSliceNtNtB6f_9endianity13RunTimeEndianEjEEINtNtB4z_3map11MapConsumerNtNtB4z_6extend15ListVecConsumerNCINvB3H_13validate_infoQINtNtNtNtB2s_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6V_E0EEs_0E0EEEB3H_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RNvXsa_NtCs3uS0LcqId4h_5rayon3vecINtB5_13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBV_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCs6o3pVbAMket_10rayon_core4join12join_context6call_bINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB2s_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4B_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB6d_12endian_slice11EndianSliceNtNtB6f_9endianity13RunTimeEndianEjEEINtNtB4z_3map11MapConsumerNtNtB4z_6extend15ListVecConsumerNCINvB3H_13validate_infoQINtNtNtNtB2s_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6V_E0EEs_0E0EEEB3H_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEEB35_(ptr noalias nofree noundef align 8 dereferenceable(32) %0) #23
          to label %common.resume unwind label %bb.k

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCs6o3pVbAMket_10rayon_core4join12join_context6call_bINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB2s_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4B_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB6d_12endian_slice11EndianSliceNtNtB6f_9endianity13RunTimeEndianEjEEINtNtB4z_3map11MapConsumerNtNtB4z_6extend15ListVecConsumerNCINvB3H_13validate_infoQINtNtNtNtB2s_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6V_E0EEs_0E0EEEB3H_.exit: ; preds = %bb.a, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %i.f = load i64, ptr %0, align 8, !range !8, !alias.scope !155, !noundef !5
  switch i64 %i.f, label %bb.d [
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEEB35_.exit
    i64 1, label %bb.j
  ]

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCs6o3pVbAMket_10rayon_core4join12join_context6call_bINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB2s_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4B_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB6d_12endian_slice11EndianSliceNtNtB6f_9endianity13RunTimeEndianEjEEINtNtB4z_3map11MapConsumerNtNtB4z_6extend15ListVecConsumerNCINvB3H_13validate_infoQINtNtNtNtB2s_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6V_E0EEs_0E0EEEB3H_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !155 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.h, align 8, !alias.scope !155, !nonnull !5, !align !9, !noundef !5 ; 5 uses
  %i.i = load ptr, ptr %.val1.i.i, align 8, !invariant.load !5, !noalias !155 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.i(ptr noundef nonnull %.val.i.i)
          to label %bb.f unwind label %bb.h, !noalias !155

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !10, !invariant.load !5, !noalias !155 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEEB35_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !11, !invariant.load !5, !noalias !155
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #25, !noalias !155
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1Q_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEEB35_.exit

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !10, !invariant.load !5, !noalias !155 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %common.resume, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !11, !invariant.load !5, !noalias !155
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.q, i64 noundef range(i64 1, 536870913) %i.t) #25, !noalias !155
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
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvNvNtB2p_8plumbing24bridge_producer_consumer6helperINtNtB2r_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB5w_12endian_slice11EndianSliceNtNtB5y_9endianity13RunTimeEndianEjEEINtNtB2p_3map11MapConsumerINtB2l_15CollectConsumerB3m_ENCINvB3o_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6e_E0EEs_0E0B2i_EEB3o_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !164, !noundef !5
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
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEB2P_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.e) #23
          to label %common.resume unwind label %bb.k

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCs6o3pVbAMket_10rayon_core4join12join_context6call_bINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvNvNtB2s_8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB5z_12endian_slice11EndianSliceNtNtB5B_9endianity13RunTimeEndianEjEEINtNtB2s_3map11MapConsumerINtB2o_15CollectConsumerB3p_ENCINvB3r_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6h_E0EEs_0E0EEEB3r_.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %i.g = load i64, ptr %i.f, align 8, !range !8, !alias.scope !167, !noundef !5
  switch i64 %i.g, label %bb.d [
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEB2P_.exit
    i64 1, label %bb.j
  ]

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionNCINvNvNtCs6o3pVbAMket_10rayon_core4join12join_context6call_bINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvNvNtB2s_8plumbing24bridge_producer_consumer6helperINtNtB2u_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB5z_12endian_slice11EndianSliceNtNtB5B_9endianity13RunTimeEndianEjEEINtNtB2s_3map11MapConsumerINtB2o_15CollectConsumerB3p_ENCINvB3r_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6h_E0EEs_0E0EEEB3r_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val.i.i = load ptr, ptr %i.h, align 8, !alias.scope !167 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1.i.i = load ptr, ptr %i.i, align 8, !alias.scope !167, !nonnull !5, !align !9, !noundef !5 ; 5 uses
  %i.j = load ptr, ptr %.val1.i.i, align 8, !invariant.load !5, !noalias !167 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.j(ptr noundef nonnull %.val.i.i)
          to label %bb.f unwind label %bb.h, !noalias !167

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !10, !invariant.load !5, !noalias !167 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEB2P_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !11, !invariant.load !5, !noalias !167
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #25, !noalias !167
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEEB2P_.exit

bb.h:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !10, !invariant.load !5, !noalias !167 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %common.resume, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !11, !invariant.load !5, !noalias !167
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.r, i64 noundef range(i64 1, 536870913) %i.u) #25, !noalias !167
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
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_buNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB2u_5slice12IterProducerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEINtNtB2s_8for_each15ForEachConsumerNCINvB44_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB7u_9endianity13RunTimeEndianEEs_0EEs_0E0uEEB44_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %i.b = load i64, ptr %i.a, align 8, !range !8, !alias.scope !174, !noundef !5
  %switch.i.i = icmp samesign ult i64 %i.b, 2
  br i1 %switch.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultuEEECslKoDbeUmNq5_14dwarf_validate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !174 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val1.i.i = load ptr, ptr %i.d, align 8, !alias.scope !174, !nonnull !5, !align !9, !noundef !5 ; 5 uses
  %i.e = load ptr, ptr %.val1.i.i, align 8, !invariant.load !5, !noalias !174 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.e(ptr noundef nonnull %.val.i.i)
          to label %bb.d unwind label %bb.f, !noalias !174

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !10, !invariant.load !5, !noalias !174 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultuEEECslKoDbeUmNq5_14dwarf_validate.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !11, !invariant.load !5, !noalias !174
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #25, !noalias !174
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultuEEECslKoDbeUmNq5_14dwarf_validate.exit

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !10, !invariant.load !5, !noalias !174 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate.exit4.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !11, !invariant.load !5, !noalias !174
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #25, !noalias !174
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate.exit4.i.i.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate.exit4.i.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.k

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs6o3pVbAMket_10rayon_core3job9JobResultuEEECslKoDbeUmNq5_14dwarf_validate.exit: ; preds = %bb.a, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list4NodeINtNtBI_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEB1P_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1h_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1a_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXs7_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtBK_10LinkedListppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtBO_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENtNtBO_5alloc6GlobalEEB2N_(ptr nofree captures(none) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.c = load ptr, ptr %.0.val, align 8, !noundef !5 ; 2 uses
  %.not6.i = icmp eq ptr %i.c, null
  br i1 %.not6.i, label %_RNvXNvXs7_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB8_10LinkedListppENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropINtB2_9DropGuardINtNtBc_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENtNtBc_5alloc6GlobalEB1h_4dropB2x_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtB12_11collections11linked_list4NodeINtNtB12_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEERNtNtB12_5alloc6GlobalEEEB2v_.exit8.i
  %i.d = phi ptr [ %i.m, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtB12_11collections11linked_list4NodeINtNtB12_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEERNtNtB12_5alloc6GlobalEEEB2v_.exit8.i ], [ %i.c, %bb.a ] ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5 ; 3 uses
  store ptr %i.f, ptr %.0.val, align 8
  %.not2.i = icmp eq ptr %i.f, null
  br i1 %.not2.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.g, align 8
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  store ptr null, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = load i64, ptr %i.b, align 8, !noundef !5
  %i.i = add i64 %i.h, -1
  store i64 %i.i, ptr %i.b, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1a_.exit.i.i.i6.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1a_.exit.i.i.i6.i: ; preds = %bb.d
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtB12_11collections11linked_list4NodeINtNtB12_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEERNtNtB12_5alloc6GlobalEEEB2v_.exit8.i unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1a_.exit.i.i.i6.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %eh.lpad-body.i.i5.i = phi { ptr, i32 } [ %i.l, %bb.g ], [ %i.j, %bb.e ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 40, i64 noundef 8) #25
  resume { ptr, i32 } %eh.lpad-body.i.i5.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtB12_11collections11linked_list4NodeINtNtB12_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEERNtNtB12_5alloc6GlobalEEEB2v_.exit8.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1a_.exit.i.i.i6.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 40, i64 noundef 8) #25
  %i.m = load ptr, ptr %.0.val, align 8, !noundef !5 ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_RNvXNvXs7_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB8_10LinkedListppENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropINtB2_9DropGuardINtNtBc_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENtNtBc_5alloc6GlobalEB1h_4dropB2x_.exit, label %.lr.ph.i

_RNvXNvXs7_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB8_10LinkedListppENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropINtB2_9DropGuardINtNtBc_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENtNtBc_5alloc6GlobalEB1h_4dropB2x_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtB12_11collections11linked_list4NodeINtNtB12_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEERNtNtB12_5alloc6GlobalEEEB2v_.exit8.i, %bb.a
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
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
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
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB2n_12endian_slice11EndianSliceNtNtB2p_9endianity13RunTimeEndianEjEEINtNtBK_3map11MapConsumerNtNtBK_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB35_E0EE0EB5f_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #1 {
bb.a:
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCskKLDkoKarTP_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef %1, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %2, i64 %1, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardTQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtB6_2io5stdio6StdoutEjEENCNvMs9_BZ_BW_3new0ECslKoDbeUmNq5_14dwarf_validate(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 17)) %0, i1 noundef zeroext %1, i8 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #5 {
bb.a:
  %spec.select = zext i1 %1 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtCs3uS0LcqId4h_5rayon4iter3mapINtB6_3MapINtNtBa_3vec8IntoIterINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB1d_12endian_slice11EndianSliceNtNtB1f_9endianity13RunTimeEndianEjEENCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB1V_E0ENtB8_16ParallelIterator15drive_unindexedINtNtNtB8_7collect8consumer15CollectConsumerNtB3b_11UnitSummaryEEB3b_:bb.a
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %3, ptr %i.e, align 8
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvXs2_NtCs3uS0LcqId4h_5rayon3vecINtB6_8IntoIterINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBQ_12endian_slice11EndianSliceNtNtBS_9endianity13RunTimeEndianEjEENtNtB8_4iter16ParallelIterator15drive_unindexedINtNtB2J_3map11MapConsumerINtNtNtB2J_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB4D_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB1y_E0EEB4D_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtCs3uS0LcqId4h_5rayon4iter3mapINtB6_3MapINtNtBa_3vec8IntoIterINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB1d_12endian_slice11EndianSliceNtNtB1f_9endianity13RunTimeEndianEjEENCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB1V_E0ENtB8_16ParallelIterator15drive_unindexedNtNtB8_6extend15ListVecConsumerEB3b_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvXs2_NtCs3uS0LcqId4h_5rayon3vecINtB6_8IntoIterINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBQ_12endian_slice11EndianSliceNtNtBS_9endianity13RunTimeEndianEjEENtNtB8_4iter16ParallelIterator15drive_unindexedINtNtB2J_3map11MapConsumerNtNtB2J_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB1y_E0EEB4t_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtNtCs3uS0LcqId4h_5rayon4iter3mapINtB6_9MapFolderINtNtB8_6extend13ListVecFolderNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB1p_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB4g_9endianity13RunTimeEndianEE0EINtNtB8_8plumbing6FolderINtNtB4e_4unit10UnitHeaderB49_jEE12consume_iterINtNtBa_3vec10SliceDrainB65_EEB1p_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !9, !noundef !5
  store ptr %2, ptr %i.a, align 8, !alias.scope !177
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %3, ptr %i.f, align 8, !alias.scope !177
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.g, align 8, !alias.scope !177
  call void @_RINvXs0_NtNtCs3uS0LcqId4h_5rayon4iter6extendINtB6_13ListVecFolderNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEINtNtB8_8plumbing6FolderB11_E12consume_iterINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtBa_3vec10SliceDrainINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB3J_12endian_slice11EndianSliceNtNtB3L_9endianity13RunTimeEndianEjEERNCINvB13_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB4r_E0EEB13_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtNtCs3uS0LcqId4h_5rayon4iter3mapINtB6_9MapFolderINtNtNtB8_7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB1B_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB4s_9endianity13RunTimeEndianEE0EINtNtB8_8plumbing6FolderINtNtB4q_4unit10UnitHeaderB4l_jEE12consume_iterINtNtBa_3vec10SliceDrainB6h_EEB1B_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = load ptr, ptr %1, align 8, !nonnull !5, !align !9, !noundef !5
  store ptr %2, ptr %i.a, align 8, !alias.scope !180
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %3, ptr %i.f, align 8, !alias.scope !180
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.g, align 8, !alias.scope !180
  call void @_RINvYINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEINtNtBa_8plumbing6FolderB17_E12consume_iterINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtBc_3vec10SliceDrainINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB3P_12endian_slice11EndianSliceNtNtB3R_9endianity13RunTimeEndianEjEERNCINvB19_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB4x_E0EEB19_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs6o3pVbAMket_10rayon_core4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB2C_12endian_slice11EndianSliceNtNtB2E_9endianity13RunTimeEndianEjEEINtNtBY_3map11MapConsumerINtNtNtBY_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB5E_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB3k_E0EE0NCBR_s_0INtB4X_13CollectResultB5C_EB8F_E0B5E_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(120) %1, ptr noundef nonnull align 128 %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 16               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [128 x i8], align 8               ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [128 x i8], align 8               ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 16               ; 9 uses
  %i.j = alloca [128 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.m = load i64, ptr %i.l, align 128, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 96 ; 2 uses
  store ptr %i.k, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 104 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.q = invoke noundef zeroext i1 @_RNvMs4_NtCs8zAMriesZVa_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs6o3pVbAMket_10rayon_core3job6JobRefE8is_emptyCslKoDbeUmNq5_14dwarf_validate(ptr noundef nonnull align 8 %i.p)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.i, %bb.c, %.sink.split.i
  %.sroa.020.1 = phi i1 [ false, %bb.i ], [ true, %.sink.split.i ], [ true, %bb.b ], [ true, %bb.a ], [ true, %bb.c ]
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCs8zAMriesZVa_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs6o3pVbAMket_10rayon_core3job6JobRefE4pushCslKoDbeUmNq5_14dwarf_validate(ptr noundef nonnull align 8 %i.p, ptr noundef nonnull @_RNvXs2_NtCs6o3pVbAMket_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB53_12endian_slice11EndianSliceNtNtB55_9endianity13RunTimeEndianEjEEINtNtB1W_3map11MapConsumerINtB1S_15CollectConsumerB2T_ENCINvB2V_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5L_E0EEs_0E0B1P_ENtB5_3Job7executeB2V_, ptr noundef nonnull %i.j)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.k, align 16, !nonnull !5, !noundef !5 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 472
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 496
  %i.v = invoke noundef i64 @_RINvMs_NtNtCs6o3pVbAMket_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECslKoDbeUmNq5_14dwarf_validate(ptr noundef nonnull align 8 %i.u)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.w = and i64 %i.v, 65535                      ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RNvMNtCs6o3pVbAMket_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  br i1 %i.q, label %bb.e, label %.sink.split.i, !prof !6

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  invoke void @_RNvMNtCs6o3pVbAMket_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.t, i32 noundef 1)
          to label %_RNvMNtCs6o3pVbAMket_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.e:                                             ; preds = %bb.d
  %i.y = lshr i64 %i.v, 16
  %i.z = and i64 %i.y, 65535
  %i.aa = icmp eq i64 %i.z, %i.w
  br i1 %i.aa, label %.sink.split.i, label %_RNvMNtCs6o3pVbAMket_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !7

_RNvMNtCs6o3pVbAMket_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.e, %.noexc, %.sink.split.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.059.0.copyload = load ptr, ptr %i.ab, align 8, !nonnull !5, !noundef !5
  %.sroa.4.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx60, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.5.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx61, align 8
  %.sroa.6.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx62, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, i64 24, i1 false)
  %i.ac = inttoptr i64 %.sroa.5.0.copyload to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ad = load i64, ptr %.sroa.059.0.copyload, align 8, !noalias !190, !noundef !5
  %i.ae = load i64, ptr %.sroa.4.0.copyload, align 8, !noalias !190, !noundef !5
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !190, !noundef !5
  invoke void @_RINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB1J_12endian_slice11EndianSliceNtNtB1L_9endianity13RunTimeEndianEjEEINtNtB6_3map11MapConsumerINtNtNtB6_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB4L_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB2r_E0EEB4L_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.ad, i1 noundef zeroext false, i64 noundef %i.ae, i64 noundef %i.ag, ptr noalias nofree noundef nonnull align 8 %i.ac, i64 noundef %.sroa.6.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_RNvMNtCs6o3pVbAMket_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  %i.aj = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ai)
          to label %bb.i unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #24
  unreachable

bb.h:                                             ; preds = %_RNvMNtCs6o3pVbAMket_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !190
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.13.0.copyload58 = load i64, ptr %.sroa.13.0..sroa_idx, align 16
  %i.al = load <2 x ptr>, ptr %i.b, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store <2 x ptr> %i.al, ptr %i.i, align 16
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.13.0.copyload58, ptr %.sroa.513.0..sroa_idx, align 16
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.ap = extractvalue { ptr, ptr } %i.aj, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  %i.aq = extractvalue { ptr, ptr } %i.aj, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aq) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvNtCs6o3pVbAMket_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.n, ptr noundef nonnull %i.ap, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aq) #27
          to label %bb.aa unwind label %.thread

bb.j:                                             ; preds = %bb.h, %bb.p
  %i.ar = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.as = icmp eq i64 %i.ar, 3
  br i1 %i.as, label %.loopexit86, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = invoke { ptr, ptr } @_RNvMs4_NtCs8zAMriesZVa_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs6o3pVbAMket_10rayon_core3job6JobRefE3popCslKoDbeUmNq5_14dwarf_validate(ptr noundef nonnull align 8 %i.p)
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc49:                                         ; preds = %bb.k
  %i.au = extractvalue { ptr, ptr } %i.at, 0
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCs6o3pVbAMket_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.preheader.i:                                     ; preds = %.noexc49, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs8_NtCs8zAMriesZVa_15crossbeam_deque5dequeINtB5_7StealerNtNtCs6o3pVbAMket_10rayon_core3job6JobRefE5stealCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.am)
          to label %.noexc50 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc50:                                         ; preds = %.preheader.i
  %i.av = load i64, ptr %i.c, align 8, !range !8, !noundef !5
  switch i64 %i.av, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.l
    i64 2, label %bb.m
  ]

default.unreachable:                              ; preds = %.noexc50
  unreachable

bb.l:                                             ; preds = %.noexc50
  %i.aw = load ptr, ptr %i.an, align 8, !nonnull !5, !noundef !5
  %i.ax = load ptr, ptr %i.ao, align 8, !noundef !5
  br label %.loopexit.i

bb.m:                                             ; preds = %.noexc50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc50, %bb.l
  %.sroa.5.0.i = phi ptr [ %i.ax, %bb.l ], [ undef, %.noexc50 ]
  %.sroa.0.0.i = phi ptr [ %i.aw, %bb.l ], [ null, %.noexc50 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ay = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.az = insertvalue { ptr, ptr } %i.ay, ptr %.sroa.5.0.i, 1
  br label %_RNvMs8_NtCs6o3pVbAMket_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.loopexit86:                                      ; preds = %bb.j, %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %i.j, i64 128, i1 false)
  invoke void @_RNvMs1_NtCs6o3pVbAMket_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB53_12endian_slice11EndianSliceNtNtB55_9endianity13RunTimeEndianEjEEINtNtB1W_3map11MapConsumerINtB1S_15CollectConsumerB2T_ENCINvB2V_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5L_E0EEs_0E0B1P_E11into_resultB2V_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(128) %i.d)
          to label %bb.y unwind label %bb.x

_RNvMs8_NtCs6o3pVbAMket_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %.loopexit.i, %.noexc49
  %.merged.i = phi { ptr, ptr } [ %i.at, %.noexc49 ], [ %i.az, %.loopexit.i ] ; 2 uses
  %i.ba = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.bb = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.ba, null                 ; 2 uses
  br i1 %.not, label %bb.v, label %bb.n

bb.n:                                             ; preds = %_RNvMs8_NtCs6o3pVbAMket_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bc = icmp eq ptr %i.j, %i.bb
  br i1 %i.bc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bd = invoke noundef i64 @_RNvYFUPuEuNtNtNtCskKLDkoKarTP_4core3ops8function5FnPtr4addrCslKoDbeUmNq5_14dwarf_validate(ptr noundef nonnull @_RNvXs2_NtCs6o3pVbAMket_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB53_12endian_slice11EndianSliceNtNtB55_9endianity13RunTimeEndianEjEEINtNtB1W_3map11MapConsumerINtB1S_15CollectConsumerB2T_ENCINvB2V_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5L_E0EEs_0E0B1P_ENtB5_3Job7executeB2V_)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.n, %bb.r
  invoke void %i.ba(ptr noundef %i.bb)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.o
  %i.be = invoke noundef i64 @_RNvYFUPuEuNtNtNtCskKLDkoKarTP_4core3ops8function5FnPtr4addrCslKoDbeUmNq5_14dwarf_validate(ptr noundef nonnull %i.ba)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.bf = icmp eq i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.s, label %bb.p

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.g, ptr noundef nonnull align 8 dereferenceable(128) %i.j, i64 128, i1 false)
  invoke void @_RNvMs1_NtCs6o3pVbAMket_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB53_12endian_slice11EndianSliceNtNtB55_9endianity13RunTimeEndianEjEEINtNtB1W_3map11MapConsumerINtB1S_15CollectConsumerB2T_ENCINvB2V_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB5L_E0EEs_0E0B1P_E10run_inlineB2V_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(128) %i.g, i1 noundef zeroext false)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.v:                                             ; preds = %_RNvMs8_NtCs6o3pVbAMket_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bh = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bi = icmp eq i64 %i.bh, 3
  br i1 %i.bi, label %.loopexit86, label %bb.w, !prof !6

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMs8_NtCs6o3pVbAMket_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit86 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %.loopexit86
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumerINtB5_13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB2n_12endian_slice11EndianSliceNtNtB2p_9endianity13RunTimeEndianEjEEINtNtBK_3map11MapConsumerINtNtNtBK_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB5p_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB35_E0EE0EB5p_.exit unwind label %bb.z

bb.y:                                             ; preds = %.loopexit86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.u

bb.z:                                             ; preds = %bb.ad, %.loopexit.split-lp, %bb.x, %bb.ac
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.o, %bb.p, %bb.q, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.w, %bb.s
  %lpad.loopexit.split-lp88 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp
  %.sroa.019.2 = phi i1 [ %.not, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp88, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke void @_RNvXs2_NtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumerINtB5_13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1H_.exit53 unwind label %bb.z

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1H_.exit53: ; preds = %.loopexit.split-lp
  br i1 %.sroa.019.2, label %bb.ac, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB2n_12endian_slice11EndianSliceNtNtB2p_9endianity13RunTimeEndianEjEEINtNtBK_3map11MapConsumerINtNtNtBK_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB5p_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB35_E0EE0EB5p_.exit

bb.aa:                                            ; preds = %bb.i
  unreachable

bb.ab:                                            ; preds = %bb.ac
  br i1 %.sroa.020.067, label %bb.ad, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB2n_12endian_slice11EndianSliceNtNtB2p_9endianity13RunTimeEndianEjEEINtNtBK_3map11MapConsumerINtNtNtBK_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB5p_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB35_E0EE0EB5p_.exit

bb.ac:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1H_.exit53, %.thread
  %.pn4669 = phi { ptr, i32 } [ %i.r, %.thread ], [ %lpad.phi, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1H_.exit53 ] ; 2 uses
  %.sroa.020.067 = phi i1 [ %.sroa.020.1, %.thread ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1H_.exit53 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvNvNtB2p_8plumbing24bridge_producer_consumer6helperINtNtB2r_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB5w_12endian_slice11EndianSliceNtNtB5y_9endianity13RunTimeEndianEjEEINtNtB2p_3map11MapConsumerINtB2l_15CollectConsumerB3m_ENCINvB3o_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6e_E0EEs_0E0B2i_EEB3o_(ptr noalias nofree noundef align 8 dereferenceable(128) %i.j) #23
          to label %bb.ab unwind label %bb.z

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB2n_12endian_slice11EndianSliceNtNtB2p_9endianity13RunTimeEndianEjEEINtNtBK_3map11MapConsumerINtNtNtBK_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB5p_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB35_E0EE0EB5p_.exit: ; preds = %bb.x, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1H_.exit53, %bb.ad, %bb.ab
  %.pn466885 = phi { ptr, i32 } [ %.pn4669, %bb.ad ], [ %.pn4669, %bb.ab ], [ %lpad.phi, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs3uS0LcqId4h_5rayon4iter7collect8consumer13CollectResultNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEB1H_.exit53 ], [ %i.bj, %bb.x ]
  resume { ptr, i32 } %.pn466885

bb.ad:                                            ; preds = %bb.ab
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_RNvXsa_NtCs3uS0LcqId4h_5rayon3vecINtB5_13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBV_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB2n_12endian_slice11EndianSliceNtNtB2p_9endianity13RunTimeEndianEjEEINtNtBK_3map11MapConsumerINtNtNtBK_7collect8consumer15CollectConsumerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryENCINvB5p_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB35_E0EE0EB5p_.exit unwind label %bb.z
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs6o3pVbAMket_10rayon_core4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB2C_12endian_slice11EndianSliceNtNtB2E_9endianity13RunTimeEndianEjEEINtNtBY_3map11MapConsumerNtNtBY_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB3k_E0EE0NCBR_s_0INtNtNtB6n_11collections11linked_list10LinkedListINtNtB6n_3vec3VecNtB5u_11UnitSummaryEEB88_E0B5u_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(88) %1, ptr noundef nonnull align 128 %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [112 x i8], align 8               ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [112 x i8], align 8               ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 16               ; 9 uses
  %i.i = alloca [112 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.m = load i64, ptr %i.l, align 128, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 80 ; 2 uses
  store ptr %i.k, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 88 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 0, ptr %i.i, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.p = invoke noundef zeroext i1 @_RNvMs4_NtCs8zAMriesZVa_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs6o3pVbAMket_10rayon_core3job6JobRefE8is_emptyCslKoDbeUmNq5_14dwarf_validate(ptr noundef nonnull align 8 %i.o)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.i, %bb.c, %.sink.split.i
  %.sroa.020.1 = phi i1 [ false, %bb.i ], [ true, %.sink.split.i ], [ true, %bb.b ], [ true, %bb.a ], [ true, %bb.c ]
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCs8zAMriesZVa_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs6o3pVbAMket_10rayon_core3job6JobRefE4pushCslKoDbeUmNq5_14dwarf_validate(ptr noundef nonnull align 8 %i.o, ptr noundef nonnull @_RNvXs2_NtCs6o3pVbAMket_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB45_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB5H_12endian_slice11EndianSliceNtNtB5J_9endianity13RunTimeEndianEjEEINtNtB43_3map11MapConsumerNtNtB43_6extend15ListVecConsumerNCINvB3b_13validate_infoQINtNtNtNtB1W_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6p_E0EEs_0E0B1P_ENtB5_3Job7executeB3b_, ptr noundef nonnull %i.i)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.k, align 16, !nonnull !5, !noundef !5 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 472
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 496
  %i.u = invoke noundef i64 @_RINvMs_NtNtCs6o3pVbAMket_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyECslKoDbeUmNq5_14dwarf_validate(ptr noundef nonnull align 8 %i.t)
          to label %.noexc unwind label %.thread  ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.v = and i64 %i.u, 65535                      ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RNvMNtCs6o3pVbAMket_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  br i1 %i.p, label %bb.e, label %.sink.split.i, !prof !6

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  invoke void @_RNvMNtCs6o3pVbAMket_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.s, i32 noundef 1)
          to label %_RNvMNtCs6o3pVbAMket_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit unwind label %.thread

bb.e:                                             ; preds = %bb.d
  %i.x = lshr i64 %i.u, 16
  %i.y = and i64 %i.x, 65535
  %i.z = icmp eq i64 %i.y, %i.v
  br i1 %i.z, label %.sink.split.i, label %_RNvMNtCs6o3pVbAMket_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !7

_RNvMNtCs6o3pVbAMket_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.e, %.noexc, %.sink.split.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.059.0.copyload = load ptr, ptr %i.aa, align 8, !nonnull !5, !noundef !5
  %.sroa.4.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx60, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.5.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx61, align 8
  %.sroa.6.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx62, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  %i.ab = inttoptr i64 %.sroa.5.0.copyload to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = load i64, ptr %.sroa.059.0.copyload, align 8, !noalias !200, !noundef !5
  %i.ad = load i64, ptr %.sroa.4.0.copyload, align 8, !noalias !200, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !noalias !200, !noundef !5
  invoke void @_RINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB1J_12endian_slice11EndianSliceNtNtB1L_9endianity13RunTimeEndianEjEEINtNtB6_3map11MapConsumerNtNtB6_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB2r_E0EEB4B_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.ac, i1 noundef zeroext false, i64 noundef %i.ad, i64 noundef %i.af, ptr noalias nofree noundef nonnull align 8 %i.ab, i64 noundef %.sroa.6.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.7.0.copyload)
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
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #24
  unreachable

bb.h:                                             ; preds = %_RNvMNtCs6o3pVbAMket_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.13.0.copyload58 = load i64, ptr %.sroa.13.0..sroa_idx, align 16
  %i.ak = load <2 x ptr>, ptr %i.a, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store <2 x ptr> %i.ak, ptr %i.h, align 16
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.13.0.copyload58, ptr %.sroa.513.0..sroa_idx, align 16
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.ao = extractvalue { ptr, ptr } %i.ai, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  %i.ap = extractvalue { ptr, ptr } %i.ai, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvNtCs6o3pVbAMket_10rayon_core4join23join_recover_from_panic(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %i.n, ptr noundef nonnull %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ap) #27
          to label %bb.aa unwind label %.thread

bb.j:                                             ; preds = %bb.h, %bb.p
  %i.aq = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.ar = icmp eq i64 %i.aq, 3
  br i1 %i.ar, label %.loopexit86, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = invoke { ptr, ptr } @_RNvMs4_NtCs8zAMriesZVa_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs6o3pVbAMket_10rayon_core3job6JobRefE3popCslKoDbeUmNq5_14dwarf_validate(ptr noundef nonnull align 8 %i.o)
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc49:                                         ; preds = %bb.k
  %i.at = extractvalue { ptr, ptr } %i.as, 0
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCs6o3pVbAMket_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.preheader.i:                                     ; preds = %.noexc49, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs8_NtCs8zAMriesZVa_15crossbeam_deque5dequeINtB5_7StealerNtNtCs6o3pVbAMket_10rayon_core3job6JobRefE5stealCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.al)
          to label %.noexc50 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc50:                                         ; preds = %.preheader.i
  %i.au = load i64, ptr %i.b, align 8, !range !8, !noundef !5
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc50, %bb.l
  %.sroa.5.0.i = phi ptr [ %i.aw, %bb.l ], [ undef, %.noexc50 ]
  %.sroa.0.0.i = phi ptr [ %i.av, %bb.l ], [ null, %.noexc50 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ax = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.ay = insertvalue { ptr, ptr } %i.ax, ptr %.sroa.5.0.i, 1
  br label %_RNvMs8_NtCs6o3pVbAMket_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.loopexit86:                                      ; preds = %bb.j, %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.c, ptr noundef nonnull align 8 dereferenceable(112) %i.i, i64 112, i1 false)
  invoke void @_RNvMs1_NtCs6o3pVbAMket_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB45_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB5H_12endian_slice11EndianSliceNtNtB5J_9endianity13RunTimeEndianEjEEINtNtB43_3map11MapConsumerNtNtB43_6extend15ListVecConsumerNCINvB3b_13validate_infoQINtNtNtNtB1W_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6p_E0EEs_0E0B1P_E11into_resultB3b_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.c)
          to label %bb.y unwind label %bb.x

_RNvMs8_NtCs6o3pVbAMket_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %.loopexit.i, %.noexc49
  %.merged.i = phi { ptr, ptr } [ %i.as, %.noexc49 ], [ %i.ay, %.loopexit.i ] ; 2 uses
  %i.az = extractvalue { ptr, ptr } %.merged.i, 0 ; 3 uses
  %i.ba = extractvalue { ptr, ptr } %.merged.i, 1 ; 2 uses
  %.not = icmp eq ptr %i.az, null                 ; 2 uses
  br i1 %.not, label %bb.v, label %bb.n

bb.n:                                             ; preds = %_RNvMs8_NtCs6o3pVbAMket_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bb = icmp eq ptr %i.i, %i.ba
  br i1 %i.bb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bc = invoke noundef i64 @_RNvYFUPuEuNtNtNtCskKLDkoKarTP_4core3ops8function5FnPtr4addrCslKoDbeUmNq5_14dwarf_validate(ptr noundef nonnull @_RNvXs2_NtCs6o3pVbAMket_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB45_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB5H_12endian_slice11EndianSliceNtNtB5J_9endianity13RunTimeEndianEjEEINtNtB43_3map11MapConsumerNtNtB43_6extend15ListVecConsumerNCINvB3b_13validate_infoQINtNtNtNtB1W_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6p_E0EEs_0E0B1P_ENtB5_3Job7executeB3b_)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.n, %bb.r
  invoke void %i.az(ptr noundef %i.ba)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.o
  %i.bd = invoke noundef i64 @_RNvYFUPuEuNtNtNtCskKLDkoKarTP_4core3ops8function5FnPtr4addrCslKoDbeUmNq5_14dwarf_validate(ptr noundef nonnull %i.az)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.be = icmp eq i64 %i.bc, %i.bd
  br i1 %i.be, label %bb.s, label %bb.p

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.f, ptr noundef nonnull align 8 dereferenceable(112) %i.i, i64 112, i1 false)
  invoke void @_RNvMs1_NtCs6o3pVbAMket_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB1W_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB45_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB5H_12endian_slice11EndianSliceNtNtB5J_9endianity13RunTimeEndianEjEEINtNtB43_3map11MapConsumerNtNtB43_6extend15ListVecConsumerNCINvB3b_13validate_infoQINtNtNtNtB1W_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6p_E0EEs_0E0B1P_E10run_inlineB3b_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.f, i1 noundef zeroext false)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.v:                                             ; preds = %_RNvMs8_NtCs6o3pVbAMket_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.bg = load atomic i64, ptr %.sroa.4.0..sroa_idx acquire, align 8
  %i.bh = icmp eq i64 %i.bg, 3
  br i1 %i.bh, label %.loopexit86, label %bb.w, !prof !6

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMs8_NtCs6o3pVbAMket_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %2, ptr noundef nonnull align 8 %.sroa.4.0..sroa_idx)
          to label %.loopexit86 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %.loopexit86
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs7_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB2n_12endian_slice11EndianSliceNtNtB2p_9endianity13RunTimeEndianEjEEINtNtBK_3map11MapConsumerNtNtBK_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB35_E0EE0EB5f_.exit unwind label %bb.z

bb.y:                                             ; preds = %.loopexit86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.u

bb.z:                                             ; preds = %bb.ad, %.loopexit.split-lp, %bb.x, %bb.ac
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader.i, %bb.o, %bb.p, %bb.q, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.w, %bb.s
  %lpad.loopexit.split-lp88 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp
  %.sroa.019.2 = phi i1 [ %.not, %.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp88, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke void @_RNvXs7_NtNtCsexYYUdYSQU6_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEB1W_.exit53 unwind label %bb.z

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEB1W_.exit53: ; preds = %.loopexit.split-lp
  br i1 %.sroa.019.2, label %bb.ac, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB2n_12endian_slice11EndianSliceNtNtB2p_9endianity13RunTimeEndianEjEEINtNtBK_3map11MapConsumerNtNtBK_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB35_E0EE0EB5f_.exit

bb.aa:                                            ; preds = %bb.i
  unreachable

bb.ab:                                            ; preds = %bb.ac
  br i1 %.sroa.020.067, label %bb.ad, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB2n_12endian_slice11EndianSliceNtNtB2p_9endianity13RunTimeEndianEjEEINtNtBK_3map11MapConsumerNtNtBK_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB35_E0EE0EB5f_.exit

bb.ac:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEB1W_.exit53, %.thread
  %.pn4669 = phi { ptr, i32 } [ %i.q, %.thread ], [ %lpad.phi, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEB1W_.exit53 ] ; 2 uses
  %.sroa.020.067 = phi i1 [ %.sroa.020.1, %.thread ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEB1W_.exit53 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6o3pVbAMket_10rayon_core3job8StackJobNtNtBG_5latch9SpinLatchNCINvNvNtBG_4join12join_context6call_bINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtB2p_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEENCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4y_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB6a_12endian_slice11EndianSliceNtNtB6c_9endianity13RunTimeEndianEjEEINtNtB4w_3map11MapConsumerNtNtB4w_6extend15ListVecConsumerNCINvB3E_13validate_infoQINtNtNtNtB2p_2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB6S_E0EEs_0E0B2i_EEB3E_(ptr noalias nofree noundef align 8 dereferenceable(112) %i.i) #23
          to label %bb.ab unwind label %bb.z

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB2n_12endian_slice11EndianSliceNtNtB2p_9endianity13RunTimeEndianEjEEINtNtBK_3map11MapConsumerNtNtBK_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB35_E0EE0EB5f_.exit: ; preds = %bb.x, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEB1W_.exit53, %bb.ad, %bb.ab
  %.pn466885 = phi { ptr, i32 } [ %.pn4669, %bb.ad ], [ %.pn4669, %bb.ab ], [ %lpad.phi, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections11linked_list10LinkedListINtNtBI_3vec3VecNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEEEB1W_.exit53 ], [ %i.bi, %bb.x ]
  resume { ptr, i32 } %.pn466885

bb.ad:                                            ; preds = %bb.ab
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke void @_RNvXsa_NtCs3uS0LcqId4h_5rayon3vecINtB5_13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtBV_12endian_slice11EndianSliceNtNtBX_9endianity13RunTimeEndianEjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCslKoDbeUmNq5_14dwarf_validate(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bl)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBM_3vec13DrainProducerINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB2n_12endian_slice11EndianSliceNtNtB2p_9endianity13RunTimeEndianEjEEINtNtBK_3map11MapConsumerNtNtBK_6extend15ListVecConsumerNCINvCslKoDbeUmNq5_14dwarf_validate13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEB35_E0EE0EB5f_.exit unwind label %bb.z
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtCs6o3pVbAMket_10rayon_core4join12join_contextNCINvNvNtNtCs3uS0LcqId4h_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerNtCslKoDbeUmNq5_14dwarf_validate11UnitSummaryEINtNtBY_8for_each15ForEachConsumerNCINvB2A_13validate_infoQINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtB5Z_9endianity13RunTimeEndianEEs_0EE0NCBR_s_0uuE0B2A_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(88) %0, ptr noundef nonnull align 128 %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [104 x i8], align 8               ; 4 uses
  %i.d = alloca [104 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.g = load i64, ptr %i.f, align 128, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  store ptr %i.e, ptr %i.h, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store i64 %i.g, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 0, ptr %i.i, align 8
end_hunk_1
