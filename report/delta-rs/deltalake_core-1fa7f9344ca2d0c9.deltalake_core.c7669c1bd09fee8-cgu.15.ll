inline.NumInlined: 12000
inline.NumDeleted: 3498
begin_hunk_0_@_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterINtNtB1f_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEENCNCNCNvMNtNtB2O_8metadata6writerINtB4d_20ThriftMetadataWriterINtB4_3VechEE23finalize_offset_indexess_000EB2I_ECs14kWLkQVSKO_14deltalake_core:bb.a

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 48                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEE32forget_allocation_drop_remainingCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtB4_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEB2c_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #50
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEENtNtNtB11_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEENCNCNCNvMNtNtB2u_8metadata6writerINtB3T_20ThriftMetadataWriterINtB1j_3VechEE23finalize_offset_indexess_000EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterINtNtB1f_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEENCNCNCNvMNtNtB2O_8metadata6writerINtB4d_20ThriftMetadataWriterNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferE23finalize_offset_indexess_000EB2I_EB5a_(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !3
  %i.g = invoke { ptr, ptr } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBc_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEENCNCNCNvMNtNtB2d_8metadata6writerINtB3C_20ThriftMetadataWriterNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferE23finalize_offset_indexess_000ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB27_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB27_E0INtNtBc_6result6ResultB6K_zEEB4z_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEENtNtNtB11_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEENCNCNCNvMNtNtB2u_8metadata6writerINtB3T_20ThriftMetadataWriterNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferE23finalize_offset_indexess_000EEB4Q_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 48                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEE32forget_allocation_drop_remainingCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtB4_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEB2c_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #50
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEENtNtNtB11_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEENCNCNCNvMNtNtB2u_8metadata6writerINtB3T_20ThriftMetadataWriterNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferE23finalize_offset_indexess_000EEB4Q_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterINtNtB1f_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEENCNCNCNvMNtNtB2O_8metadata6writerINtB4d_20ThriftMetadataWriterQINtB4_3VechEE23finalize_offset_indexess_000EB2I_ECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !3
  %i.g = invoke { ptr, ptr } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBc_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEENCNCNCNvMNtNtB2d_8metadata6writerINtB3C_20ThriftMetadataWriterQINtB12_3VechEE23finalize_offset_indexess_000ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB27_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB27_E0INtNtBc_6result6ResultB5U_zEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEENtNtNtB11_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEENCNCNCNvMNtNtB2u_8metadata6writerINtB3T_20ThriftMetadataWriterQINtB1j_3VechEE23finalize_offset_indexess_000EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 48                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEE32forget_allocation_drop_remainingCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtB4_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEB2c_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #50
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEENtNtNtB11_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12offset_index19OffsetIndexMetaDataEENCNCNCNvMNtNtB2u_8metadata6writerINtB3T_20ThriftMetadataWriterQINtB1j_3VechEE23finalize_offset_indexess_000EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterINtNtB1f_6option6OptionaEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2U_14PrimitiveArrayNtNtB2Y_5types8Int8TypeEINtNtNtB1d_6traits7collect12FromIteratorB2l_E9from_iterB1U_E0EaECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5179)
  %i.f = invoke noundef i64 @_RNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionaEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2c_14PrimitiveArrayNtNtB2g_5types8Int8TypeEINtNtNtB9_6traits7collect12FromIteratorB1E_E9from_iterBQ_E0ENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
          to label %.noexc unwind label %bb.b     ; 3 uses

.body:                                            ; preds = %bb.n, %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtB4_6option6OptionaEaEECs14kWLkQVSKO_14deltalake_core.exit
  %.pn = phi { ptr, i32 } [ %i.bf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtB4_6option6OptionaEaEECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.g, %bb.b ], [ %lpad.phi.i, %bb.n ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6option6OptionaEENtNtNtB11_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionaEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2A_14PrimitiveArrayNtNtB2E_5types8Int8TypeEINtNtNtBN_6traits7collect12FromIteratorB22_E9from_iterB1e_E0EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5179
  store ptr %i.e, ptr %i.b, align 8, !noalias !5179
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.e, ptr %i.h, align 8, !noalias !5179
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionaEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2i_14PrimitiveArrayNtNtB2m_5types8Int8TypeEINtNtNtB9_6traits7collect12FromIteratorB1K_E9from_iterBW_E0ENtNtB40_8iterator8Iterator24___iterator_get_uncheckedCs14kWLkQVSKO_14deltalake_core.exit.i, %.lr.ph.i
  %.sroa.0.01.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bc, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionaEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2i_14PrimitiveArrayNtNtB2m_5types8Int8TypeEINtNtNtB9_6traits7collect12FromIteratorB1K_E9from_iterBW_E0ENtNtB40_8iterator8Iterator24___iterator_get_uncheckedCs14kWLkQVSKO_14deltalake_core.exit.i ] ; 3 uses
  %.val.i = load ptr, ptr %i.i, align 8, !alias.scope !5179, !nonnull !3, !noundef !3
  %.val6.i = load ptr, ptr %i.j, align 8, !alias.scope !5179, !nonnull !3, !noundef !3 ; 9 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %.val.i, i64 %.sroa.0.01.i ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !range !136, !noundef !3
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.o = load i8, ptr %i.n, align 1
  %2 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 32 ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 24 ; 5 uses
  %i.p = load i64, ptr %2, align 8, !noundef !3   ; 3 uses
  %i.q = add i64 %i.p, 1                          ; 4 uses
  %i.r = lshr i64 %i.q, 3
  %i.s = and i64 %i.q, 7
  %.not.i.i.i.i = icmp ne i64 %i.s, 0
  %i.t = zext i1 %.not.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i = add nuw nsw i64 %i.r, %i.t ; 15 uses
  %i.u = load i64, ptr %3, align 8, !noundef !3   ; 5 uses
  %i.v = icmp ugt i64 %.sroa.0.0.i.i.i.i, %i.u    ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  br i1 %i.v, label %bb.e, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.w = sub nuw nsw i64 %.sroa.0.0.i.i.i.i, %i.u
  %4 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8
  %i.x = load i64, ptr %4, align 8, !alias.scope !5182, !noundef !3 ; 2 uses
  %i.y = icmp ugt i64 %.sroa.0.0.i.i.i.i, %i.x
  br i1 %i.y, label %bb.f, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i, !prof !4

bb.f:                                             ; preds = %bb.e
  %i.z = and i64 %.sroa.0.0.i.i.i.i, 63
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %reass.sub.i.i.i.i.i = and i64 %.sroa.0.0.i.i.i.i, 4611686018427387840
  %i.ab = add nuw nsw i64 %reass.sub.i.i.i.i.i, 64 ; 2 uses
  %i.ac = icmp samesign ult i64 %i.ab, %.sroa.0.0.i.i.i.i
  br i1 %i.ac, label %.invoke.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %bb.f ], [ %i.ab, %bb.g ]
  %i.ad = shl nuw nsw i64 %i.x, 1
  %.sroa.0.0.i.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.ad, i64 %.sroa.4.0.i.i.i.i.i)
  invoke void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val6.i, i64 noundef %.sroa.0.0.i.i.i.i.i)
          to label %.noexc.i unwind label %.loopexit.i

.noexc.i:                                         ; preds = %bb.h
  %.pre.i.i.i.i = load i64, ptr %3, align 8, !alias.scope !5187
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i

.invoke.i:                                        ; preds = %bb.l, %bb.g
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @120, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @122) #49
          to label %.cont.i unwind label %.loopexit.split-lp.i

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i: ; preds = %.noexc.i, %bb.e
  %i.ae = phi i64 [ %i.u, %bb.e ], [ %.pre.i.i.i.i, %.noexc.i ]
  %5 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.af = load ptr, ptr %5, align 8, !alias.scope !5187, !nonnull !3, !noundef !3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ae
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ag, i8 0, i64 %i.w, i1 false)
  store i64 %.sroa.0.0.i.i.i.i, ptr %3, align 8, !alias.scope !5187
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i: ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i, %bb.d
  store i64 %i.q, ptr %2, align 8, !alias.scope !5187
  %6 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.ah = load ptr, ptr %6, align 8, !nonnull !3, !noundef !3
  %i.ai = trunc i64 %i.p to i8
  %i.aj = and i8 %i.ai, 7
  %i.ak = shl nuw i8 1, %i.aj
  %i.al = lshr i64 %i.p, 3
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.al ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !noundef !3
  %i.ao = or i8 %i.an, %i.ak
  store i8 %i.ao, ptr %i.am, align 1
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionaEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2i_14PrimitiveArrayNtNtB2m_5types8Int8TypeEINtNtNtB9_6traits7collect12FromIteratorB1K_E9from_iterBW_E0ENtNtB40_8iterator8Iterator24___iterator_get_uncheckedCs14kWLkQVSKO_14deltalake_core.exit.i

bb.i:                                             ; preds = %bb.c
  br i1 %i.v, label %bb.j, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit10.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ap = sub nuw nsw i64 %.sroa.0.0.i.i.i.i, %i.u
  %7 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8
  %i.aq = load i64, ptr %7, align 8, !alias.scope !5188, !noundef !3 ; 2 uses
  %i.ar = icmp ugt i64 %.sroa.0.0.i.i.i.i, %i.aq
  br i1 %i.ar, label %bb.k, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i5.i.i.i, !prof !4

bb.k:                                             ; preds = %bb.j
  %i.as = and i64 %.sroa.0.0.i.i.i.i, 63
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %reass.sub.i.i6.i.i.i = and i64 %.sroa.0.0.i.i.i.i, 4611686018427387840
  %i.au = add nuw nsw i64 %reass.sub.i.i6.i.i.i, 64 ; 2 uses
  %i.av = icmp samesign ult i64 %i.au, %.sroa.0.0.i.i.i.i
  br i1 %i.av, label %.invoke.i, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.4.0.i.i7.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %bb.k ], [ %i.au, %bb.l ]
  %i.aw = shl nuw nsw i64 %i.aq, 1
  %.sroa.0.0.i.i8.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.aw, i64 %.sroa.4.0.i.i7.i.i.i)
  invoke void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val6.i, i64 noundef %.sroa.0.0.i.i8.i.i.i)
          to label %.noexc8.i unwind label %.loopexit.i

.noexc8.i:                                        ; preds = %bb.m
  %.pre.i9.i.i.i = load i64, ptr %3, align 8, !alias.scope !5193
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i5.i.i.i

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i5.i.i.i: ; preds = %.noexc8.i, %bb.j
  %i.ax = phi i64 [ %i.u, %bb.j ], [ %.pre.i9.i.i.i, %.noexc8.i ]
  %8 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.ay = load ptr, ptr %8, align 8, !alias.scope !5193, !nonnull !3, !noundef !3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.az, i8 0, i64 %i.ap, i1 false)
  store i64 %.sroa.0.0.i.i.i.i, ptr %3, align 8, !alias.scope !5193
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit10.i.i.i

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit10.i.i.i: ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i5.i.i.i, %bb.i
  store i64 %i.q, ptr %2, align 8, !alias.scope !5193
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionaEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2i_14PrimitiveArrayNtNtB2m_5types8Int8TypeEINtNtNtB9_6traits7collect12FromIteratorB1K_E9from_iterBW_E0ENtNtB40_8iterator8Iterator24___iterator_get_uncheckedCs14kWLkQVSKO_14deltalake_core.exit.i

.loopexit.i:                                      ; preds = %bb.m, %bb.h
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp.i:                             ; preds = %.invoke.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.ba = invoke noundef i64 @_RNvMNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_dropINtB2_11InPlaceDropaE3lenCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %.body unwind label %bb.o      ; 0 uses

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionaEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2i_14PrimitiveArrayNtNtB2m_5types8Int8TypeEINtNtNtB9_6traits7collect12FromIteratorB1K_E9from_iterBW_E0ENtNtB40_8iterator8Iterator24___iterator_get_uncheckedCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit10.i.i.i, %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i
  %.sroa.0.0.i.i.i = phi i8 [ %i.o, %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i ], [ 0, %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit10.i.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.0.01.i ; 2 uses
  %i.bc = add nuw i64 %.sroa.0.01.i, 1            ; 2 uses
  store i8 %.sroa.0.0.i.i.i, ptr %i.bb, align 1, !noalias !5179
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store ptr %i.bd, ptr %i.h, align 8, !noalias !5179
  %exitcond.not.i = icmp eq i64 %i.bc, %i.f
  br i1 %exitcond.not.i, label %.loopexit, label %bb.c

bb.o:                                             ; preds = %bb.n
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

.loopexit:                                        ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionaEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2i_14PrimitiveArrayNtNtB2m_5types8Int8TypeEINtNtNtB9_6traits7collect12FromIteratorB1K_E9from_iterBW_E0ENtNtB40_8iterator8Iterator24___iterator_get_uncheckedCs14kWLkQVSKO_14deltalake_core.exit.i, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5179
  invoke void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6option6OptionaEE32forget_allocation_drop_remainingCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %.loopexit
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.d, ptr %i.a, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.bg, align 8
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6option6OptionaEENtNtNtBR_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtB4_6option6OptionaEaEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.r

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtB4_6option6OptionaEaEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.body

bb.q:                                             ; preds = %.loopexit
  %i.bh = shl nuw i64 %i.d, 1
  store i64 %i.bh, ptr %0, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.bj, align 8
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6option6OptionaEENtNtNtB11_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
  ret void

bb.r:                                             ; preds = %bb.p, %.body
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionaEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2A_14PrimitiveArrayNtNtB2E_5types8Int8TypeEINtNtNtBN_6traits7collect12FromIteratorB22_E9from_iterB1e_E0EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterINtNtB1f_6option6OptionhEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2U_14PrimitiveArrayNtNtB2Y_5types9UInt8TypeEINtNtNtB1d_6traits7collect12FromIteratorB2l_E9from_iterB1U_E0EhECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5194)
  %i.f = invoke noundef i64 @_RNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionhEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2c_14PrimitiveArrayNtNtB2g_5types9UInt8TypeEINtNtNtB9_6traits7collect12FromIteratorB1E_E9from_iterBQ_E0ENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
          to label %.noexc unwind label %bb.b     ; 3 uses

.body:                                            ; preds = %bb.n, %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtB4_6option6OptionhEhEECs14kWLkQVSKO_14deltalake_core.exit
  %.pn = phi { ptr, i32 } [ %i.bf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtB4_6option6OptionhEhEECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.g, %bb.b ], [ %lpad.phi.i, %bb.n ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6option6OptionhEENtNtNtB11_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionhEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2A_14PrimitiveArrayNtNtB2E_5types9UInt8TypeEINtNtNtBN_6traits7collect12FromIteratorB22_E9from_iterB1e_E0EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5194
  store ptr %i.e, ptr %i.b, align 8, !noalias !5194
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.e, ptr %i.h, align 8, !noalias !5194
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionhEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2i_14PrimitiveArrayNtNtB2m_5types9UInt8TypeEINtNtNtB9_6traits7collect12FromIteratorB1K_E9from_iterBW_E0ENtNtB41_8iterator8Iterator24___iterator_get_uncheckedCs14kWLkQVSKO_14deltalake_core.exit.i, %.lr.ph.i
  %.sroa.0.01.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bc, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionhEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2i_14PrimitiveArrayNtNtB2m_5types9UInt8TypeEINtNtNtB9_6traits7collect12FromIteratorB1K_E9from_iterBW_E0ENtNtB41_8iterator8Iterator24___iterator_get_uncheckedCs14kWLkQVSKO_14deltalake_core.exit.i ] ; 3 uses
  %.val.i = load ptr, ptr %i.i, align 8, !alias.scope !5194, !nonnull !3, !noundef !3
  %.val6.i = load ptr, ptr %i.j, align 8, !alias.scope !5194, !nonnull !3, !noundef !3 ; 9 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %.val.i, i64 %.sroa.0.01.i ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !range !136, !noundef !3
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.o = load i8, ptr %i.n, align 1
  %2 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 32 ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 24 ; 5 uses
  %i.p = load i64, ptr %2, align 8, !noundef !3   ; 3 uses
  %i.q = add i64 %i.p, 1                          ; 4 uses
  %i.r = lshr i64 %i.q, 3
  %i.s = and i64 %i.q, 7
  %.not.i.i.i.i = icmp ne i64 %i.s, 0
  %i.t = zext i1 %.not.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i = add nuw nsw i64 %i.r, %i.t ; 15 uses
  %i.u = load i64, ptr %3, align 8, !noundef !3   ; 5 uses
  %i.v = icmp ugt i64 %.sroa.0.0.i.i.i.i, %i.u    ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  br i1 %i.v, label %bb.e, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.w = sub nuw nsw i64 %.sroa.0.0.i.i.i.i, %i.u
  %4 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8
  %i.x = load i64, ptr %4, align 8, !alias.scope !5197, !noundef !3 ; 2 uses
  %i.y = icmp ugt i64 %.sroa.0.0.i.i.i.i, %i.x
  br i1 %i.y, label %bb.f, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i, !prof !4

bb.f:                                             ; preds = %bb.e
  %i.z = and i64 %.sroa.0.0.i.i.i.i, 63
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %reass.sub.i.i.i.i.i = and i64 %.sroa.0.0.i.i.i.i, 4611686018427387840
  %i.ab = add nuw nsw i64 %reass.sub.i.i.i.i.i, 64 ; 2 uses
  %i.ac = icmp samesign ult i64 %i.ab, %.sroa.0.0.i.i.i.i
  br i1 %i.ac, label %.invoke.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %bb.f ], [ %i.ab, %bb.g ]
  %i.ad = shl nuw nsw i64 %i.x, 1
  %.sroa.0.0.i.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.ad, i64 %.sroa.4.0.i.i.i.i.i)
  invoke void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val6.i, i64 noundef %.sroa.0.0.i.i.i.i.i)
          to label %.noexc.i unwind label %.loopexit.i

.noexc.i:                                         ; preds = %bb.h
  %.pre.i.i.i.i = load i64, ptr %3, align 8, !alias.scope !5202
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i

.invoke.i:                                        ; preds = %bb.l, %bb.g
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @120, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @122) #49
          to label %.cont.i unwind label %.loopexit.split-lp.i

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i: ; preds = %.noexc.i, %bb.e
  %i.ae = phi i64 [ %i.u, %bb.e ], [ %.pre.i.i.i.i, %.noexc.i ]
  %5 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.af = load ptr, ptr %5, align 8, !alias.scope !5202, !nonnull !3, !noundef !3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ae
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ag, i8 0, i64 %i.w, i1 false)
  store i64 %.sroa.0.0.i.i.i.i, ptr %3, align 8, !alias.scope !5202
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i: ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i, %bb.d
  store i64 %i.q, ptr %2, align 8, !alias.scope !5202
  %6 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.ah = load ptr, ptr %6, align 8, !nonnull !3, !noundef !3
  %i.ai = trunc i64 %i.p to i8
  %i.aj = and i8 %i.ai, 7
  %i.ak = shl nuw i8 1, %i.aj
  %i.al = lshr i64 %i.p, 3
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.al ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !noundef !3
  %i.ao = or i8 %i.an, %i.ak
  store i8 %i.ao, ptr %i.am, align 1
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionhEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2i_14PrimitiveArrayNtNtB2m_5types9UInt8TypeEINtNtNtB9_6traits7collect12FromIteratorB1K_E9from_iterBW_E0ENtNtB41_8iterator8Iterator24___iterator_get_uncheckedCs14kWLkQVSKO_14deltalake_core.exit.i

bb.i:                                             ; preds = %bb.c
  br i1 %i.v, label %bb.j, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit10.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ap = sub nuw nsw i64 %.sroa.0.0.i.i.i.i, %i.u
  %7 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8
  %i.aq = load i64, ptr %7, align 8, !alias.scope !5203, !noundef !3 ; 2 uses
  %i.ar = icmp ugt i64 %.sroa.0.0.i.i.i.i, %i.aq
  br i1 %i.ar, label %bb.k, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i5.i.i.i, !prof !4

bb.k:                                             ; preds = %bb.j
  %i.as = and i64 %.sroa.0.0.i.i.i.i, 63
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %reass.sub.i.i6.i.i.i = and i64 %.sroa.0.0.i.i.i.i, 4611686018427387840
  %i.au = add nuw nsw i64 %reass.sub.i.i6.i.i.i, 64 ; 2 uses
  %i.av = icmp samesign ult i64 %i.au, %.sroa.0.0.i.i.i.i
  br i1 %i.av, label %.invoke.i, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.4.0.i.i7.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %bb.k ], [ %i.au, %bb.l ]
  %i.aw = shl nuw nsw i64 %i.aq, 1
  %.sroa.0.0.i.i8.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.aw, i64 %.sroa.4.0.i.i7.i.i.i)
  invoke void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val6.i, i64 noundef %.sroa.0.0.i.i8.i.i.i)
          to label %.noexc8.i unwind label %.loopexit.i

.noexc8.i:                                        ; preds = %bb.m
  %.pre.i9.i.i.i = load i64, ptr %3, align 8, !alias.scope !5208
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i5.i.i.i

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i5.i.i.i: ; preds = %.noexc8.i, %bb.j
  %i.ax = phi i64 [ %i.u, %bb.j ], [ %.pre.i9.i.i.i, %.noexc8.i ]
  %8 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.ay = load ptr, ptr %8, align 8, !alias.scope !5208, !nonnull !3, !noundef !3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.az, i8 0, i64 %i.ap, i1 false)
  store i64 %.sroa.0.0.i.i.i.i, ptr %3, align 8, !alias.scope !5208
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit10.i.i.i

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit10.i.i.i: ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i5.i.i.i, %bb.i
  store i64 %i.q, ptr %2, align 8, !alias.scope !5208
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionhEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2i_14PrimitiveArrayNtNtB2m_5types9UInt8TypeEINtNtNtB9_6traits7collect12FromIteratorB1K_E9from_iterBW_E0ENtNtB41_8iterator8Iterator24___iterator_get_uncheckedCs14kWLkQVSKO_14deltalake_core.exit.i

.loopexit.i:                                      ; preds = %bb.m, %bb.h
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp.i:                             ; preds = %.invoke.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.ba = invoke noundef i64 @_RNvMNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_dropINtB2_11InPlaceDrophE3lenCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %.body unwind label %bb.o      ; 0 uses

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionhEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2i_14PrimitiveArrayNtNtB2m_5types9UInt8TypeEINtNtNtB9_6traits7collect12FromIteratorB1K_E9from_iterBW_E0ENtNtB41_8iterator8Iterator24___iterator_get_uncheckedCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit10.i.i.i, %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i
  %.sroa.0.0.i.i.i = phi i8 [ %i.o, %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i ], [ 0, %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit10.i.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.0.01.i ; 2 uses
  %i.bc = add nuw i64 %.sroa.0.01.i, 1            ; 2 uses
  store i8 %.sroa.0.0.i.i.i, ptr %i.bb, align 1, !noalias !5194
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store ptr %i.bd, ptr %i.h, align 8, !noalias !5194
  %exitcond.not.i = icmp eq i64 %i.bc, %i.f
  br i1 %exitcond.not.i, label %.loopexit, label %bb.c

bb.o:                                             ; preds = %bb.n
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

.loopexit:                                        ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionhEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2i_14PrimitiveArrayNtNtB2m_5types9UInt8TypeEINtNtNtB9_6traits7collect12FromIteratorB1K_E9from_iterBW_E0ENtNtB41_8iterator8Iterator24___iterator_get_uncheckedCs14kWLkQVSKO_14deltalake_core.exit.i, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5194
  invoke void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6option6OptionhEE32forget_allocation_drop_remainingCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %.loopexit
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.d, ptr %i.a, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.bg, align 8
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6option6OptionhEENtNtNtBR_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtB4_6option6OptionhEhEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.r

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtB4_6option6OptionhEhEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.body

bb.q:                                             ; preds = %.loopexit
  %i.bh = shl nuw i64 %i.d, 1
  store i64 %i.bh, ptr %0, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.bj, align 8
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6option6OptionhEENtNtNtB11_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
  ret void

bb.r:                                             ; preds = %bb.p, %.body
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionhEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2A_14PrimitiveArrayNtNtB2E_5types9UInt8TypeEINtNtNtBN_6traits7collect12FromIteratorB22_E9from_iterB1e_E0EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterINtNtB1f_6option6OptionlEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2U_14PrimitiveArrayNtNtB2Y_5types9Int32TypeEINtNtNtB1d_6traits7collect12FromIteratorB2l_E9from_iterB1U_E0ElECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5209)
  %i.f = invoke noundef i64 @_RNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionlEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2c_14PrimitiveArrayNtNtB2g_5types9Int32TypeEINtNtNtB9_6traits7collect12FromIteratorB1E_E9from_iterBQ_E0ENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
          to label %.noexc unwind label %bb.b     ; 3 uses

.body:                                            ; preds = %bb.n, %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtB4_6option6OptionlElEECs14kWLkQVSKO_14deltalake_core.exit
  %.pn = phi { ptr, i32 } [ %i.bf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtB4_6option6OptionlElEECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.g, %bb.b ], [ %lpad.phi.i, %bb.n ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6option6OptionlEENtNtNtB11_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionlEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2A_14PrimitiveArrayNtNtB2E_5types9Int32TypeEINtNtNtBN_6traits7collect12FromIteratorB22_E9from_iterB1e_E0EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5209
  store ptr %i.e, ptr %i.b, align 8, !noalias !5209
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.e, ptr %i.h, align 8, !noalias !5209
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionlEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2i_14PrimitiveArrayNtNtB2m_5types9Int32TypeEINtNtNtB9_6traits7collect12FromIteratorB1K_E9from_iterBW_E0ENtNtB41_8iterator8Iterator24___iterator_get_uncheckedCs14kWLkQVSKO_14deltalake_core.exit.i, %.lr.ph.i
  %.sroa.0.01.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bc, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionlEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2i_14PrimitiveArrayNtNtB2m_5types9Int32TypeEINtNtNtB9_6traits7collect12FromIteratorB1K_E9from_iterBW_E0ENtNtB41_8iterator8Iterator24___iterator_get_uncheckedCs14kWLkQVSKO_14deltalake_core.exit.i ] ; 3 uses
  %.val.i = load ptr, ptr %i.i, align 8, !alias.scope !5209, !nonnull !3, !noundef !3
  %.val6.i = load ptr, ptr %i.j, align 8, !alias.scope !5209, !nonnull !3, !noundef !3 ; 9 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %.sroa.0.01.i ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !range !5212, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.n = load i32, ptr %i.m, align 4
  %i.o = trunc nuw i32 %i.l to i1
  %2 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 32 ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 24 ; 5 uses
  %i.p = load i64, ptr %2, align 8, !noundef !3   ; 3 uses
  %i.q = add i64 %i.p, 1                          ; 4 uses
  %i.r = lshr i64 %i.q, 3
  %i.s = and i64 %i.q, 7
  %.not.i.i.i.i = icmp ne i64 %i.s, 0
  %i.t = zext i1 %.not.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i = add nuw nsw i64 %i.r, %i.t ; 15 uses
  %i.u = load i64, ptr %3, align 8, !noundef !3   ; 5 uses
  %i.v = icmp ugt i64 %.sroa.0.0.i.i.i.i, %i.u    ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  br i1 %i.v, label %bb.e, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.w = sub nuw nsw i64 %.sroa.0.0.i.i.i.i, %i.u
  %4 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8
  %i.x = load i64, ptr %4, align 8, !alias.scope !5213, !noundef !3 ; 2 uses
  %i.y = icmp ugt i64 %.sroa.0.0.i.i.i.i, %i.x
  br i1 %i.y, label %bb.f, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i, !prof !4

bb.f:                                             ; preds = %bb.e
  %i.z = and i64 %.sroa.0.0.i.i.i.i, 63
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %reass.sub.i.i.i.i.i = and i64 %.sroa.0.0.i.i.i.i, 4611686018427387840
  %i.ab = add nuw nsw i64 %reass.sub.i.i.i.i.i, 64 ; 2 uses
  %i.ac = icmp samesign ult i64 %i.ab, %.sroa.0.0.i.i.i.i
  br i1 %i.ac, label %.invoke.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %bb.f ], [ %i.ab, %bb.g ]
  %i.ad = shl nuw nsw i64 %i.x, 1
  %.sroa.0.0.i.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.ad, i64 %.sroa.4.0.i.i.i.i.i)
  invoke void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val6.i, i64 noundef %.sroa.0.0.i.i.i.i.i)
          to label %.noexc.i unwind label %.loopexit.i

.noexc.i:                                         ; preds = %bb.h
  %.pre.i.i.i.i = load i64, ptr %3, align 8, !alias.scope !5218
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i

.invoke.i:                                        ; preds = %bb.l, %bb.g
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @120, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @122) #49
          to label %.cont.i unwind label %.loopexit.split-lp.i

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i: ; preds = %.noexc.i, %bb.e
  %i.ae = phi i64 [ %i.u, %bb.e ], [ %.pre.i.i.i.i, %.noexc.i ]
  %5 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.af = load ptr, ptr %5, align 8, !alias.scope !5218, !nonnull !3, !noundef !3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ae
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ag, i8 0, i64 %i.w, i1 false)
  store i64 %.sroa.0.0.i.i.i.i, ptr %3, align 8, !alias.scope !5218
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i: ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i, %bb.d
  store i64 %i.q, ptr %2, align 8, !alias.scope !5218
  %6 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.ah = load ptr, ptr %6, align 8, !nonnull !3, !noundef !3
  %i.ai = trunc i64 %i.p to i8
  %i.aj = and i8 %i.ai, 7
  %i.ak = shl nuw i8 1, %i.aj
  %i.al = lshr i64 %i.p, 3
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.al ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !noundef !3
  %i.ao = or i8 %i.an, %i.ak
  store i8 %i.ao, ptr %i.am, align 1
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionlEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2i_14PrimitiveArrayNtNtB2m_5types9Int32TypeEINtNtNtB9_6traits7collect12FromIteratorB1K_E9from_iterBW_E0ENtNtB41_8iterator8Iterator24___iterator_get_uncheckedCs14kWLkQVSKO_14deltalake_core.exit.i

bb.i:                                             ; preds = %bb.c
  br i1 %i.v, label %bb.j, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit10.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ap = sub nuw nsw i64 %.sroa.0.0.i.i.i.i, %i.u
  %7 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8
  %i.aq = load i64, ptr %7, align 8, !alias.scope !5219, !noundef !3 ; 2 uses
  %i.ar = icmp ugt i64 %.sroa.0.0.i.i.i.i, %i.aq
  br i1 %i.ar, label %bb.k, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i5.i.i.i, !prof !4

bb.k:                                             ; preds = %bb.j
  %i.as = and i64 %.sroa.0.0.i.i.i.i, 63
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %reass.sub.i.i6.i.i.i = and i64 %.sroa.0.0.i.i.i.i, 4611686018427387840
  %i.au = add nuw nsw i64 %reass.sub.i.i6.i.i.i, 64 ; 2 uses
  %i.av = icmp samesign ult i64 %i.au, %.sroa.0.0.i.i.i.i
  br i1 %i.av, label %.invoke.i, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.4.0.i.i7.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %bb.k ], [ %i.au, %bb.l ]
  %i.aw = shl nuw nsw i64 %i.aq, 1
  %.sroa.0.0.i.i8.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.aw, i64 %.sroa.4.0.i.i7.i.i.i)
  invoke void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val6.i, i64 noundef %.sroa.0.0.i.i8.i.i.i)
          to label %.noexc8.i unwind label %.loopexit.i

.noexc8.i:                                        ; preds = %bb.m
  %.pre.i9.i.i.i = load i64, ptr %3, align 8, !alias.scope !5224
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i5.i.i.i

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i5.i.i.i: ; preds = %.noexc8.i, %bb.j
  %i.ax = phi i64 [ %i.u, %bb.j ], [ %.pre.i9.i.i.i, %.noexc8.i ]
  %8 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.ay = load ptr, ptr %8, align 8, !alias.scope !5224, !nonnull !3, !noundef !3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.az, i8 0, i64 %i.ap, i1 false)
  store i64 %.sroa.0.0.i.i.i.i, ptr %3, align 8, !alias.scope !5224
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit10.i.i.i

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit10.i.i.i: ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i5.i.i.i, %bb.i
  store i64 %i.q, ptr %2, align 8, !alias.scope !5224
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionlEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2i_14PrimitiveArrayNtNtB2m_5types9Int32TypeEINtNtNtB9_6traits7collect12FromIteratorB1K_E9from_iterBW_E0ENtNtB41_8iterator8Iterator24___iterator_get_uncheckedCs14kWLkQVSKO_14deltalake_core.exit.i

.loopexit.i:                                      ; preds = %bb.m, %bb.h
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp.i:                             ; preds = %.invoke.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.ba = invoke noundef i64 @_RNvMNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_dropINtB2_11InPlaceDroplE3lenCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %.body unwind label %bb.o      ; 0 uses

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionlEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2i_14PrimitiveArrayNtNtB2m_5types9Int32TypeEINtNtNtB9_6traits7collect12FromIteratorB1K_E9from_iterBW_E0ENtNtB41_8iterator8Iterator24___iterator_get_uncheckedCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit10.i.i.i, %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i
  %.sroa.0.0.i.i.i = phi i32 [ %i.n, %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i ], [ 0, %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit10.i.i.i ]
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.sroa.0.01.i ; 2 uses
  %i.bc = add nuw i64 %.sroa.0.01.i, 1            ; 2 uses
  store i32 %.sroa.0.0.i.i.i, ptr %i.bb, align 4, !noalias !5209
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store ptr %i.bd, ptr %i.h, align 8, !noalias !5209
  %exitcond.not.i = icmp eq i64 %i.bc, %i.f
  br i1 %exitcond.not.i, label %.loopexit, label %bb.c

bb.o:                                             ; preds = %bb.n
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

.loopexit:                                        ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionlEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2i_14PrimitiveArrayNtNtB2m_5types9Int32TypeEINtNtNtB9_6traits7collect12FromIteratorB1K_E9from_iterBW_E0ENtNtB41_8iterator8Iterator24___iterator_get_uncheckedCs14kWLkQVSKO_14deltalake_core.exit.i, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5209
  invoke void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6option6OptionlEE32forget_allocation_drop_remainingCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %.loopexit
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.d, ptr %i.a, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.bg, align 8
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6option6OptionlEENtNtNtBR_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtB4_6option6OptionlElEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.r

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtB4_6option6OptionlElEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.body

bb.q:                                             ; preds = %.loopexit
  %i.bh = shl nuw i64 %i.d, 1
  store i64 %i.bh, ptr %0, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.bj, align 8
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6option6OptionlEENtNtNtB11_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
  ret void

bb.r:                                             ; preds = %bb.p, %.body
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionlEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2A_14PrimitiveArrayNtNtB2E_5types9Int32TypeEINtNtNtBN_6traits7collect12FromIteratorB22_E9from_iterB1e_E0EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterINtNtB1f_6option6OptionmEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2U_14PrimitiveArrayNtNtB2Y_5types10UInt32TypeEINtNtNtB1d_6traits7collect12FromIteratorB2l_E9from_iterB1U_E0EmECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5225)
  %i.f = invoke noundef i64 @_RNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionmEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2c_14PrimitiveArrayNtNtB2g_5types10UInt32TypeEINtNtNtB9_6traits7collect12FromIteratorB1E_E9from_iterBQ_E0ENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
          to label %.noexc unwind label %bb.b     ; 3 uses

.body:                                            ; preds = %bb.n, %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtB4_6option6OptionmEmEECs14kWLkQVSKO_14deltalake_core.exit
  %.pn = phi { ptr, i32 } [ %i.bf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtB4_6option6OptionmEmEECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.g, %bb.b ], [ %lpad.phi.i, %bb.n ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6option6OptionmEENtNtNtB11_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionmEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2A_14PrimitiveArrayNtNtB2E_5types10UInt32TypeEINtNtNtBN_6traits7collect12FromIteratorB22_E9from_iterB1e_E0EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5225
  store ptr %i.e, ptr %i.b, align 8, !noalias !5225
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.e, ptr %i.h, align 8, !noalias !5225
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionmEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2i_14PrimitiveArrayNtNtB2m_5types10UInt32TypeEINtNtNtB9_6traits7collect12FromIteratorB1K_E9from_iterBW_E0ENtNtB43_8iterator8Iterator24___iterator_get_uncheckedCs14kWLkQVSKO_14deltalake_core.exit.i, %.lr.ph.i
  %.sroa.0.01.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bc, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionmEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2i_14PrimitiveArrayNtNtB2m_5types10UInt32TypeEINtNtNtB9_6traits7collect12FromIteratorB1K_E9from_iterBW_E0ENtNtB43_8iterator8Iterator24___iterator_get_uncheckedCs14kWLkQVSKO_14deltalake_core.exit.i ] ; 3 uses
  %.val.i = load ptr, ptr %i.i, align 8, !alias.scope !5225, !nonnull !3, !noundef !3
  %.val6.i = load ptr, ptr %i.j, align 8, !alias.scope !5225, !nonnull !3, !noundef !3 ; 9 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %.sroa.0.01.i ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !range !5212, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.n = load i32, ptr %i.m, align 4
  %i.o = trunc nuw i32 %i.l to i1
  %2 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 32 ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 24 ; 5 uses
  %i.p = load i64, ptr %2, align 8, !noundef !3   ; 3 uses
  %i.q = add i64 %i.p, 1                          ; 4 uses
  %i.r = lshr i64 %i.q, 3
  %i.s = and i64 %i.q, 7
  %.not.i.i.i.i = icmp ne i64 %i.s, 0
  %i.t = zext i1 %.not.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i = add nuw nsw i64 %i.r, %i.t ; 15 uses
  %i.u = load i64, ptr %3, align 8, !noundef !3   ; 5 uses
  %i.v = icmp ugt i64 %.sroa.0.0.i.i.i.i, %i.u    ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  br i1 %i.v, label %bb.e, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.w = sub nuw nsw i64 %.sroa.0.0.i.i.i.i, %i.u
  %4 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8
  %i.x = load i64, ptr %4, align 8, !alias.scope !5228, !noundef !3 ; 2 uses
  %i.y = icmp ugt i64 %.sroa.0.0.i.i.i.i, %i.x
  br i1 %i.y, label %bb.f, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i, !prof !4

bb.f:                                             ; preds = %bb.e
  %i.z = and i64 %.sroa.0.0.i.i.i.i, 63
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %reass.sub.i.i.i.i.i = and i64 %.sroa.0.0.i.i.i.i, 4611686018427387840
  %i.ab = add nuw nsw i64 %reass.sub.i.i.i.i.i, 64 ; 2 uses
  %i.ac = icmp samesign ult i64 %i.ab, %.sroa.0.0.i.i.i.i
  br i1 %i.ac, label %.invoke.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %bb.f ], [ %i.ab, %bb.g ]
  %i.ad = shl nuw nsw i64 %i.x, 1
  %.sroa.0.0.i.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.ad, i64 %.sroa.4.0.i.i.i.i.i)
  invoke void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val6.i, i64 noundef %.sroa.0.0.i.i.i.i.i)
          to label %.noexc.i unwind label %.loopexit.i

.noexc.i:                                         ; preds = %bb.h
  %.pre.i.i.i.i = load i64, ptr %3, align 8, !alias.scope !5233
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i

.invoke.i:                                        ; preds = %bb.l, %bb.g
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @120, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @122) #49
          to label %.cont.i unwind label %.loopexit.split-lp.i

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i: ; preds = %.noexc.i, %bb.e
  %i.ae = phi i64 [ %i.u, %bb.e ], [ %.pre.i.i.i.i, %.noexc.i ]
  %5 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.af = load ptr, ptr %5, align 8, !alias.scope !5233, !nonnull !3, !noundef !3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ae
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ag, i8 0, i64 %i.w, i1 false)
  store i64 %.sroa.0.0.i.i.i.i, ptr %3, align 8, !alias.scope !5233
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i: ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i, %bb.d
  store i64 %i.q, ptr %2, align 8, !alias.scope !5233
  %6 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.ah = load ptr, ptr %6, align 8, !nonnull !3, !noundef !3
  %i.ai = trunc i64 %i.p to i8
  %i.aj = and i8 %i.ai, 7
  %i.ak = shl nuw i8 1, %i.aj
  %i.al = lshr i64 %i.p, 3
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.al ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !noundef !3
  %i.ao = or i8 %i.an, %i.ak
  store i8 %i.ao, ptr %i.am, align 1
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionmEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2i_14PrimitiveArrayNtNtB2m_5types10UInt32TypeEINtNtNtB9_6traits7collect12FromIteratorB1K_E9from_iterBW_E0ENtNtB43_8iterator8Iterator24___iterator_get_uncheckedCs14kWLkQVSKO_14deltalake_core.exit.i

bb.i:                                             ; preds = %bb.c
  br i1 %i.v, label %bb.j, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit10.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ap = sub nuw nsw i64 %.sroa.0.0.i.i.i.i, %i.u
  %7 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8
  %i.aq = load i64, ptr %7, align 8, !alias.scope !5234, !noundef !3 ; 2 uses
  %i.ar = icmp ugt i64 %.sroa.0.0.i.i.i.i, %i.aq
  br i1 %i.ar, label %bb.k, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i5.i.i.i, !prof !4

bb.k:                                             ; preds = %bb.j
  %i.as = and i64 %.sroa.0.0.i.i.i.i, 63
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %reass.sub.i.i6.i.i.i = and i64 %.sroa.0.0.i.i.i.i, 4611686018427387840
  %i.au = add nuw nsw i64 %reass.sub.i.i6.i.i.i, 64 ; 2 uses
  %i.av = icmp samesign ult i64 %i.au, %.sroa.0.0.i.i.i.i
  br i1 %i.av, label %.invoke.i, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.4.0.i.i7.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %bb.k ], [ %i.au, %bb.l ]
  %i.aw = shl nuw nsw i64 %i.aq, 1
  %.sroa.0.0.i.i8.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.aw, i64 %.sroa.4.0.i.i7.i.i.i)
  invoke void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val6.i, i64 noundef %.sroa.0.0.i.i8.i.i.i)
          to label %.noexc8.i unwind label %.loopexit.i

.noexc8.i:                                        ; preds = %bb.m
  %.pre.i9.i.i.i = load i64, ptr %3, align 8, !alias.scope !5239
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i5.i.i.i

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i5.i.i.i: ; preds = %.noexc8.i, %bb.j
  %i.ax = phi i64 [ %i.u, %bb.j ], [ %.pre.i9.i.i.i, %.noexc8.i ]
  %8 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.ay = load ptr, ptr %8, align 8, !alias.scope !5239, !nonnull !3, !noundef !3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.az, i8 0, i64 %i.ap, i1 false)
  store i64 %.sroa.0.0.i.i.i.i, ptr %3, align 8, !alias.scope !5239
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit10.i.i.i

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit10.i.i.i: ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i5.i.i.i, %bb.i
  store i64 %i.q, ptr %2, align 8, !alias.scope !5239
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionmEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2i_14PrimitiveArrayNtNtB2m_5types10UInt32TypeEINtNtNtB9_6traits7collect12FromIteratorB1K_E9from_iterBW_E0ENtNtB43_8iterator8Iterator24___iterator_get_uncheckedCs14kWLkQVSKO_14deltalake_core.exit.i

.loopexit.i:                                      ; preds = %bb.m, %bb.h
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp.i:                             ; preds = %.invoke.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.ba = invoke noundef i64 @_RNvMNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_dropINtB2_11InPlaceDropmE3lenCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %.body unwind label %bb.o      ; 0 uses

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionmEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2i_14PrimitiveArrayNtNtB2m_5types10UInt32TypeEINtNtNtB9_6traits7collect12FromIteratorB1K_E9from_iterBW_E0ENtNtB43_8iterator8Iterator24___iterator_get_uncheckedCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit10.i.i.i, %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i
  %.sroa.0.0.i.i.i = phi i32 [ %i.n, %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i ], [ 0, %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit10.i.i.i ]
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.sroa.0.01.i ; 2 uses
  %i.bc = add nuw i64 %.sroa.0.01.i, 1            ; 2 uses
  store i32 %.sroa.0.0.i.i.i, ptr %i.bb, align 4, !noalias !5225
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store ptr %i.bd, ptr %i.h, align 8, !noalias !5225
  %exitcond.not.i = icmp eq i64 %i.bc, %i.f
  br i1 %exitcond.not.i, label %.loopexit, label %bb.c

bb.o:                                             ; preds = %bb.n
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

.loopexit:                                        ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionmEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2i_14PrimitiveArrayNtNtB2m_5types10UInt32TypeEINtNtNtB9_6traits7collect12FromIteratorB1K_E9from_iterBW_E0ENtNtB43_8iterator8Iterator24___iterator_get_uncheckedCs14kWLkQVSKO_14deltalake_core.exit.i, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5225
  invoke void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6option6OptionmEE32forget_allocation_drop_remainingCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %.loopexit
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.d, ptr %i.a, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.bg, align 8
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6option6OptionmEENtNtNtBR_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtB4_6option6OptionmEmEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.r

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtB4_6option6OptionmEmEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.body

bb.q:                                             ; preds = %.loopexit
  %i.bh = shl nuw i64 %i.d, 1
  store i64 %i.bh, ptr %0, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.bj, align 8
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6option6OptionmEENtNtNtB11_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
  ret void

bb.r:                                             ; preds = %bb.p, %.body
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionmEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2A_14PrimitiveArrayNtNtB2E_5types10UInt32TypeEINtNtNtBN_6traits7collect12FromIteratorB22_E9from_iterB1e_E0EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterINtNtB1f_6option6OptionsEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2U_14PrimitiveArrayNtNtB2Y_5types9Int16TypeEINtNtNtB1d_6traits7collect12FromIteratorB2l_E9from_iterB1U_E0EsECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5240)
  %i.f = invoke noundef i64 @_RNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionsEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2c_14PrimitiveArrayNtNtB2g_5types9Int16TypeEINtNtNtB9_6traits7collect12FromIteratorB1E_E9from_iterBQ_E0ENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
          to label %.noexc unwind label %bb.b     ; 3 uses

.body:                                            ; preds = %bb.n, %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtB4_6option6OptionsEsEECs14kWLkQVSKO_14deltalake_core.exit
  %.pn = phi { ptr, i32 } [ %i.bf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtB4_6option6OptionsEsEECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.g, %bb.b ], [ %lpad.phi.i, %bb.n ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6option6OptionsEENtNtNtB11_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionsEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2A_14PrimitiveArrayNtNtB2E_5types9Int16TypeEINtNtNtBN_6traits7collect12FromIteratorB22_E9from_iterB1e_E0EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5240
  store ptr %i.e, ptr %i.b, align 8, !noalias !5240
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.e, ptr %i.h, align 8, !noalias !5240
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionsEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2i_14PrimitiveArrayNtNtB2m_5types9Int16TypeEINtNtNtB9_6traits7collect12FromIteratorB1K_E9from_iterBW_E0ENtNtB41_8iterator8Iterator24___iterator_get_uncheckedCs14kWLkQVSKO_14deltalake_core.exit.i, %.lr.ph.i
  %.sroa.0.01.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bc, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionsEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2i_14PrimitiveArrayNtNtB2m_5types9Int16TypeEINtNtNtB9_6traits7collect12FromIteratorB1K_E9from_iterBW_E0ENtNtB41_8iterator8Iterator24___iterator_get_uncheckedCs14kWLkQVSKO_14deltalake_core.exit.i ] ; 3 uses
  %.val.i = load ptr, ptr %i.i, align 8, !alias.scope !5240, !nonnull !3, !noundef !3
  %.val6.i = load ptr, ptr %i.j, align 8, !alias.scope !5240, !nonnull !3, !noundef !3 ; 9 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.sroa.0.01.i ; 2 uses
  %i.l = load i16, ptr %i.k, align 2, !range !5243, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.n = load i16, ptr %i.m, align 2
  %i.o = trunc nuw i16 %i.l to i1
  %2 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 32 ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 24 ; 5 uses
  %i.p = load i64, ptr %2, align 8, !noundef !3   ; 3 uses
  %i.q = add i64 %i.p, 1                          ; 4 uses
  %i.r = lshr i64 %i.q, 3
  %i.s = and i64 %i.q, 7
  %.not.i.i.i.i = icmp ne i64 %i.s, 0
  %i.t = zext i1 %.not.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i = add nuw nsw i64 %i.r, %i.t ; 15 uses
  %i.u = load i64, ptr %3, align 8, !noundef !3   ; 5 uses
  %i.v = icmp ugt i64 %.sroa.0.0.i.i.i.i, %i.u    ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  br i1 %i.v, label %bb.e, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.w = sub nuw nsw i64 %.sroa.0.0.i.i.i.i, %i.u
  %4 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8
  %i.x = load i64, ptr %4, align 8, !alias.scope !5244, !noundef !3 ; 2 uses
  %i.y = icmp ugt i64 %.sroa.0.0.i.i.i.i, %i.x
  br i1 %i.y, label %bb.f, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i, !prof !4

bb.f:                                             ; preds = %bb.e
  %i.z = and i64 %.sroa.0.0.i.i.i.i, 63
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %reass.sub.i.i.i.i.i = and i64 %.sroa.0.0.i.i.i.i, 4611686018427387840
  %i.ab = add nuw nsw i64 %reass.sub.i.i.i.i.i, 64 ; 2 uses
  %i.ac = icmp samesign ult i64 %i.ab, %.sroa.0.0.i.i.i.i
  br i1 %i.ac, label %.invoke.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %bb.f ], [ %i.ab, %bb.g ]
  %i.ad = shl nuw nsw i64 %i.x, 1
  %.sroa.0.0.i.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.ad, i64 %.sroa.4.0.i.i.i.i.i)
  invoke void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val6.i, i64 noundef %.sroa.0.0.i.i.i.i.i)
          to label %.noexc.i unwind label %.loopexit.i

.noexc.i:                                         ; preds = %bb.h
  %.pre.i.i.i.i = load i64, ptr %3, align 8, !alias.scope !5249
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i

.invoke.i:                                        ; preds = %bb.l, %bb.g
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @120, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @122) #49
          to label %.cont.i unwind label %.loopexit.split-lp.i

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i: ; preds = %.noexc.i, %bb.e
  %i.ae = phi i64 [ %i.u, %bb.e ], [ %.pre.i.i.i.i, %.noexc.i ]
  %5 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.af = load ptr, ptr %5, align 8, !alias.scope !5249, !nonnull !3, !noundef !3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ae
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ag, i8 0, i64 %i.w, i1 false)
  store i64 %.sroa.0.0.i.i.i.i, ptr %3, align 8, !alias.scope !5249
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i: ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i, %bb.d
  store i64 %i.q, ptr %2, align 8, !alias.scope !5249
  %6 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.ah = load ptr, ptr %6, align 8, !nonnull !3, !noundef !3
  %i.ai = trunc i64 %i.p to i8
  %i.aj = and i8 %i.ai, 7
  %i.ak = shl nuw i8 1, %i.aj
  %i.al = lshr i64 %i.p, 3
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.al ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !noundef !3
  %i.ao = or i8 %i.an, %i.ak
  store i8 %i.ao, ptr %i.am, align 1
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionsEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2i_14PrimitiveArrayNtNtB2m_5types9Int16TypeEINtNtNtB9_6traits7collect12FromIteratorB1K_E9from_iterBW_E0ENtNtB41_8iterator8Iterator24___iterator_get_uncheckedCs14kWLkQVSKO_14deltalake_core.exit.i

bb.i:                                             ; preds = %bb.c
  br i1 %i.v, label %bb.j, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit10.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ap = sub nuw nsw i64 %.sroa.0.0.i.i.i.i, %i.u
  %7 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8
  %i.aq = load i64, ptr %7, align 8, !alias.scope !5250, !noundef !3 ; 2 uses
  %i.ar = icmp ugt i64 %.sroa.0.0.i.i.i.i, %i.aq
  br i1 %i.ar, label %bb.k, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i5.i.i.i, !prof !4

bb.k:                                             ; preds = %bb.j
  %i.as = and i64 %.sroa.0.0.i.i.i.i, 63
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %reass.sub.i.i6.i.i.i = and i64 %.sroa.0.0.i.i.i.i, 4611686018427387840
  %i.au = add nuw nsw i64 %reass.sub.i.i6.i.i.i, 64 ; 2 uses
  %i.av = icmp samesign ult i64 %i.au, %.sroa.0.0.i.i.i.i
  br i1 %i.av, label %.invoke.i, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.4.0.i.i7.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %bb.k ], [ %i.au, %bb.l ]
  %i.aw = shl nuw nsw i64 %i.aq, 1
  %.sroa.0.0.i.i8.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.aw, i64 %.sroa.4.0.i.i7.i.i.i)
  invoke void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val6.i, i64 noundef %.sroa.0.0.i.i8.i.i.i)
          to label %.noexc8.i unwind label %.loopexit.i

.noexc8.i:                                        ; preds = %bb.m
  %.pre.i9.i.i.i = load i64, ptr %3, align 8, !alias.scope !5255
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i5.i.i.i

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i5.i.i.i: ; preds = %.noexc8.i, %bb.j
  %i.ax = phi i64 [ %i.u, %bb.j ], [ %.pre.i9.i.i.i, %.noexc8.i ]
  %8 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.ay = load ptr, ptr %8, align 8, !alias.scope !5255, !nonnull !3, !noundef !3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.az, i8 0, i64 %i.ap, i1 false)
  store i64 %.sroa.0.0.i.i.i.i, ptr %3, align 8, !alias.scope !5255
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit10.i.i.i

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit10.i.i.i: ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i5.i.i.i, %bb.i
  store i64 %i.q, ptr %2, align 8, !alias.scope !5255
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionsEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2i_14PrimitiveArrayNtNtB2m_5types9Int16TypeEINtNtNtB9_6traits7collect12FromIteratorB1K_E9from_iterBW_E0ENtNtB41_8iterator8Iterator24___iterator_get_uncheckedCs14kWLkQVSKO_14deltalake_core.exit.i

.loopexit.i:                                      ; preds = %bb.m, %bb.h
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp.i:                             ; preds = %.invoke.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.ba = invoke noundef i64 @_RNvMNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_dropINtB2_11InPlaceDropsE3lenCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %.body unwind label %bb.o      ; 0 uses

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionsEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2i_14PrimitiveArrayNtNtB2m_5types9Int16TypeEINtNtNtB9_6traits7collect12FromIteratorB1K_E9from_iterBW_E0ENtNtB41_8iterator8Iterator24___iterator_get_uncheckedCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit10.i.i.i, %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i
  %.sroa.0.0.i.i.i = phi i16 [ %i.n, %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i ], [ 0, %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit10.i.i.i ]
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.sroa.0.01.i ; 2 uses
  %i.bc = add nuw i64 %.sroa.0.01.i, 1            ; 2 uses
  store i16 %.sroa.0.0.i.i.i, ptr %i.bb, align 2, !noalias !5240
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  store ptr %i.bd, ptr %i.h, align 8, !noalias !5240
  %exitcond.not.i = icmp eq i64 %i.bc, %i.f
  br i1 %exitcond.not.i, label %.loopexit, label %bb.c

bb.o:                                             ; preds = %bb.n
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

.loopexit:                                        ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionsEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2i_14PrimitiveArrayNtNtB2m_5types9Int16TypeEINtNtNtB9_6traits7collect12FromIteratorB1K_E9from_iterBW_E0ENtNtB41_8iterator8Iterator24___iterator_get_uncheckedCs14kWLkQVSKO_14deltalake_core.exit.i, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5240
  invoke void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6option6OptionsEE32forget_allocation_drop_remainingCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %.loopexit
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.d, ptr %i.a, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.bg, align 8
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6option6OptionsEENtNtNtBR_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtB4_6option6OptionsEsEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.r

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtB4_6option6OptionsEsEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.body

bb.q:                                             ; preds = %.loopexit
  %i.bh = shl nuw i64 %i.d, 1
  store i64 %i.bh, ptr %0, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.bj, align 8
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6option6OptionsEENtNtNtB11_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
  ret void

bb.r:                                             ; preds = %bb.p, %.body
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionsEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2A_14PrimitiveArrayNtNtB2E_5types9Int16TypeEINtNtNtBN_6traits7collect12FromIteratorB22_E9from_iterB1e_E0EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterINtNtB1f_6option6OptiontEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2U_14PrimitiveArrayNtNtB2Y_5types10UInt16TypeEINtNtNtB1d_6traits7collect12FromIteratorB2l_E9from_iterB1U_E0EtECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5256)
  %i.f = invoke noundef i64 @_RNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptiontEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2c_14PrimitiveArrayNtNtB2g_5types10UInt16TypeEINtNtNtB9_6traits7collect12FromIteratorB1E_E9from_iterBQ_E0ENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
          to label %.noexc unwind label %bb.b     ; 3 uses

.body:                                            ; preds = %bb.n, %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtB4_6option6OptiontEtEECs14kWLkQVSKO_14deltalake_core.exit
  %.pn = phi { ptr, i32 } [ %i.bf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtB4_6option6OptiontEtEECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.g, %bb.b ], [ %lpad.phi.i, %bb.n ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6option6OptiontEENtNtNtB11_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptiontEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2A_14PrimitiveArrayNtNtB2E_5types10UInt16TypeEINtNtNtBN_6traits7collect12FromIteratorB22_E9from_iterB1e_E0EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5256
  store ptr %i.e, ptr %i.b, align 8, !noalias !5256
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.e, ptr %i.h, align 8, !noalias !5256
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptiontEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2i_14PrimitiveArrayNtNtB2m_5types10UInt16TypeEINtNtNtB9_6traits7collect12FromIteratorB1K_E9from_iterBW_E0ENtNtB43_8iterator8Iterator24___iterator_get_uncheckedCs14kWLkQVSKO_14deltalake_core.exit.i, %.lr.ph.i
  %.sroa.0.01.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bc, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptiontEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2i_14PrimitiveArrayNtNtB2m_5types10UInt16TypeEINtNtNtB9_6traits7collect12FromIteratorB1K_E9from_iterBW_E0ENtNtB43_8iterator8Iterator24___iterator_get_uncheckedCs14kWLkQVSKO_14deltalake_core.exit.i ] ; 3 uses
  %.val.i = load ptr, ptr %i.i, align 8, !alias.scope !5256, !nonnull !3, !noundef !3
  %.val6.i = load ptr, ptr %i.j, align 8, !alias.scope !5256, !nonnull !3, !noundef !3 ; 9 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.sroa.0.01.i ; 2 uses
  %i.l = load i16, ptr %i.k, align 2, !range !5243, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.n = load i16, ptr %i.m, align 2
  %i.o = trunc nuw i16 %i.l to i1
  %2 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 32 ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 24 ; 5 uses
  %i.p = load i64, ptr %2, align 8, !noundef !3   ; 3 uses
  %i.q = add i64 %i.p, 1                          ; 4 uses
  %i.r = lshr i64 %i.q, 3
  %i.s = and i64 %i.q, 7
  %.not.i.i.i.i = icmp ne i64 %i.s, 0
  %i.t = zext i1 %.not.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i = add nuw nsw i64 %i.r, %i.t ; 15 uses
  %i.u = load i64, ptr %3, align 8, !noundef !3   ; 5 uses
  %i.v = icmp ugt i64 %.sroa.0.0.i.i.i.i, %i.u    ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  br i1 %i.v, label %bb.e, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.w = sub nuw nsw i64 %.sroa.0.0.i.i.i.i, %i.u
  %4 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8
  %i.x = load i64, ptr %4, align 8, !alias.scope !5259, !noundef !3 ; 2 uses
  %i.y = icmp ugt i64 %.sroa.0.0.i.i.i.i, %i.x
  br i1 %i.y, label %bb.f, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i, !prof !4

bb.f:                                             ; preds = %bb.e
  %i.z = and i64 %.sroa.0.0.i.i.i.i, 63
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %reass.sub.i.i.i.i.i = and i64 %.sroa.0.0.i.i.i.i, 4611686018427387840
  %i.ab = add nuw nsw i64 %reass.sub.i.i.i.i.i, 64 ; 2 uses
  %i.ac = icmp samesign ult i64 %i.ab, %.sroa.0.0.i.i.i.i
  br i1 %i.ac, label %.invoke.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %bb.f ], [ %i.ab, %bb.g ]
  %i.ad = shl nuw nsw i64 %i.x, 1
  %.sroa.0.0.i.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.ad, i64 %.sroa.4.0.i.i.i.i.i)
  invoke void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val6.i, i64 noundef %.sroa.0.0.i.i.i.i.i)
          to label %.noexc.i unwind label %.loopexit.i

.noexc.i:                                         ; preds = %bb.h
  %.pre.i.i.i.i = load i64, ptr %3, align 8, !alias.scope !5264
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i

.invoke.i:                                        ; preds = %bb.l, %bb.g
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @120, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @122) #49
          to label %.cont.i unwind label %.loopexit.split-lp.i

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i: ; preds = %.noexc.i, %bb.e
  %i.ae = phi i64 [ %i.u, %bb.e ], [ %.pre.i.i.i.i, %.noexc.i ]
  %5 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.af = load ptr, ptr %5, align 8, !alias.scope !5264, !nonnull !3, !noundef !3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ae
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ag, i8 0, i64 %i.w, i1 false)
  store i64 %.sroa.0.0.i.i.i.i, ptr %3, align 8, !alias.scope !5264
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i: ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i, %bb.d
  store i64 %i.q, ptr %2, align 8, !alias.scope !5264
  %6 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.ah = load ptr, ptr %6, align 8, !nonnull !3, !noundef !3
  %i.ai = trunc i64 %i.p to i8
  %i.aj = and i8 %i.ai, 7
  %i.ak = shl nuw i8 1, %i.aj
  %i.al = lshr i64 %i.p, 3
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.al ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !noundef !3
  %i.ao = or i8 %i.an, %i.ak
  store i8 %i.ao, ptr %i.am, align 1
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptiontEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2i_14PrimitiveArrayNtNtB2m_5types10UInt16TypeEINtNtNtB9_6traits7collect12FromIteratorB1K_E9from_iterBW_E0ENtNtB43_8iterator8Iterator24___iterator_get_uncheckedCs14kWLkQVSKO_14deltalake_core.exit.i

bb.i:                                             ; preds = %bb.c
  br i1 %i.v, label %bb.j, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit10.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ap = sub nuw nsw i64 %.sroa.0.0.i.i.i.i, %i.u
  %7 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8
  %i.aq = load i64, ptr %7, align 8, !alias.scope !5265, !noundef !3 ; 2 uses
  %i.ar = icmp ugt i64 %.sroa.0.0.i.i.i.i, %i.aq
  br i1 %i.ar, label %bb.k, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i5.i.i.i, !prof !4

bb.k:                                             ; preds = %bb.j
  %i.as = and i64 %.sroa.0.0.i.i.i.i, 63
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %reass.sub.i.i6.i.i.i = and i64 %.sroa.0.0.i.i.i.i, 4611686018427387840
  %i.au = add nuw nsw i64 %reass.sub.i.i6.i.i.i, 64 ; 2 uses
  %i.av = icmp samesign ult i64 %i.au, %.sroa.0.0.i.i.i.i
  br i1 %i.av, label %.invoke.i, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.4.0.i.i7.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %bb.k ], [ %i.au, %bb.l ]
  %i.aw = shl nuw nsw i64 %i.aq, 1
  %.sroa.0.0.i.i8.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.aw, i64 %.sroa.4.0.i.i7.i.i.i)
  invoke void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val6.i, i64 noundef %.sroa.0.0.i.i8.i.i.i)
          to label %.noexc8.i unwind label %.loopexit.i

.noexc8.i:                                        ; preds = %bb.m
  %.pre.i9.i.i.i = load i64, ptr %3, align 8, !alias.scope !5270
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i5.i.i.i

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i5.i.i.i: ; preds = %.noexc8.i, %bb.j
  %i.ax = phi i64 [ %i.u, %bb.j ], [ %.pre.i9.i.i.i, %.noexc8.i ]
  %8 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.ay = load ptr, ptr %8, align 8, !alias.scope !5270, !nonnull !3, !noundef !3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.az, i8 0, i64 %i.ap, i1 false)
  store i64 %.sroa.0.0.i.i.i.i, ptr %3, align 8, !alias.scope !5270
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit10.i.i.i

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit10.i.i.i: ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i5.i.i.i, %bb.i
  store i64 %i.q, ptr %2, align 8, !alias.scope !5270
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptiontEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2i_14PrimitiveArrayNtNtB2m_5types10UInt16TypeEINtNtNtB9_6traits7collect12FromIteratorB1K_E9from_iterBW_E0ENtNtB43_8iterator8Iterator24___iterator_get_uncheckedCs14kWLkQVSKO_14deltalake_core.exit.i

.loopexit.i:                                      ; preds = %bb.m, %bb.h
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp.i:                             ; preds = %.invoke.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.ba = invoke noundef i64 @_RNvMNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_dropINtB2_11InPlaceDroptE3lenCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %.body unwind label %bb.o      ; 0 uses

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptiontEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2i_14PrimitiveArrayNtNtB2m_5types10UInt16TypeEINtNtNtB9_6traits7collect12FromIteratorB1K_E9from_iterBW_E0ENtNtB43_8iterator8Iterator24___iterator_get_uncheckedCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit10.i.i.i, %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i
  %.sroa.0.0.i.i.i = phi i16 [ %i.n, %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i ], [ 0, %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit10.i.i.i ]
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.sroa.0.01.i ; 2 uses
  %i.bc = add nuw i64 %.sroa.0.01.i, 1            ; 2 uses
  store i16 %.sroa.0.0.i.i.i, ptr %i.bb, align 2, !noalias !5256
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  store ptr %i.bd, ptr %i.h, align 8, !noalias !5256
  %exitcond.not.i = icmp eq i64 %i.bc, %i.f
  br i1 %exitcond.not.i, label %.loopexit, label %bb.c

bb.o:                                             ; preds = %bb.n
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

.loopexit:                                        ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptiontEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2i_14PrimitiveArrayNtNtB2m_5types10UInt16TypeEINtNtNtB9_6traits7collect12FromIteratorB1K_E9from_iterBW_E0ENtNtB43_8iterator8Iterator24___iterator_get_uncheckedCs14kWLkQVSKO_14deltalake_core.exit.i, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5256
  invoke void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6option6OptiontEE32forget_allocation_drop_remainingCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %.loopexit
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.d, ptr %i.a, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.bg, align 8
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6option6OptiontEENtNtNtBR_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtB4_6option6OptiontEtEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.r

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtB4_6option6OptiontEtEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.body

bb.q:                                             ; preds = %.loopexit
  %i.bh = shl nuw i64 %i.d, 1
  store i64 %i.bh, ptr %0, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.bj, align 8
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6option6OptiontEENtNtNtB11_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
  ret void

bb.r:                                             ; preds = %bb.p, %.body
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptiontEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2A_14PrimitiveArrayNtNtB2E_5types10UInt16TypeEINtNtNtBN_6traits7collect12FromIteratorB22_E9from_iterB1e_E0EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterINtNtB1f_6option6OptionxEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2U_14PrimitiveArrayNtNtB2Y_5types9Int64TypeEINtNtNtB1d_6traits7collect12FromIteratorB2l_E9from_iterB1U_E0ExECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5271)
  %i.f = invoke noundef i64 @_RNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionxEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2c_14PrimitiveArrayNtNtB2g_5types9Int64TypeEINtNtNtB9_6traits7collect12FromIteratorB1E_E9from_iterBQ_E0ENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
          to label %.noexc unwind label %bb.b     ; 3 uses

.body:                                            ; preds = %bb.n, %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtB4_6option6OptionxExEECs14kWLkQVSKO_14deltalake_core.exit
  %.pn = phi { ptr, i32 } [ %i.bf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtB4_6option6OptionxExEECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.g, %bb.b ], [ %lpad.phi.i, %bb.n ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6option6OptionxEENtNtNtB11_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionxEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2A_14PrimitiveArrayNtNtB2E_5types9Int64TypeEINtNtNtBN_6traits7collect12FromIteratorB22_E9from_iterB1e_E0EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5271
  store ptr %i.e, ptr %i.b, align 8, !noalias !5271
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.e, ptr %i.h, align 8, !noalias !5271
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionxEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2i_14PrimitiveArrayNtNtB2m_5types9Int64TypeEINtNtNtB9_6traits7collect12FromIteratorB1K_E9from_iterBW_E0ENtNtB41_8iterator8Iterator24___iterator_get_uncheckedCs14kWLkQVSKO_14deltalake_core.exit.i, %.lr.ph.i
  %.sroa.0.01.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bc, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionxEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2i_14PrimitiveArrayNtNtB2m_5types9Int64TypeEINtNtNtB9_6traits7collect12FromIteratorB1K_E9from_iterBW_E0ENtNtB41_8iterator8Iterator24___iterator_get_uncheckedCs14kWLkQVSKO_14deltalake_core.exit.i ] ; 3 uses
  %.val.i = load ptr, ptr %i.i, align 8, !alias.scope !5271, !nonnull !3, !noundef !3
  %.val6.i = load ptr, ptr %i.j, align 8, !alias.scope !5271, !nonnull !3, !noundef !3 ; 9 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %.sroa.0.01.i ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !range !5, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load i64, ptr %i.m, align 8
  %i.o = trunc nuw i64 %i.l to i1
  %2 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 32 ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 24 ; 5 uses
  %i.p = load i64, ptr %2, align 8, !noundef !3   ; 3 uses
  %i.q = add i64 %i.p, 1                          ; 4 uses
  %i.r = lshr i64 %i.q, 3
  %i.s = and i64 %i.q, 7
  %.not.i.i.i.i = icmp ne i64 %i.s, 0
  %i.t = zext i1 %.not.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i = add nuw nsw i64 %i.r, %i.t ; 15 uses
  %i.u = load i64, ptr %3, align 8, !noundef !3   ; 5 uses
  %i.v = icmp ugt i64 %.sroa.0.0.i.i.i.i, %i.u    ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  br i1 %i.v, label %bb.e, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.w = sub nuw nsw i64 %.sroa.0.0.i.i.i.i, %i.u
  %4 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8
  %i.x = load i64, ptr %4, align 8, !alias.scope !5274, !noundef !3 ; 2 uses
  %i.y = icmp ugt i64 %.sroa.0.0.i.i.i.i, %i.x
  br i1 %i.y, label %bb.f, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i, !prof !4

bb.f:                                             ; preds = %bb.e
  %i.z = and i64 %.sroa.0.0.i.i.i.i, 63
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %reass.sub.i.i.i.i.i = and i64 %.sroa.0.0.i.i.i.i, 4611686018427387840
  %i.ab = add nuw nsw i64 %reass.sub.i.i.i.i.i, 64 ; 2 uses
  %i.ac = icmp samesign ult i64 %i.ab, %.sroa.0.0.i.i.i.i
  br i1 %i.ac, label %.invoke.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %bb.f ], [ %i.ab, %bb.g ]
  %i.ad = shl nuw nsw i64 %i.x, 1
  %.sroa.0.0.i.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.ad, i64 %.sroa.4.0.i.i.i.i.i)
  invoke void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val6.i, i64 noundef %.sroa.0.0.i.i.i.i.i)
          to label %.noexc.i unwind label %.loopexit.i

.noexc.i:                                         ; preds = %bb.h
  %.pre.i.i.i.i = load i64, ptr %3, align 8, !alias.scope !5279
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i

.invoke.i:                                        ; preds = %bb.l, %bb.g
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @120, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @122) #49
          to label %.cont.i unwind label %.loopexit.split-lp.i

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i: ; preds = %.noexc.i, %bb.e
  %i.ae = phi i64 [ %i.u, %bb.e ], [ %.pre.i.i.i.i, %.noexc.i ]
  %5 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.af = load ptr, ptr %5, align 8, !alias.scope !5279, !nonnull !3, !noundef !3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ae
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ag, i8 0, i64 %i.w, i1 false)
  store i64 %.sroa.0.0.i.i.i.i, ptr %3, align 8, !alias.scope !5279
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i: ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i, %bb.d
  store i64 %i.q, ptr %2, align 8, !alias.scope !5279
  %6 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.ah = load ptr, ptr %6, align 8, !nonnull !3, !noundef !3
  %i.ai = trunc i64 %i.p to i8
  %i.aj = and i8 %i.ai, 7
  %i.ak = shl nuw i8 1, %i.aj
  %i.al = lshr i64 %i.p, 3
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.al ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !noundef !3
  %i.ao = or i8 %i.an, %i.ak
  store i8 %i.ao, ptr %i.am, align 1
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionxEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2i_14PrimitiveArrayNtNtB2m_5types9Int64TypeEINtNtNtB9_6traits7collect12FromIteratorB1K_E9from_iterBW_E0ENtNtB41_8iterator8Iterator24___iterator_get_uncheckedCs14kWLkQVSKO_14deltalake_core.exit.i

bb.i:                                             ; preds = %bb.c
  br i1 %i.v, label %bb.j, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit10.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ap = sub nuw nsw i64 %.sroa.0.0.i.i.i.i, %i.u
  %7 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8
  %i.aq = load i64, ptr %7, align 8, !alias.scope !5280, !noundef !3 ; 2 uses
  %i.ar = icmp ugt i64 %.sroa.0.0.i.i.i.i, %i.aq
  br i1 %i.ar, label %bb.k, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i5.i.i.i, !prof !4

bb.k:                                             ; preds = %bb.j
  %i.as = and i64 %.sroa.0.0.i.i.i.i, 63
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %reass.sub.i.i6.i.i.i = and i64 %.sroa.0.0.i.i.i.i, 4611686018427387840
  %i.au = add nuw nsw i64 %reass.sub.i.i6.i.i.i, 64 ; 2 uses
  %i.av = icmp samesign ult i64 %i.au, %.sroa.0.0.i.i.i.i
  br i1 %i.av, label %.invoke.i, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.4.0.i.i7.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %bb.k ], [ %i.au, %bb.l ]
  %i.aw = shl nuw nsw i64 %i.aq, 1
  %.sroa.0.0.i.i8.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.aw, i64 %.sroa.4.0.i.i7.i.i.i)
  invoke void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val6.i, i64 noundef %.sroa.0.0.i.i8.i.i.i)
          to label %.noexc8.i unwind label %.loopexit.i

.noexc8.i:                                        ; preds = %bb.m
  %.pre.i9.i.i.i = load i64, ptr %3, align 8, !alias.scope !5285
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i5.i.i.i

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i5.i.i.i: ; preds = %.noexc8.i, %bb.j
  %i.ax = phi i64 [ %i.u, %bb.j ], [ %.pre.i9.i.i.i, %.noexc8.i ]
  %8 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.ay = load ptr, ptr %8, align 8, !alias.scope !5285, !nonnull !3, !noundef !3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.az, i8 0, i64 %i.ap, i1 false)
  store i64 %.sroa.0.0.i.i.i.i, ptr %3, align 8, !alias.scope !5285
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit10.i.i.i

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit10.i.i.i: ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i5.i.i.i, %bb.i
  store i64 %i.q, ptr %2, align 8, !alias.scope !5285
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionxEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2i_14PrimitiveArrayNtNtB2m_5types9Int64TypeEINtNtNtB9_6traits7collect12FromIteratorB1K_E9from_iterBW_E0ENtNtB41_8iterator8Iterator24___iterator_get_uncheckedCs14kWLkQVSKO_14deltalake_core.exit.i

.loopexit.i:                                      ; preds = %bb.m, %bb.h
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp.i:                             ; preds = %.invoke.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.ba = invoke noundef i64 @_RNvMNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_dropINtB2_11InPlaceDropxE3lenCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %.body unwind label %bb.o      ; 0 uses

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionxEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2i_14PrimitiveArrayNtNtB2m_5types9Int64TypeEINtNtNtB9_6traits7collect12FromIteratorB1K_E9from_iterBW_E0ENtNtB41_8iterator8Iterator24___iterator_get_uncheckedCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit10.i.i.i, %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i
  %.sroa.0.0.i.i.i = phi i64 [ %i.n, %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i ], [ 0, %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit10.i.i.i ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.sroa.0.01.i ; 2 uses
  %i.bc = add nuw i64 %.sroa.0.01.i, 1            ; 2 uses
  store i64 %.sroa.0.0.i.i.i, ptr %i.bb, align 8, !noalias !5271
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.bd, ptr %i.h, align 8, !noalias !5271
  %exitcond.not.i = icmp eq i64 %i.bc, %i.f
  br i1 %exitcond.not.i, label %.loopexit, label %bb.c

bb.o:                                             ; preds = %bb.n
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

.loopexit:                                        ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionxEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2i_14PrimitiveArrayNtNtB2m_5types9Int64TypeEINtNtNtB9_6traits7collect12FromIteratorB1K_E9from_iterBW_E0ENtNtB41_8iterator8Iterator24___iterator_get_uncheckedCs14kWLkQVSKO_14deltalake_core.exit.i, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5271
  invoke void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6option6OptionxEE32forget_allocation_drop_remainingCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %.loopexit
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.d, ptr %i.a, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.bg, align 8
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6option6OptionxEENtNtNtBR_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtB4_6option6OptionxExEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.r

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtB4_6option6OptionxExEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.body

bb.q:                                             ; preds = %.loopexit
  %i.bh = shl nuw i64 %i.d, 1
  store i64 %i.bh, ptr %0, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.bj, align 8
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6option6OptionxEENtNtNtB11_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
  ret void

bb.r:                                             ; preds = %bb.p, %.body
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionxEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2A_14PrimitiveArrayNtNtB2E_5types9Int64TypeEINtNtNtBN_6traits7collect12FromIteratorB22_E9from_iterB1e_E0EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterINtNtB1f_6option6OptionyEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2U_14PrimitiveArrayNtNtB2Y_5types10UInt64TypeEINtNtNtB1d_6traits7collect12FromIteratorB2l_E9from_iterB1U_E0EyECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5286)
  %i.f = invoke noundef i64 @_RNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionyEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2c_14PrimitiveArrayNtNtB2g_5types10UInt64TypeEINtNtNtB9_6traits7collect12FromIteratorB1E_E9from_iterBQ_E0ENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
          to label %.noexc unwind label %bb.b     ; 3 uses

.body:                                            ; preds = %bb.n, %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtB4_6option6OptionyEyEECs14kWLkQVSKO_14deltalake_core.exit
  %.pn = phi { ptr, i32 } [ %i.bf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtB4_6option6OptionyEyEECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.g, %bb.b ], [ %lpad.phi.i, %bb.n ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6option6OptionyEENtNtNtB11_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionyEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2A_14PrimitiveArrayNtNtB2E_5types10UInt64TypeEINtNtNtBN_6traits7collect12FromIteratorB22_E9from_iterB1e_E0EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5286
  store ptr %i.e, ptr %i.b, align 8, !noalias !5286
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.e, ptr %i.h, align 8, !noalias !5286
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionyEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2i_14PrimitiveArrayNtNtB2m_5types10UInt64TypeEINtNtNtB9_6traits7collect12FromIteratorB1K_E9from_iterBW_E0ENtNtB43_8iterator8Iterator24___iterator_get_uncheckedCs14kWLkQVSKO_14deltalake_core.exit.i, %.lr.ph.i
  %.sroa.0.01.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bc, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionyEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2i_14PrimitiveArrayNtNtB2m_5types10UInt64TypeEINtNtNtB9_6traits7collect12FromIteratorB1K_E9from_iterBW_E0ENtNtB43_8iterator8Iterator24___iterator_get_uncheckedCs14kWLkQVSKO_14deltalake_core.exit.i ] ; 3 uses
  %.val.i = load ptr, ptr %i.i, align 8, !alias.scope !5286, !nonnull !3, !noundef !3
  %.val6.i = load ptr, ptr %i.j, align 8, !alias.scope !5286, !nonnull !3, !noundef !3 ; 9 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %.sroa.0.01.i ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !range !5, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load i64, ptr %i.m, align 8
  %i.o = trunc nuw i64 %i.l to i1
  %2 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 32 ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 24 ; 5 uses
  %i.p = load i64, ptr %2, align 8, !noundef !3   ; 3 uses
  %i.q = add i64 %i.p, 1                          ; 4 uses
  %i.r = lshr i64 %i.q, 3
  %i.s = and i64 %i.q, 7
  %.not.i.i.i.i = icmp ne i64 %i.s, 0
  %i.t = zext i1 %.not.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i = add nuw nsw i64 %i.r, %i.t ; 15 uses
  %i.u = load i64, ptr %3, align 8, !noundef !3   ; 5 uses
  %i.v = icmp ugt i64 %.sroa.0.0.i.i.i.i, %i.u    ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  br i1 %i.v, label %bb.e, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.w = sub nuw nsw i64 %.sroa.0.0.i.i.i.i, %i.u
  %4 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8
  %i.x = load i64, ptr %4, align 8, !alias.scope !5289, !noundef !3 ; 2 uses
  %i.y = icmp ugt i64 %.sroa.0.0.i.i.i.i, %i.x
  br i1 %i.y, label %bb.f, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i, !prof !4

bb.f:                                             ; preds = %bb.e
  %i.z = and i64 %.sroa.0.0.i.i.i.i, 63
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %reass.sub.i.i.i.i.i = and i64 %.sroa.0.0.i.i.i.i, 4611686018427387840
  %i.ab = add nuw nsw i64 %reass.sub.i.i.i.i.i, 64 ; 2 uses
  %i.ac = icmp samesign ult i64 %i.ab, %.sroa.0.0.i.i.i.i
  br i1 %i.ac, label %.invoke.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %bb.f ], [ %i.ab, %bb.g ]
  %i.ad = shl nuw nsw i64 %i.x, 1
  %.sroa.0.0.i.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.ad, i64 %.sroa.4.0.i.i.i.i.i)
  invoke void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val6.i, i64 noundef %.sroa.0.0.i.i.i.i.i)
          to label %.noexc.i unwind label %.loopexit.i

.noexc.i:                                         ; preds = %bb.h
  %.pre.i.i.i.i = load i64, ptr %3, align 8, !alias.scope !5294
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i

.invoke.i:                                        ; preds = %bb.l, %bb.g
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @120, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @122) #49
          to label %.cont.i unwind label %.loopexit.split-lp.i

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i: ; preds = %.noexc.i, %bb.e
  %i.ae = phi i64 [ %i.u, %bb.e ], [ %.pre.i.i.i.i, %.noexc.i ]
  %5 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.af = load ptr, ptr %5, align 8, !alias.scope !5294, !nonnull !3, !noundef !3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ae
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ag, i8 0, i64 %i.w, i1 false)
  store i64 %.sroa.0.0.i.i.i.i, ptr %3, align 8, !alias.scope !5294
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i: ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i.i.i.i, %bb.d
  store i64 %i.q, ptr %2, align 8, !alias.scope !5294
  %6 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.ah = load ptr, ptr %6, align 8, !nonnull !3, !noundef !3
  %i.ai = trunc i64 %i.p to i8
  %i.aj = and i8 %i.ai, 7
  %i.ak = shl nuw i8 1, %i.aj
  %i.al = lshr i64 %i.p, 3
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.al ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !noundef !3
  %i.ao = or i8 %i.an, %i.ak
  store i8 %i.ao, ptr %i.am, align 1
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionyEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2i_14PrimitiveArrayNtNtB2m_5types10UInt64TypeEINtNtNtB9_6traits7collect12FromIteratorB1K_E9from_iterBW_E0ENtNtB43_8iterator8Iterator24___iterator_get_uncheckedCs14kWLkQVSKO_14deltalake_core.exit.i

bb.i:                                             ; preds = %bb.c
  br i1 %i.v, label %bb.j, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit10.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ap = sub nuw nsw i64 %.sroa.0.0.i.i.i.i, %i.u
  %7 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8
  %i.aq = load i64, ptr %7, align 8, !alias.scope !5295, !noundef !3 ; 2 uses
  %i.ar = icmp ugt i64 %.sroa.0.0.i.i.i.i, %i.aq
  br i1 %i.ar, label %bb.k, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i5.i.i.i, !prof !4

bb.k:                                             ; preds = %bb.j
  %i.as = and i64 %.sroa.0.0.i.i.i.i, 63
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %reass.sub.i.i6.i.i.i = and i64 %.sroa.0.0.i.i.i.i, 4611686018427387840
  %i.au = add nuw nsw i64 %reass.sub.i.i6.i.i.i, 64 ; 2 uses
  %i.av = icmp samesign ult i64 %i.au, %.sroa.0.0.i.i.i.i
  br i1 %i.av, label %.invoke.i, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.4.0.i.i7.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %bb.k ], [ %i.au, %bb.l ]
  %i.aw = shl nuw nsw i64 %i.aq, 1
  %.sroa.0.0.i.i8.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.aw, i64 %.sroa.4.0.i.i7.i.i.i)
  invoke void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val6.i, i64 noundef %.sroa.0.0.i.i8.i.i.i)
          to label %.noexc8.i unwind label %.loopexit.i

.noexc8.i:                                        ; preds = %bb.m
  %.pre.i9.i.i.i = load i64, ptr %3, align 8, !alias.scope !5300
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i5.i.i.i

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i5.i.i.i: ; preds = %.noexc8.i, %bb.j
  %i.ax = phi i64 [ %i.u, %bb.j ], [ %.pre.i9.i.i.i, %.noexc8.i ]
  %8 = getelementptr inbounds nuw i8, ptr %.val6.i, i64 16
  %i.ay = load ptr, ptr %8, align 8, !alias.scope !5300, !nonnull !3, !noundef !3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.az, i8 0, i64 %i.ap, i1 false)
  store i64 %.sroa.0.0.i.i.i.i, ptr %3, align 8, !alias.scope !5300
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit10.i.i.i

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit10.i.i.i: ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i5.i.i.i, %bb.i
  store i64 %i.q, ptr %2, align 8, !alias.scope !5300
  br label %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionyEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2i_14PrimitiveArrayNtNtB2m_5types10UInt64TypeEINtNtNtB9_6traits7collect12FromIteratorB1K_E9from_iterBW_E0ENtNtB43_8iterator8Iterator24___iterator_get_uncheckedCs14kWLkQVSKO_14deltalake_core.exit.i

.loopexit.i:                                      ; preds = %bb.m, %bb.h
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp.i:                             ; preds = %.invoke.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.ba = invoke noundef i64 @_RNvMNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_dropINtB2_11InPlaceDropyE3lenCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %.body unwind label %bb.o      ; 0 uses

_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionyEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2i_14PrimitiveArrayNtNtB2m_5types10UInt64TypeEINtNtNtB9_6traits7collect12FromIteratorB1K_E9from_iterBW_E0ENtNtB43_8iterator8Iterator24___iterator_get_uncheckedCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit10.i.i.i, %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i
  %.sroa.0.0.i.i.i = phi i64 [ %i.n, %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit.i.i.i ], [ 0, %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit10.i.i.i ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.sroa.0.01.i ; 2 uses
  %i.bc = add nuw i64 %.sroa.0.01.i, 1            ; 2 uses
  store i64 %.sroa.0.0.i.i.i, ptr %i.bb, align 8, !noalias !5286
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.bd, ptr %i.h, align 8, !noalias !5286
  %exitcond.not.i = icmp eq i64 %i.bc, %i.f
  br i1 %exitcond.not.i, label %.loopexit, label %bb.c

bb.o:                                             ; preds = %bb.n
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

.loopexit:                                        ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBb_6option6OptionyEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2i_14PrimitiveArrayNtNtB2m_5types10UInt64TypeEINtNtNtB9_6traits7collect12FromIteratorB1K_E9from_iterBW_E0ENtNtB43_8iterator8Iterator24___iterator_get_uncheckedCs14kWLkQVSKO_14deltalake_core.exit.i, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5286
  invoke void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6option6OptionyEE32forget_allocation_drop_remainingCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %.loopexit
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.d, ptr %i.a, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.bg, align 8
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6option6OptionyEENtNtNtBR_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtB4_6option6OptionyEyEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.r

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtB4_6option6OptionyEyEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.body

bb.q:                                             ; preds = %.loopexit
  %i.bh = shl nuw i64 %i.d, 1
  store i64 %i.bh, ptr %0, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.bj, align 8
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6option6OptionyEENtNtNtB11_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
  ret void

bb.r:                                             ; preds = %bb.p, %.body
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionyEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2A_14PrimitiveArrayNtNtB2E_5types10UInt64TypeEINtNtNtBN_6traits7collect12FromIteratorB22_E9from_iterB1e_E0EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENCNCNCNvXs2_NtB2n_6prefixINtB3e_11PrefixStoreINtNtB6_4sync3ArcDNtB2n_11ObjectStoreEL_EEB43_19list_with_delimiter00s_0EB2l_ECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !3
  %i.g = invoke { ptr, ptr } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENCNCNCNvXs2_NtB1N_6prefixINtB2E_11PrefixStoreINtNtB14_4sync3ArcDNtB1N_11ObjectStoreEL_EEB3u_19list_with_delimiter00s_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1L_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB1L_E0INtNtBc_6result6ResultB54_zEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENCNCNCNvXs2_NtB24_6prefixINtB2V_11PrefixStoreINtNtB1l_4sync3ArcDNtB24_11ObjectStoreEL_EEB3L_19list_with_delimiter00s_0EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 96                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaE32forget_allocation_drop_remainingCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtCsjyY8HP3IvQ6_12object_store10ObjectMetaB1Q_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #50
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENCNCNCNvXs2_NtB24_6prefixINtB2V_11PrefixStoreINtNtB1l_4sync3ArcDNtB24_11ObjectStoreEL_EEB3L_19list_with_delimiter00s_0EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtB6_6string6StringENCINvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB2Q_13CreateBuilder22with_partition_columnsB2l_INtB4_3VecB2l_EE0EB2l_EB2U_(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !3
  %i.g = invoke { ptr, ptr } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtB14_6string6StringENCINvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB2h_13CreateBuilder22with_partition_columnsB1L_INtB12_3VecB1L_EE0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1L_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB1L_E0INtNtBc_6result6ResultB4V_zEEB2l_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtB1l_6string6StringENCINvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB2y_13CreateBuilder22with_partition_columnsB22_INtB1j_3VecB22_EE0EEB2C_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringE32forget_allocation_drop_remainingCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtBN_6string6StringB1Q_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #50
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable
end_hunk_0
begin_hunk_1_@_RINvXs1z_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_5QueryNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtBW_6HasherEL_ECs14kWLkQVSKO_14deltalake_core:bb.a
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.ba)
  br i1 %i.az, label %bb.o, label %_RINvXsf9_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_9ForClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB10_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit

bb.o:                                             ; preds = %_RINvXscZ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_5FetchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtBW_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8157)
  %i.bb = add nsw i64 %i.ay, -4
  %i.bc = icmp samesign ugt i64 %i.ay, 3
  %i.bd = select i1 %i.bc, i64 %i.bb, i64 2       ; 2 uses
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.bd), !noalias !8157
  switch i64 %i.bd, label %bb.p [
    i64 1, label %bb.q
    i64 2, label %bb.r
    i64 0, label %_RINvXsf9_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_9ForClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB10_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit
  ]

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = load i8, ptr %i.be, align 8, !range !136, !alias.scope !8157, !noalias !8160, !noundef !3
  %i.bg = zext nneg i8 %i.bf to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.bg), !noalias !8157
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !range !140, !alias.scope !8157, !noalias !8160, !noundef !3
  %i.bj = icmp ne i64 %i.bi, -9223372036854775808 ; 2 uses
  %i.bk = zext i1 %i.bj to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.bk), !noalias !8157
  br i1 %i.bj, label %bb.u, label %bb.v

bb.r:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8162)
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.ay), !noalias !8165
  switch i64 %i.ay, label %_RINvXsfj_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_6ForXmlNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtBX_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit.i [
    i64 0, label %bb.s
    i64 3, label %bb.t
  ]

.sink.split.i.i:                                  ; preds = %bb.t, %bb.s
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !8165, !noalias !8166, !nonnull !3, !noundef !3
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !8165, !noalias !8166, !noundef !3
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_9write_strCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bm, i64 noundef %i.bo), !noalias !8165
  br label %_RINvXsfj_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_6ForXmlNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtBX_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit.i

bb.s:                                             ; preds = %bb.r
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !range !140, !alias.scope !8165, !noalias !8166, !noundef !3
  %i.br = icmp ne i64 %i.bq, -9223372036854775808 ; 2 uses
  %i.bs = zext i1 %i.br to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.bs), !noalias !8165
  br i1 %i.br, label %.sink.split.i.i, label %_RINvXsfj_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_6ForXmlNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtBX_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit.i

bb.t:                                             ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !range !140, !alias.scope !8165, !noalias !8166, !noundef !3
  %i.bv = icmp ne i64 %i.bu, -9223372036854775808 ; 2 uses
  %i.bw = zext i1 %i.bv to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.bw), !noalias !8165
  br i1 %i.bv, label %.sink.split.i.i, label %_RINvXsfj_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_6ForXmlNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtBX_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvXsfj_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_6ForXmlNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtBX_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.t, %bb.s, %.sink.split.i.i, %bb.r
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.by = load i8, ptr %i.bx, align 8, !range !136, !alias.scope !8157, !noalias !8160, !noundef !3
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_8write_u8Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i8 noundef %i.by), !noalias !8157
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.ca = load i8, ptr %i.bz, align 1, !range !136, !alias.scope !8157, !noalias !8160, !noundef !3
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_8write_u8Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i8 noundef %i.ca), !noalias !8157
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cc = load i64, ptr %i.cb, align 8, !range !140, !alias.scope !8157, !noalias !8160, !noundef !3
  %i.cd = icmp ne i64 %i.cc, -9223372036854775808 ; 2 uses
  %i.ce = zext i1 %i.cd to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.ce), !noalias !8157
  br i1 %i.cd, label %bb.w, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.w, %bb.v, %_RINvXsfj_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_6ForXmlNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtBX_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sink.i = phi i64 [ 34, %bb.v ], [ 58, %bb.w ], [ 58, %_RINvXsfj_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_6ForXmlNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtBX_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.i
  %i.cg = load i8, ptr %i.cf, align 2, !range !136, !alias.scope !8157, !noalias !8160, !noundef !3
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_8write_u8Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i8 noundef %i.cg), !noalias !8157
  br label %_RINvXsf9_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_9ForClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB10_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.q
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !8157, !noalias !8160, !nonnull !3, !noundef !3
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !8157, !noalias !8160, !noundef !3
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_9write_strCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ci, i64 noundef %i.ck), !noalias !8157
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.q
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.cm = load i8, ptr %i.cl, align 1, !range !136, !alias.scope !8157, !noalias !8160, !noundef !3
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_8write_u8Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i8 noundef %i.cm), !noalias !8157
  br label %.sink.split.i

bb.w:                                             ; preds = %_RINvXsfj_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_6ForXmlNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtBX_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.co = load ptr, ptr %i.cn, align 8, !alias.scope !8157, !noalias !8160, !nonnull !3, !noundef !3
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !8157, !noalias !8160, !noundef !3
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_9write_strCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.co, i64 noundef %i.cq), !noalias !8157
  br label %.sink.split.i

_RINvXsf9_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_9ForClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB10_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.sink.split.i, %bb.o, %_RINvXscZ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_5FetchNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtBW_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.cs = load i64, ptr %i.cr, align 8, !range !140, !noundef !3
  %i.ct = icmp ne i64 %i.cs, -9223372036854775808 ; 2 uses
  %i.cu = zext i1 %i.ct to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.cu)
  br i1 %i.ct, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_RINvXsf9_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_9ForClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB10_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.cw = load ptr, ptr %i.cv, align 8, !nonnull !3, !noundef !3
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.cy = load i64, ptr %i.cx, align 8, !noundef !3 ; 2 uses
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_19write_length_prefixCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.cy)
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceQDNtBR_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cw, i64 noundef %i.cy, ptr noalias noundef nonnull align 8 dereferenceable(16) %1)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_RINvXsf9_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_9ForClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB10_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !range !816, !noundef !3 ; 2 uses
  %i.db = icmp ne i64 %i.da, -9223372036854775807 ; 2 uses
  %i.dc = zext i1 %i.db to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.dc)
  br i1 %i.db, label %bb.z, label %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB14_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit

bb.z:                                             ; preds = %bb.y
  %i.dd = icmp eq i64 %i.da, -9223372036854775808 ; 2 uses
  %i.de = zext i1 %i.dd to i64
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_11write_isizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.de), !noalias !8168
  br i1 %i.dd, label %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB14_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtBN_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.cz, ptr noalias noundef nonnull align 8 dereferenceable(16) %1)
  br label %_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB14_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit

_RINvXseP_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_12FormatClauseNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB14_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.aa, %bb.z, %bb.y
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.dg = load ptr, ptr %i.df, align 8, !nonnull !3, !noundef !3
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.di = load i64, ptr %i.dh, align 8, !noundef !3 ; 2 uses
  tail call void @_RNvXNtCsbvkFyIu7lgC_4core4hashQDNtB2_6HasherEL_Bu_19write_length_prefixCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.di)
  tail call void @_RINvYNtNtNtCs4lawaffTVVK_9sqlparser3ast5query12PipeOperatorNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceQDNtBX_6HasherEL_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dg, i64 noundef %i.di, ptr noalias noundef nonnull align 8 dereferenceable(16) %1)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @_RINvXs21_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB7_17GeometricTypeKindNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(i8 %.0.val, ptr noalias noundef nonnull align 16 captures(none) dereferenceable(48) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8174)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 16, !alias.scope !8177, !noundef !3 ; 3 uses
  %i.c = icmp ugt i8 %i.b, 64
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext i8 %.0.val to i128
  %i.e = zext nneg i8 %i.b to i128
  %i.f = shl nuw nsw i128 %i.d, %i.e
  %i.g = load i128, ptr %0, align 16, !alias.scope !8177, !noundef !3
  %i.h = or i128 %i.g, %i.f
  %i.i = add nuw i8 %i.b, 64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load i128, ptr %0, align 16, !alias.scope !8177, !noundef !3 ; 2 uses
  %i.k = trunc i128 %i.j to i64
  %i.l = lshr i128 %i.j, 64
  %i.m = trunc nuw i128 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !8177, !noundef !3
  %i.p = xor i64 %i.o, %i.k
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 16, !alias.scope !8177, !nonnull !3, !align !42, !noundef !3
  %i.s = load i64, ptr %i.r, align 8, !noalias !8177, !noundef !3
  %i.t = xor i64 %i.s, %i.m
  %i.u = zext i64 %i.p to i128
  %i.v = zext i64 %i.t to i128
  %i.w = mul nuw i128 %i.v, %i.u                  ; 2 uses
  %i.x = lshr i128 %i.w, 64
  %i.y = xor i128 %i.x, %i.w
  %i.z = trunc i128 %i.y to i64
  store i64 %i.z, ptr %i.n, align 8, !alias.scope !8177
  %i.aa = zext i8 %.0.val to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit: ; preds = %bb.b, %bb.c
  %.sink = phi i128 [ %i.aa, %bb.c ], [ %i.h, %bb.b ]
  %storemerge.i.i = phi i8 [ 64, %bb.c ], [ %i.i, %bb.b ]
  store i128 %.sink, ptr %0, align 16, !alias.scope !8177
  store i8 %storemerge.i.i, ptr %i.a, align 16, !alias.scope !8177
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs29_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_19AlterIndexOperationNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr captures(address, read_provenance) %.8.val, i64 %.16.val, ptr noalias noundef nonnull align 16 dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8181)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8190)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 16, !alias.scope !8193, !noundef !3 ; 3 uses
  %i.c = icmp ugt i8 %i.b, 64
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext i64 %.16.val to i128
  %i.e = zext nneg i8 %i.b to i128
  %i.f = shl nuw i128 %i.d, %i.e
  %i.g = load i128, ptr %0, align 16, !alias.scope !8193, !noundef !3
  %i.h = or i128 %i.g, %i.f
  %i.i = add nuw i8 %i.b, 64
  br label %_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load i128, ptr %0, align 16, !alias.scope !8193, !noundef !3 ; 2 uses
  %i.k = trunc i128 %i.j to i64
  %i.l = lshr i128 %i.j, 64
  %i.m = trunc nuw i128 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !8193, !noundef !3
  %i.p = xor i64 %i.o, %i.k
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 16, !alias.scope !8193, !nonnull !3, !align !42, !noundef !3
  %i.s = load i64, ptr %i.r, align 8, !noalias !8193, !noundef !3
  %i.t = xor i64 %i.s, %i.m
  %i.u = zext i64 %i.p to i128
  %i.v = zext i64 %i.t to i128
  %i.w = mul nuw i128 %i.v, %i.u                  ; 2 uses
  %i.x = lshr i128 %i.w, 64
  %i.y = xor i128 %i.x, %i.w
  %i.z = trunc i128 %i.y to i64
  store i64 %i.z, ptr %i.n, align 8, !alias.scope !8193
  %i.aa = zext i64 %.16.val to i128
  br label %_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b, %bb.c
  %.sink.i.i.i = phi i128 [ %i.aa, %bb.c ], [ %i.h, %bb.b ]
  %storemerge.i.i.i.i.i = phi i8 [ 64, %bb.c ], [ %i.i, %bb.b ]
  store i128 %.sink.i.i.i, ptr %0, align 16, !alias.scope !8193
  store i8 %storemerge.i.i.i.i.i, ptr %i.a, align 16, !alias.scope !8193
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.8.val, i64 noundef %.16.val, ptr noalias noundef nonnull align 16 dereferenceable(48) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs29_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_19AlterIndexOperationNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr captures(address, read_provenance) %.8.val, i64 %.16.val, ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8194
  store i64 %.16.val, ptr %i.a, align 8, !noalias !8194
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8194
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.8.val, i64 noundef %.16.val, ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs2L_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_6SelectNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2432) %0, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2248
  %i.b = load i64, ptr %i.a, align 8, !range !816, !noundef !3 ; 3 uses
  %i.c = icmp ne i64 %i.b, -9223372036854775807   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8206)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 55 uses
  %i.e = load i8, ptr %i.d, align 16, !alias.scope !8209, !noundef !3 ; 4 uses
  %i.f = icmp ugt i8 %i.e, 64
  br i1 %i.f, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit18.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit18

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit18: ; preds = %bb.a
  %i.g = zext i1 %i.c to i128
  %i.h = zext nneg i8 %i.e to i128
  %i.i = shl nuw nsw i128 %i.g, %i.h
  %i.j = load i128, ptr %1, align 16, !alias.scope !8209, !noundef !3
  %i.k = or i128 %i.j, %i.i                       ; 7 uses
  store i128 %i.k, ptr %1, align 16, !alias.scope !8209
  %i.l = add nuw i8 %i.e, 64                      ; 2 uses
  store i8 %i.l, ptr %i.d, align 16, !alias.scope !8209
  br i1 %i.c, label %bb.b, label %_RINvXsdH_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_8DistinctNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit18.thread: ; preds = %bb.a
  %i.m = load i128, ptr %1, align 16, !alias.scope !8209, !noundef !3 ; 2 uses
  %i.n = trunc i128 %i.m to i64
  %i.o = lshr i128 %i.m, 64
  %i.p = trunc nuw i128 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !8209, !noundef !3
  %i.s = xor i64 %i.r, %i.n
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 16, !alias.scope !8209, !nonnull !3, !align !42, !noundef !3
  %i.v = load i64, ptr %i.u, align 8, !noalias !8209, !noundef !3
  %i.w = xor i64 %i.v, %i.p
  %i.x = zext i64 %i.s to i128
  %i.y = zext i64 %i.w to i128
  %i.z = mul nuw i128 %i.y, %i.x                  ; 2 uses
  %i.aa = lshr i128 %i.z, 64
  %i.ab = xor i128 %i.aa, %i.z
  %i.ac = trunc i128 %i.ab to i64
  store i64 %i.ac, ptr %i.q, align 8, !alias.scope !8209
  br i1 %i.c, label %.thread, label %_RINvXsdH_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_8DistinctNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread

.thread:                                          ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit18.thread
  %.not176 = icmp eq i64 %i.b, -9223372036854775808 ; 2 uses
  %i.ad = select i1 %.not176, i128 1, i128 18446744073709551617 ; 3 uses
  store i128 %i.ad, ptr %1, align 16, !alias.scope !8210, !noalias !8217
  store i8 -128, ptr %i.d, align 16, !alias.scope !8210, !noalias !8217
  %extract178 = lshr i128 %i.ad, 64
  %extract.t179 = trunc nuw nsw i128 %extract178 to i64
  %extract = lshr i128 %i.ad, 64
  %extract.t = trunc nuw nsw i128 %extract to i64
  br i1 %.not176, label %_RINvXsdH_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_8DistinctNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread66, label %bb.d

bb.b:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8219)
  %.not175 = icmp eq i64 %i.b, -9223372036854775808 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8221)
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i: ; preds = %bb.b
  %i.ae = select i1 %.not175, i128 0, i128 18446744073709551616
  %i.af = or i128 %i.k, %i.ae                     ; 3 uses
  store i128 %i.af, ptr %1, align 16, !alias.scope !8210, !noalias !8217
  store i8 -128, ptr %i.d, align 16, !alias.scope !8210, !noalias !8217
  %extract180 = lshr i128 %i.af, 64
  %extract.t181 = trunc nuw i128 %extract180 to i64
  %extract.t183 = trunc i128 %i.k to i64
  %extract185 = lshr i128 %i.af, 64
  %extract.t186 = trunc nuw i128 %extract185 to i64
  %extract.t188 = trunc i128 %i.k to i64
  br i1 %.not175, label %_RINvXsdH_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_8DistinctNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread66, label %bb.d

_RINvXsdH_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_8DistinctNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread66: ; preds = %.thread, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i
  %.off64177 = phi i64 [ %extract.t179, %.thread ], [ %extract.t181, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i ]
  %.off0182 = phi i64 [ 1, %.thread ], [ %extract.t183, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !range !1677, !noundef !3 ; 2 uses
  %i.ai = icmp ne i64 %i.ah, 71                   ; 2 uses
  %i.aj = zext i1 %i.ai to i64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit16

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i: ; preds = %bb.b
  %i.ak = trunc i128 %i.k to i64
  %i.al = lshr i128 %i.k, 64
  %i.am = trunc nuw i128 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !8210, !noalias !8217, !noundef !3
  %i.ap = xor i64 %i.ao, %i.ak
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load ptr, ptr %i.aq, align 16, !alias.scope !8210, !noalias !8217, !nonnull !3, !align !42, !noundef !3
  %i.as = load i64, ptr %i.ar, align 8, !noalias !8222, !noundef !3
  %i.at = xor i64 %i.as, %i.am
  %i.au = zext i64 %i.ap to i128
  %i.av = zext i64 %i.at to i128
  %i.aw = mul nuw i128 %i.av, %i.au               ; 2 uses
  %i.ax = lshr i128 %i.aw, 64
  %i.ay = xor i128 %i.ax, %i.aw
  %i.az = trunc i128 %i.ay to i64
  store i64 %i.az, ptr %i.an, align 8, !alias.scope !8210, !noalias !8217
  br i1 %.not175, label %_RINvXsdH_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_8DistinctNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 2256
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !8217, !noalias !8219, !nonnull !3, !noundef !3
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 2264
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !8217, !noalias !8219, !noundef !3 ; 2 uses
  %i.be = zext i64 %i.bd to i128
  %i.bf = shl nuw i128 %i.be, 64
  %i.bg = or disjoint i128 %i.bf, 1
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i

bb.d:                                             ; preds = %.thread, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i
  %.off64184 = phi i64 [ %extract.t, %.thread ], [ %extract.t186, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i ]
  %.off0187 = phi i64 [ 1, %.thread ], [ %extract.t188, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 2256
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !8217, !noalias !8219, !nonnull !3, !noundef !3
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 2264
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !8217, !noalias !8219, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8229)
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !8232, !noalias !8217, !noundef !3
  %i.bn = xor i64 %i.bm, %.off0187
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bp = load ptr, ptr %i.bo, align 16, !alias.scope !8232, !noalias !8217, !nonnull !3, !align !42, !noundef !3
  %i.bq = load i64, ptr %i.bp, align 8, !noalias !8233, !noundef !3
  %i.br = xor i64 %i.bq, %.off64184
  %i.bs = zext i64 %i.bn to i128
  %i.bt = zext i64 %i.br to i128
  %i.bu = mul nuw i128 %i.bt, %i.bs               ; 2 uses
  %i.bv = lshr i128 %i.bu, 64
  %i.bw = xor i128 %i.bv, %i.bu
  %i.bx = trunc i128 %i.bw to i64
  store i64 %i.bx, ptr %i.bl, align 8, !alias.scope !8232, !noalias !8217
  %i.by = zext i64 %i.bk to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.d, %bb.c
  %i.bz = phi i64 [ %i.bk, %bb.d ], [ %i.bd, %bb.c ]
  %i.ca = phi ptr [ %i.bi, %bb.d ], [ %i.bb, %bb.c ]
  %.sink.i.i = phi i128 [ %i.by, %bb.d ], [ %i.bg, %bb.c ]
  %storemerge.i.i.i.i = phi i8 [ 64, %bb.d ], [ -128, %bb.c ]
  store i128 %.sink.i.i, ptr %1, align 16, !alias.scope !8232, !noalias !8217
  store i8 %storemerge.i.i.i.i, ptr %i.d, align 16, !alias.scope !8232, !noalias !8217
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ca, i64 noundef %i.bz, ptr noalias noundef nonnull align 16 dereferenceable(48) %1), !noalias !8217
  %.pr = load i8, ptr %i.d, align 16, !alias.scope !8234
  %.pre116.pre = load i128, ptr %1, align 16, !alias.scope !8234
  br label %_RINvXsdH_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_8DistinctNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXsdH_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_8DistinctNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit18.thread
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !range !1677, !noundef !3 ; 2 uses
  %i.cd = icmp ne i64 %i.cc, 71                   ; 2 uses
  %i.ce = zext i1 %i.cd to i64
  br label %_RINvXsdH_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_8DistinctNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge

_RINvXsdH_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_8DistinctNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit18
  %.pre116 = phi i128 [ %.pre116.pre, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.k, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit18 ] ; 3 uses
  %i.cf = phi i8 [ %.pr, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.l, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit18 ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 3 uses
  %i.ch = load i64, ptr %i.cg, align 8, !range !1677, !noundef !3 ; 3 uses
  %i.ci = icmp ne i64 %i.ch, 71                   ; 3 uses
  %i.cj = zext i1 %i.ci to i64                    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8240)
  %i.ck = icmp ugt i8 %i.cf, 64
  %extract.t154 = trunc i128 %.pre116 to i64
  %extract156 = lshr i128 %.pre116, 64
  %extract.t157 = trunc nuw i128 %extract156 to i64
  br i1 %i.ck, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit16, label %_RINvXsdH_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_8DistinctNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge

_RINvXsdH_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_8DistinctNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit._crit_edge: ; preds = %_RINvXsdH_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_8DistinctNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, %_RINvXsdH_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_8DistinctNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread
  %i.cl = phi i128 [ 0, %_RINvXsdH_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_8DistinctNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.pre116, %_RINvXsdH_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_8DistinctNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.cm = phi i64 [ %i.ce, %_RINvXsdH_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_8DistinctNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.cj, %_RINvXsdH_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_8DistinctNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.cn = phi i1 [ %i.cd, %_RINvXsdH_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_8DistinctNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.ci, %_RINvXsdH_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_8DistinctNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.co = phi i64 [ %i.cc, %_RINvXsdH_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_8DistinctNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.ch, %_RINvXsdH_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_8DistinctNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.cp = phi ptr [ %i.cb, %_RINvXsdH_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_8DistinctNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.cg, %_RINvXsdH_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_8DistinctNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.cq = phi i8 [ 64, %_RINvXsdH_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_8DistinctNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.cf, %_RINvXsdH_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB7_8DistinctNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 3 uses
  %i.cr = zext nneg i64 %i.cm to i128
  %i.cs = zext nneg i8 %i.cq to i128
  %i.ct = shl nuw nsw i128 %i.cr, %i.cs
  %i.cu = or i128 %i.ct, %i.cl                    ; 5 uses
end_hunk_1
begin_hunk_2_@_RINvXs3r_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_15TableConstraintNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB15_6HasherEL_ECs14kWLkQVSKO_14deltalake_core:bb.a
  br i1 %i.lt, label %_RINvXs6U_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_25ConstraintCharacteristicsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB1f_6HasherEL_ECs14kWLkQVSKO_14deltalake_core.exit15, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs3t_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_15TableConstraintNtNtB9_7visitor8VisitMut5visitINtB15_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB1Y_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB35_(ptr noalias noundef align 8 dereferenceable(248) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !128, !noundef !3
  switch i8 %i.a, label %default.unreachable119 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
  ]

default.unreachable119:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.f = load i64, ptr %i.b, align 8, !range !140, !alias.scope !9953, !noalias !9956, !noundef !3
  %.not.i = icmp eq i64 %i.f, -9223372036854775808
  br i1 %.not.i, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit.thread, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit

_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit: ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RINvXs3V_NtCs4lawaffTVVK_9sqlparser3astNtB7_5IdentNtNtB7_7visitor8VisitMut5visitINtBO_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB1G_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB2N_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.g, label %bb.i, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.l = load i64, ptr %i.h, align 8, !range !140, !alias.scope !9958, !noalias !9961, !noundef !3
  %.not.i75 = icmp eq i64 %i.l, -9223372036854775808
  br i1 %.not.i75, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit77.thread, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit77

_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit77: ; preds = %bb.c
  %i.m = tail call noundef zeroext i1 @_RINvXs3V_NtCs4lawaffTVVK_9sqlparser3astNtB7_5IdentNtNtB7_7visitor8VisitMut5visitINtBO_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB1G_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB2N_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.m, label %bb.i, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit77.thread

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.r = load i64, ptr %i.n, align 8, !range !140, !alias.scope !9963, !noalias !9966, !noundef !3
  %.not.i78 = icmp eq i64 %i.r, -9223372036854775808
  br i1 %.not.i78, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit80.thread, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit80

_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit80: ; preds = %bb.d
  %i.s = tail call noundef zeroext i1 @_RINvXs3V_NtCs4lawaffTVVK_9sqlparser3astNtB7_5IdentNtNtB7_7visitor8VisitMut5visitINtBO_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB1G_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB2N_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.s, label %bb.i, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit80.thread

bb.e:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !range !140, !alias.scope !9968, !noalias !9971, !noundef !3
  %.not.i81 = icmp eq i64 %i.u, -9223372036854775808
  br i1 %.not.i81, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit83.thread, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit83

_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit83: ; preds = %bb.e
  %i.v = tail call noundef zeroext i1 @_RINvXs3V_NtCs4lawaffTVVK_9sqlparser3astNtB7_5IdentNtNtB7_7visitor8VisitMut5visitINtBO_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB1G_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB2N_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.v, label %bb.i, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit83.thread

bb.f:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !range !140, !alias.scope !9973, !noalias !9976, !noundef !3
  %.not.i84 = icmp eq i64 %i.aa, -9223372036854775808
  br i1 %.not.i84, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit86.thread, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit86

_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit86: ; preds = %bb.f
  %i.ab = tail call noundef zeroext i1 @_RINvXs3V_NtCs4lawaffTVVK_9sqlparser3astNtB7_5IdentNtNtB7_7visitor8VisitMut5visitINtBO_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB1G_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB2N_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.ab, label %bb.i, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit86.thread

bb.g:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ae = load i64, ptr %i.ac, align 8, !range !140, !alias.scope !9978, !noalias !9981, !noundef !3
  %.not.i87 = icmp eq i64 %i.ae, -9223372036854775808
  br i1 %.not.i87, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit89.thread, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit89

_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit89: ; preds = %bb.g
  %i.af = tail call noundef zeroext i1 @_RINvXs3V_NtCs4lawaffTVVK_9sqlparser3astNtB7_5IdentNtNtB7_7visitor8VisitMut5visitINtBO_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB1G_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB2N_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ac, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.af, label %bb.i, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit89.thread

_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit.thread: ; preds = %bb.b, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !range !140, !alias.scope !9983, !noalias !9986, !noundef !3
  %.not.i90 = icmp eq i64 %i.ah, -9223372036854775808
  br i1 %.not.i90, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit92.thread, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit92

_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit92: ; preds = %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit.thread
  %i.ai = tail call noundef zeroext i1 @_RINvXs3V_NtCs4lawaffTVVK_9sqlparser3astNtB7_5IdentNtNtB7_7visitor8VisitMut5visitINtBO_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB1G_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB2N_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ag, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.ai, label %bb.i, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit92.thread

_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit92.thread: ; preds = %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit.thread, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit92
  %i.aj = load i64, ptr %i.c, align 8, !range !891, !alias.scope !9988, !noalias !9991, !noundef !3
  %i.ak = icmp sgt i64 %i.aj, -1
  br i1 %i.ak, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit.thread

_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit: ; preds = %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit92.thread
  %i.al = tail call noundef zeroext i1 @_RINvXs3V_NtCs4lawaffTVVK_9sqlparser3astNtB7_5IdentNtNtB7_7visitor8VisitMut5visitINtBO_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB1G_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB2N_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.al, label %bb.i, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit.thread

_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit.thread: ; preds = %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit92.thread, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit
  %i.am = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB8_3ddl11IndexColumnENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2q_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3x_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.am, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit.thread
  %i.an = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB8_3ddl11IndexOptionENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2q_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3x_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.i

bb.i:                                             ; preds = %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit83.thread, %bb.l, %bb.j, %bb.h, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit89.thread, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit89, %bb.m, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit103.thread, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit103, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit86, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit83, %bb.k, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit101.thread, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit101, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit80, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit98.thread, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit98, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit96, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit77, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit.thread, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit92, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit
  %.sroa.0.0 = phi i1 [ true, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit103.thread ], [ true, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit ], [ %i.bj, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit89.thread ], [ true, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit92 ], [ true, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit ], [ true, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit.thread ], [ true, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit89 ], [ true, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit83 ], [ %i.an, %bb.h ], [ %i.bb, %bb.l ], [ true, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit77 ], [ true, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit96 ], [ true, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit98 ], [ true, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit98.thread ], [ %i.bd, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit83.thread ], [ %i.av, %bb.j ], [ true, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit80 ], [ true, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit101 ], [ true, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit101.thread ], [ true, %bb.k ], [ %i.bi, %bb.m ], [ true, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit103 ], [ true, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit86 ]
  ret i1 %.sroa.0.0

_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit77.thread: ; preds = %bb.c, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit77
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !range !140, !alias.scope !9993, !noalias !9996, !noundef !3
  %.not.i94 = icmp eq i64 %i.ap, -9223372036854775808
  br i1 %.not.i94, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit96.thread, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit96

_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit96: ; preds = %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit77.thread
  %i.aq = tail call noundef zeroext i1 @_RINvXs3V_NtCs4lawaffTVVK_9sqlparser3astNtB7_5IdentNtNtB7_7visitor8VisitMut5visitINtBO_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB1G_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB2N_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ao, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.aq, label %bb.i, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit96.thread

_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit96.thread: ; preds = %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit77.thread, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit96
  %i.ar = load i64, ptr %i.i, align 8, !range !891, !alias.scope !9998, !noalias !10001, !noundef !3
  %i.as = icmp sgt i64 %i.ar, -1
  br i1 %i.as, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit98, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit98.thread

_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit98: ; preds = %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit96.thread
  %i.at = tail call noundef zeroext i1 @_RINvXs3V_NtCs4lawaffTVVK_9sqlparser3astNtB7_5IdentNtNtB7_7visitor8VisitMut5visitINtBO_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB1G_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB2N_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.at, label %bb.i, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit98.thread

_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit98.thread: ; preds = %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit96.thread, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit98
  %i.au = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB8_3ddl11IndexColumnENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2q_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3x_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.au, label %bb.i, label %bb.j

bb.j:                                             ; preds = %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit98.thread
  %i.av = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB8_3ddl11IndexOptionENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2q_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3x_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.i

_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit80.thread: ; preds = %bb.d, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit80
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !range !140, !alias.scope !10003, !noalias !10006, !noundef !3
  %.not.i99 = icmp eq i64 %i.ax, -9223372036854775808
  br i1 %.not.i99, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit101.thread, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit101

_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit101: ; preds = %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit80.thread
  %i.ay = tail call noundef zeroext i1 @_RINvXs3V_NtCs4lawaffTVVK_9sqlparser3astNtB7_5IdentNtNtB7_7visitor8VisitMut5visitINtBO_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB1G_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB2N_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.aw, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.ay, label %bb.i, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit101.thread

_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit101.thread: ; preds = %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit80.thread, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit101
  %i.az = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2d_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3k_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.az, label %bb.i, label %bb.k

bb.k:                                             ; preds = %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit101.thread
  %i.ba = tail call noundef zeroext i1 @_RINvXs45_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtB7_7visitor8VisitMut5visitINtBU_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB1M_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB2T_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.ba, label %bb.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2d_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3k_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.i

_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit83.thread: ; preds = %bb.e, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit83
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = tail call noundef zeroext i1 @_RINvXs3_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtB8_4ExprENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2e_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3l_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.i

_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit86.thread: ; preds = %bb.f, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit86
  %i.be = load i64, ptr %i.w, align 8, !range !891, !alias.scope !10008, !noalias !10011, !noundef !3
  %i.bf = icmp sgt i64 %i.be, -1
  br i1 %i.bf, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit103, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit103.thread

_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit103: ; preds = %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit86.thread
  %i.bg = tail call noundef zeroext i1 @_RINvXs3V_NtCs4lawaffTVVK_9sqlparser3astNtB7_5IdentNtNtB7_7visitor8VisitMut5visitINtBO_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB1G_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB2N_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.bg, label %bb.i, label %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit103.thread

_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit103.thread: ; preds = %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit86.thread, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit103
  %i.bh = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB8_3ddl11IndexColumnENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2q_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3x_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.bh, label %bb.i, label %bb.m

bb.m:                                             ; preds = %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_3ddl9IndexTypeENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2s_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3z_.exit103.thread
  %i.bi = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB8_3ddl11IndexOptionENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2q_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3x_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.i

_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit89.thread: ; preds = %bb.g, %_RINvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCsbvkFyIu7lgC_4core6option6OptionNtB8_5IdentENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2i_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3p_.exit89
  %i.bj = tail call noundef zeroext i1 @_RINvXs2_NtNtCs4lawaffTVVK_9sqlparser3ast7visitorINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB8_3ddl11IndexColumnENtB6_8VisitMut5visitINtB6_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2q_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24match_window_definitionss_0EEB3x_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr captures(address, read_provenance) %.8.val, i64 %.16.val, ptr noalias noundef nonnull align 16 dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10013)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10016)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10019)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10022)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 16, !alias.scope !10025, !noundef !3 ; 3 uses
  %i.c = icmp ugt i8 %i.b, 64
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext i64 %.16.val to i128
  %i.e = zext nneg i8 %i.b to i128
  %i.f = shl nuw i128 %i.d, %i.e
  %i.g = load i128, ptr %0, align 16, !alias.scope !10025, !noundef !3
  %i.h = or i128 %i.g, %i.f
  %i.i = add nuw i8 %i.b, 64
  br label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load i128, ptr %0, align 16, !alias.scope !10025, !noundef !3 ; 2 uses
  %i.k = trunc i128 %i.j to i64
  %i.l = lshr i128 %i.j, 64
  %i.m = trunc nuw i128 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !10025, !noundef !3
  %i.p = xor i64 %i.o, %i.k
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 16, !alias.scope !10025, !nonnull !3, !align !42, !noundef !3
  %i.s = load i64, ptr %i.r, align 8, !noalias !10025, !noundef !3
  %i.t = xor i64 %i.s, %i.m
  %i.u = zext i64 %i.p to i128
  %i.v = zext i64 %i.t to i128
  %i.w = mul nuw i128 %i.v, %i.u                  ; 2 uses
  %i.x = lshr i128 %i.w, 64
  %i.y = xor i128 %i.x, %i.w
  %i.z = trunc i128 %i.y to i64
  store i64 %i.z, ptr %i.n, align 8, !alias.scope !10025
  %i.aa = zext i64 %.16.val to i128
  br label %_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b, %bb.c
  %.sink.i.i = phi i128 [ %i.aa, %bb.c ], [ %i.h, %bb.b ]
  %storemerge.i.i.i.i = phi i8 [ 64, %bb.c ], [ %i.i, %bb.b ]
  store i128 %.sink.i.i, ptr %0, align 16, !alias.scope !10025
  store i8 %storemerge.i.i.i.i, ptr %i.a, align 16, !alias.scope !10025
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.8.val, i64 noundef %.16.val, ptr noalias noundef nonnull align 16 dereferenceable(48) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr captures(address, read_provenance) %.8.val, i64 %.16.val, ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10026
  store i64 %.16.val, ptr %i.a, align 8, !noalias !10026
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10026
  tail call void @_RINvYNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.8.val, i64 noundef %.16.val, ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs4B_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_13ViewColumnDefNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %0, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RINvXs0_NtCs4lawaffTVVK_9sqlparser3astNtB6_5IdentNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.a, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !942, !noundef !3
  %i.d = icmp ne i8 %i.c, 116                     ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10033)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10036)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 8 uses
  %i.f = load i8, ptr %i.e, align 16, !alias.scope !10039, !noundef !3 ; 3 uses
  %i.g = icmp ugt i8 %i.f, 64
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = zext i1 %i.d to i128
  %i.i = zext nneg i8 %i.f to i128
  %i.j = shl nuw nsw i128 %i.h, %i.i
  %i.k = load i128, ptr %1, align 16, !alias.scope !10039, !noundef !3
  %i.l = or i128 %i.k, %i.j
  %i.m = add nuw i8 %i.f, 64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2

bb.c:                                             ; preds = %bb.a
  %i.n = load i128, ptr %1, align 16, !alias.scope !10039, !noundef !3 ; 2 uses
  %i.o = trunc i128 %i.n to i64
  %i.p = lshr i128 %i.n, 64
  %i.q = trunc nuw i128 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !10039, !noundef !3
  %i.t = xor i64 %i.s, %i.o
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 16, !alias.scope !10039, !nonnull !3, !align !42, !noundef !3
  %i.w = load i64, ptr %i.v, align 8, !noalias !10039, !noundef !3
  %i.x = xor i64 %i.w, %i.q
  %i.y = zext i64 %i.t to i128
  %i.z = zext i64 %i.x to i128
  %i.aa = mul nuw i128 %i.z, %i.y                 ; 2 uses
  %i.ab = lshr i128 %i.aa, 64
  %i.ac = xor i128 %i.ab, %i.aa
  %i.ad = trunc i128 %i.ac to i64
  store i64 %i.ad, ptr %i.r, align 8, !alias.scope !10039
  %i.ae = zext i1 %i.d to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2: ; preds = %bb.b, %bb.c
  %.sink = phi i128 [ %i.ae, %bb.c ], [ %i.l, %bb.b ]
  %storemerge.i.i1 = phi i8 [ 64, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  store i128 %.sink, ptr %1, align 16, !alias.scope !10039
  store i8 %storemerge.i.i1, ptr %i.e, align 16, !alias.scope !10039
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  tail call fastcc void @_RINvXsn_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB6_8DataTypeNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.b, ptr noalias noundef align 16 dereferenceable(48) %1) #55
  %.pr = load i8, ptr %i.e, align 16, !alias.scope !10040
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2
  %i.af = phi i8 [ %.pr, %bb.d ], [ %storemerge.i.i1, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit2 ] ; 4 uses
  %i.ag = load i64, ptr %0, align 8, !range !285, !noundef !3 ; 4 uses
  %i.ah = icmp ne i64 %i.ag, 2                    ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10045)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10046)
  %i.ai = icmp ugt i8 %i.af, 64
  br i1 %i.ai, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit: ; preds = %bb.e
  %i.aj = zext i1 %i.ah to i128
  %i.ak = zext nneg i8 %i.af to i128
  %i.al = shl nuw nsw i128 %i.aj, %i.ak
  %i.am = load i128, ptr %1, align 16, !alias.scope !10040, !noundef !3
  %i.an = or i128 %i.am, %i.al                    ; 4 uses
  store i128 %i.an, ptr %1, align 16, !alias.scope !10040
  %i.ao = add nuw i8 %i.af, 64
  store i8 %i.ao, ptr %i.e, align 16, !alias.scope !10040
  br i1 %i.ah, label %bb.f, label %_RINvXs4L_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_13ColumnOptionsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread: ; preds = %bb.e
  %i.ap = load i128, ptr %1, align 16, !alias.scope !10040, !noundef !3 ; 2 uses
  %i.aq = trunc i128 %i.ap to i64
  %i.ar = lshr i128 %i.ap, 64
  %i.as = trunc nuw i128 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !10040, !noundef !3
  %i.av = xor i64 %i.au, %i.aq
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ax = load ptr, ptr %i.aw, align 16, !alias.scope !10040, !nonnull !3, !align !42, !noundef !3
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !10040, !noundef !3
  %i.az = xor i64 %i.ay, %i.as
  %i.ba = zext i64 %i.av to i128
  %i.bb = zext i64 %i.az to i128
  %i.bc = mul nuw i128 %i.bb, %i.ba               ; 2 uses
  %i.bd = lshr i128 %i.bc, 64
  %i.be = xor i128 %i.bd, %i.bc
  %i.bf = trunc i128 %i.be to i64
  store i64 %i.bf, ptr %i.at, align 8, !alias.scope !10040
  %i.bg = zext i1 %i.ah to i128
  store i128 %i.bg, ptr %1, align 16, !alias.scope !10040
  store i8 64, ptr %i.e, align 16, !alias.scope !10040
  br i1 %i.ah, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i, label %_RINvXs4L_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB7_13ColumnOptionsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.f:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10047)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10050)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10052)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10055)
  %.not = icmp eq i8 %i.af, 0
  br i1 %.not, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i.thread

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread, %bb.f
  %i.bh = phi i128 [ 1, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread ], [ %i.an, %bb.f ] ; 4 uses
  %i.bi = zext nneg i64 %i.ag to i128
  %i.bj = shl nuw nsw i128 %i.bi, 64
  %i.bk = or i128 %i.bh, %i.bj                    ; 2 uses
  store i128 %i.bk, ptr %1, align 16, !alias.scope !10058, !noalias !10047
  store i8 -128, ptr %i.e, align 16, !alias.scope !10058, !noalias !10047
  %i.bl = trunc nuw i64 %i.ag to i1
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !10047, !noalias !10050, !nonnull !3, !noundef !3 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !10047, !noalias !10050, !noundef !3 ; 4 uses
  br i1 %i.bl, label %bb.h, label %bb.j

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i.thread: ; preds = %bb.f
  %i.bq = trunc i128 %i.an to i64
  %i.br = lshr i128 %i.an, 64
  %i.bs = trunc nuw i128 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !10058, !noalias !10047, !noundef !3
  %i.bv = xor i64 %i.bu, %i.bq
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bx = load ptr, ptr %i.bw, align 16, !alias.scope !10058, !noalias !10047, !nonnull !3, !align !42, !noundef !3
  %i.by = load i64, ptr %i.bx, align 8, !noalias !10059, !noundef !3
  %i.bz = xor i64 %i.by, %i.bs
  %i.ca = zext i64 %i.bv to i128
  %i.cb = zext i64 %i.bz to i128
  %i.cc = mul nuw i128 %i.cb, %i.ca               ; 2 uses
  %i.cd = lshr i128 %i.cc, 64
  %i.ce = xor i128 %i.cd, %i.cc
  %i.cf = trunc i128 %i.ce to i64
  store i64 %i.cf, ptr %i.bt, align 8, !alias.scope !10058, !noalias !10047
  %i.cg = trunc nuw i64 %i.ag to i1
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !10047, !noalias !10050, !nonnull !3, !noundef !3 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !10047, !noalias !10050, !noundef !3 ; 4 uses
  br i1 %i.cg, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i.thread
  %i.cl = zext i64 %i.ck to i128
  %i.cm = shl nuw i128 %i.cl, 64
  %i.cn = or disjoint i128 %i.cm, 1
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit8

bb.h:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10060)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10063), !noalias !10047
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10066), !noalias !10047
  %i.co = trunc i128 %i.bh to i64
  %i.cp = lshr i128 %i.bk, 64
  %i.cq = trunc nuw i128 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !10069, !noalias !10047, !noundef !3
  %i.ct = xor i64 %i.cs, %i.co
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cv = load ptr, ptr %i.cu, align 16, !alias.scope !10069, !noalias !10047, !nonnull !3, !align !42, !noundef !3
  %i.cw = load i64, ptr %i.cv, align 8, !noalias !10070, !noundef !3
  %i.cx = xor i64 %i.cw, %i.cq
  %i.cy = zext i64 %i.ct to i128
  %i.cz = zext i64 %i.cx to i128
  %i.da = mul nuw i128 %i.cz, %i.cy               ; 2 uses
  %i.db = lshr i128 %i.da, 64
  %i.dc = xor i128 %i.db, %i.da
  %i.dd = trunc i128 %i.dc to i64
  store i64 %i.dd, ptr %i.cr, align 8, !alias.scope !10069, !noalias !10047
  %i.de = zext i64 %i.bp to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit8

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit8: ; preds = %bb.g, %bb.h
  %i.df = phi i64 [ %i.bp, %bb.h ], [ %i.ck, %bb.g ] ; 2 uses
  %i.dg = phi ptr [ %i.bn, %bb.h ], [ %i.ci, %bb.g ] ; 2 uses
  %.sink.i6 = phi i128 [ %i.de, %bb.h ], [ %i.cn, %bb.g ]
  %storemerge.i.i.i7 = phi i8 [ 64, %bb.h ], [ -128, %bb.g ]
  store i128 %.sink.i6, ptr %1, align 16, !alias.scope !10069, !noalias !10047
  store i8 %storemerge.i.i.i7, ptr %i.e, align 16, !alias.scope !10069, !noalias !10047
  %.idx25 = mul nuw nsw i64 %i.df, 680
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.idx25
  %i.di = icmp eq i64 %i.df, 0
end_hunk_2
begin_hunk_3_@_RNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay25extract_predicate_columns:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.f, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

_RNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay25extract_predicate_columns0Bd_.exit: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.p

bb.o:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.p:                                             ; preds = %_RNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay25extract_predicate_columns0Bd_.exit, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay27create_minimal_stats_schema(ptr dead_on_unwind noalias noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 6 uses
  %i.b = alloca [144 x i8], align 16              ; 5 uses
  %i.c = alloca [144 x i8], align 8               ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [144 x i8], align 8               ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = load i64, ptr %i.h, align 8, !noundef !3
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay27create_minimal_stats_schema0Bd_(ptr noalias noundef align 16 captures(none) dereferenceable(96) %0) #55
  br label %bb.d

bb.d:                                             ; preds = %bb.m, %bb.l, %bb.e, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  tail call fastcc void @_RNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay27create_minimal_stats_schema0Bd_(ptr noalias noundef align 16 captures(none) dereferenceable(96) %0) #55
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.r = load i64, ptr %i.q, align 8, !noundef !3
  %i.s = getelementptr inbounds nuw [128 x i8], ptr %i.p, i64 %i.r
  store ptr %i.p, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %2, ptr %.sroa.5.0..sroa_idx, align 8
  call void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtB2r_6filter6FilterINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB6_6string6StringB11_ENCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay27create_minimal_stats_schemas_0EEE9from_iterB51_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.u = load i64, ptr %i.t, align 8, !noundef !3 ; 2 uses
  %i.v = icmp ult i64 %i.u, 96076792050570582
  call void @llvm.assume(i1 %i.v)
  %i.w = icmp eq i64 %i.u, 0
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @_RNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay27create_minimal_stats_schema0Bd_(ptr noalias noundef align 16 captures(none) dereferenceable(96) %0)
          to label %bb.i unwind label %bb.v

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @_RINvMsb_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructType7try_newINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB6_11StructFieldEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.x = load i64, ptr %i.b, align 16, !range !140, !noundef !3 ; 2 uses
  %i.y = icmp eq i64 %i.x, -9223372036854775808
  br i1 %i.y, label %bb.m, label %bb.n

bb.i:                                             ; preds = %bb.g
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

common.resume:                                    ; preds = %bb.v, %.body, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.z, %bb.j ], [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.v ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.i
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
  br label %bb.l

bb.l:                                             ; preds = %bb.t, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.d

bb.m:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.ab, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.d

bb.n:                                             ; preds = %bb.h
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.49.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.513.0..sroa_idx, i64 104, i1 false)
  store i64 %i.x, ptr %i.e, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.510.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.614.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ac = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 808
  invoke void @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext12stats_schema(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.ad)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.r, %bb.o
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.o ], [ %i.aj, %bb.r ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %i.e) #50
          to label %common.resume unwind label %bb.u

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ag, ptr noundef nonnull align 8 dereferenceable(144) %i.c, i64 144, i1 false)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !32834
  %i.ah = call noundef align 8 dereferenceable_or_null(160) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 1, -15) 160, i64 noundef range(i64 1, 17) 8) #45, !noalias !32834 ; 3 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.q, label %bb.t, !prof !4

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 160) #53
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %i.ag)
          to label %.body unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.t:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.ah, ptr noundef nonnull align 8 dereferenceable(160) %i.a, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.al, align 8
  store i64 -9223372036854775711, ptr %0, align 16
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(144) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.l

bb.u:                                             ; preds = %bb.v, %.body
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.v:                                             ; preds = %bb.g
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.g) #50
          to label %common.resume unwind label %bb.u
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvNvXs4_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4exprNtB7_16BinaryExprFormatNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt11write_child(ptr %.0.val, ptr captures(address, read_provenance) %.8.val, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %0, i8 noundef range(i8 5, 46) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = load i64, ptr %0, align 16, !range !2305, !noundef !3 ; 2 uses
  %i.h = icmp ne i64 %i.g, 35
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp eq i64 %i.g, 8
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i8, ptr %i.k, align 8, !range !4838, !noundef !3
  switch i8 %i.l, label %default.unreachable2 [
    i8 0, label %bb.j
    i8 1, label %bb.j
    i8 2, label %bb.d
    i8 3, label %bb.j
    i8 4, label %bb.d
    i8 5, label %bb.j
    i8 6, label %bb.e
    i8 7, label %bb.e
    i8 8, label %.thread
    i8 9, label %.thread
    i8 10, label %.thread
    i8 11, label %bb.f
    i8 12, label %bb.g
    i8 13, label %bb.h
    i8 14, label %bb.h
    i8 15, label %bb.h
    i8 16, label %bb.h
    i8 17, label %bb.h
    i8 18, label %bb.h
    i8 19, label %bb.i
    i8 20, label %bb.i
    i8 21, label %bb.i
    i8 22, label %bb.i
    i8 23, label %bb.h
    i8 24, label %bb.h
    i8 25, label %bb.h
    i8 26, label %bb.h
    i8 27, label %bb.h
    i8 28, label %bb.h
    i8 29, label %bb.h
    i8 30, label %bb.h
    i8 31, label %bb.h
    i8 32, label %bb.h
    i8 33, label %bb.h
    i8 34, label %bb.h
    i8 35, label %bb.h
    i8 36, label %bb.h
    i8 37, label %bb.h
    i8 38, label %bb.h
    i8 39, label %bb.h
    i8 40, label %bb.h
    i8 41, label %bb.h
  ]

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs5_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4exprNtB5_9SqlFormatNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.m = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %.0.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.8.val, ptr noundef nonnull @0, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

default.unreachable2:                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.b
  br label %bb.j

bb.e:                                             ; preds = %bb.b, %bb.b
  br label %bb.j

bb.f:                                             ; preds = %bb.b
  br label %bb.j

bb.g:                                             ; preds = %bb.b
  br label %bb.j

bb.h:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  br label %bb.j

bb.i:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.sroa.01.0 = phi i8 [ 20, %bb.d ], [ 30, %bb.h ], [ 40, %bb.e ], [ 15, %bb.b ], [ 10, %bb.f ], [ 5, %bb.g ], [ 25, %bb.i ], [ 15, %bb.b ], [ 15, %bb.b ], [ 15, %bb.b ]
  %i.n = icmp samesign ult i8 %.sroa.01.0, %1
  br i1 %i.n, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.b, %bb.b, %bb.b, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.j, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs4_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4exprNtB5_16BinaryExprFormatNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.426.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.o = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %.0.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.8.val, ptr noundef nonnull @0, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.j, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs4_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4exprNtB5_16BinaryExprFormatNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.p = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %.0.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.8.val, ptr noundef nonnull @189, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread, %bb.c
  %.sroa.0.0 = phi i1 [ %i.m, %bb.c ], [ %i.o, %.thread ], [ %i.p, %bb.k ]
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXNtCs1N9T06jgEdt_11arrow_array6scalarINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB4_5array5ArrayEL_ENtB2_5Datum3getCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 17)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #13 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @190, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utilsNtB2_10NoopTracerNtB2_13JoinSetTracer11trace_block(ptr noalias nonnull readonly captures(none) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %2, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXNtCs4Y5ccqZjUYD_25datafusion_common_runtime11trace_utilsNtB2_10NoopTracerNtB2_13JoinSetTracer12trace_future(ptr noalias nonnull readonly captures(none) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %2, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RNvXNtCs6Po7BT7Nknu_5alloc6borrowINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtBA_3num7nonzero7NonZeroyEENtB2_7ToOwned8to_ownedCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #14 {
bb.a:
  %.val = load i64, ptr %0, align 8, !noundef !3
  ret i64 %.val
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs6Po7BT7Nknu_5alloc6borrowNtNtCsjhHCjzi9uUI_17datafusion_common8dfschema8DFSchemaNtB2_7ToOwned8to_ownedCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32837)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32840)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !32842
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !32840, !noalias !32837, !nonnull !3, !noundef !3 ; 4 uses
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8, !noalias !32842
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.e, ptr %i.c, align 8, !noalias !32842
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !32842
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEENtNtBK_5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
          to label %bb.g unwind label %bb.f, !noalias !32837

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.h, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.l, %bb.h ], [ %i.j, %bb.f ]
  %i.h = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !32843
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i

end_hunk_3
begin_hunk_4_@_RNvXNtCscVxtfYSVfE7_9itertools10flatten_okINtB2_9FlattenOkINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtBZ_3zip3ZipINtNtNtB13_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB2u_6string6StringNtNtB31_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0EINtNtB2u_3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtNtB11_6traits8iterator8Iterator4nextB5G_:bb.a
  br i1 %.not12, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !32888)
  %i.az = load ptr, ptr %i.o, align 8, !alias.scope !32888, !noalias !32891, !nonnull !3, !noundef !3
  %i.ba = load ptr, ptr %i.p, align 8, !alias.scope !32888, !noalias !32891, !nonnull !3, !noundef !3 ; 4 uses
  %i.bb = icmp eq ptr %i.ba, %i.az
  br i1 %i.bb, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.thread, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16: ; preds = %bb.x
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 112
  store ptr %i.bc, ptr %i.p, align 8, !alias.scope !32888, !noalias !32891
  %.sroa.048.0.copyload49 = load i64, ptr %i.ba, align 16, !noalias !32888 ; 2 uses
  %.not13 = icmp eq i64 %.sroa.048.0.copyload49, 37
  br i1 %.not13, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.thread, label %bb.z

bb.y:                                             ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit.thread
  store i64 38, ptr %0, align 16
  br label %bb.v

bb.z:                                             ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16
  %.sroa.750.0..sroa_idx51.le = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.4.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.0..sroa_idx55, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.750.0..sroa_idx51.le, i64 104, i1 false)
  store i64 %.sroa.048.0.copyload49, ptr %0, align 16
  br label %bb.v

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.thread: ; preds = %bb.x, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit18 unwind label %bb.aa

bb.aa:                                            ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.thread
  %i.bd = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.n, align 8
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit18: ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.thread
  store ptr null, ptr %i.n, align 8
  br label %.backedge

bb.ab:                                            ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit
  store i64 37, ptr %0, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.63.i.sroa.0.0.copyload9.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.63.i.sroa.6.0.copyload12.i, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 16
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.63.i.sroa.7.0.copyload15.i, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.63.i.sroa.8.0.copyload18.i, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 16
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.63.i.sroa.9.0.copyload21.i, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.v

bb.ac:                                            ; preds = %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit.thread71, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit
  %.sroa.727.179 = phi i64 [ 2, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit.thread71 ], [ %.sroa.63.i.sroa.6.0.copyload12.i, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit ] ; 2 uses
  %.sroa.9.178 = phi ptr [ %i.ad, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit.thread71 ], [ %.sroa.63.i.sroa.7.0.copyload15.i, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit ] ; 6 uses
  %.sroa.10.177 = phi i64 [ 2, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit.thread71 ], [ %.sroa.63.i.sroa.8.0.copyload18.i, %_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB1H_6string6StringNtNtB2e_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0ENtNtNtB9_6traits8iterator8Iterator4nextB4T_.exit ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.178) ]
  %i.be = icmp ult i64 %.sroa.10.177, 82351536043346213
  call void @llvm.assume(i1 %i.be)
  %i.bf = getelementptr inbounds nuw [112 x i8], ptr %.sroa.9.178, i64 %.sroa.10.177 ; 2 uses
  %i.bg = load ptr, ptr %i.e, align 8, !alias.scope !32893, !noundef !3
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit20, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit20 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bi = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.9.178, ptr %i.e, align 8
  store ptr %.sroa.9.178, ptr %i.g, align 8
  store i64 %.sroa.727.179, ptr %.sroa.638.0..sroa_idx39, align 8
  store ptr %i.bf, ptr %i.f, align 8
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit20: ; preds = %bb.ac, %bb.ad
  store ptr %.sroa.9.178, ptr %i.e, align 8
  store ptr %.sroa.9.178, ptr %i.g, align 8
  store i64 %.sroa.727.179, ptr %.sroa.638.0..sroa_idx39, align 8
  store ptr %i.bf, ptr %i.f, align 8
  br label %.backedge

.backedge:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit20, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs14kWLkQVSKO_14deltalake_core.exit18
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCscVxtfYSVfE7_9itertools10flatten_okINtB2_9FlattenOkINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtBZ_3zip3ZipINtNtNtB13_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB2u_6string6StringNtNtB31_6schema11StructFieldEENCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions13to_datafusion12struct_to_df0EINtNtB2u_3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtNtB11_6traits8iterator8Iterator9size_hintB5G_(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val24 = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val25 = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.f = ptrtoint ptr %.val25 to i64
  %i.g = ptrtoint ptr %.val24 to i64
  %i.h = sub nuw i64 %i.f, %i.g
  %i.i = udiv exact i64 %i.h, 112
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !noundef !3
  %.not20 = icmp eq ptr %i.k, null
  br i1 %.not20, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val = load ptr, ptr %i.l, align 8, !nonnull !3, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val23 = load ptr, ptr %i.m, align 8, !nonnull !3, !noundef !3
  %i.n = ptrtoint ptr %.val23 to i64
  %i.o = ptrtoint ptr %.val to i64
  %i.p = sub nuw i64 %i.n, %i.o
  %i.q = udiv exact i64 %i.p, 112                 ; 2 uses
  %i.r = add nuw nsw i64 %i.q, %.sroa.3.0
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.d
  %.sroa.311.0 = phi i64 [ %i.q, %bb.d ], [ 0, %bb.c ]
  %.sroa.09.0 = phi i64 [ %i.r, %bb.d ], [ %.sroa.3.0, %bb.c ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32896)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32899)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32902)
  %.val.i.i.i = load ptr, ptr %1, align 8, !alias.scope !32905, !noalias !32906, !nonnull !3, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val14.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !32905, !noalias !32906, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32910
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_RNvXsS_NtNtCsbpG6u9KFjWn_8indexmap3map4iterINtB5_6ValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.t), !noalias !32906
  %i.u = load i64, ptr %i.a, align 8, !noalias !32910, !noundef !3
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !5, !noalias !32910, !noundef !3
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noalias !32910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32910
  %i.z = ptrtoint ptr %.val14.i.i.i to i64
  %i.aa = ptrtoint ptr %.val.i.i.i to i64
  %i.ab = sub nuw i64 %i.z, %i.aa
  %i.ac = lshr exact i64 %i.ab, 3                 ; 3 uses
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.u, i64 %i.ac)
  %i.ad = icmp eq i64 %.sroa.0.0.i.i.i.i, 0
  %i.ae = trunc nuw i64 %i.w to i1
  %.sroa.0.0.i15.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.y, i64 %i.ac)
  %.sroa.7.0.i.i.i = select i1 %i.ae, i64 %.sroa.0.0.i15.i.i.i, i64 %i.ac
  %i.af = icmp eq i64 %.sroa.7.0.i.i.i, 0
  %.sroa.015.0 = select i1 %i.ad, i1 %i.af, i1 false
  %i.ag = add nuw nsw i64 %.sroa.311.0, %.sroa.3.0
  %spec.select22 = zext i1 %.sroa.015.0 to i64
  store i64 %.sroa.09.0, ptr %0, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select22, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ag, ptr %i.ai, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCscVxtfYSVfE7_9itertools10flatten_okINtB2_9FlattenOkINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB11_6traits8iterator8Iteratorp4ItemINtNtB13_6result6ResultIB1J_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3u_5error5ErrorENtNtB13_6marker4SendEL_ENCNvMNtB3u_11log_segmentNtB5d_10LogSegment24create_checkpoint_streams_0EINtNtNtB4_8adaptors3map14MapSpecialCaseINtNtBZ_5chain5ChainINtNtNtB11_7sources4once4OnceB2X_EINtNtBZ_7flatten7FlattenINtNtB13_6option8IntoIterB1I_EEEINtB6l_18MapSpecialCaseFnOkNCNCB5a_s_00EEB4p_EB2i_4nextCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef align 16 dereferenceable(496) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [88 x i8], align 8                ; 9 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [96 x i8], align 16               ; 8 uses
  %i.e = alloca [96 x i8], align 16               ; 9 uses
  %.sroa.12.i = alloca [72 x i8], align 8         ; 6 uses
  %i.f = alloca [96 x i8], align 16               ; 6 uses
  %i.g = alloca [96 x i8], align 16               ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 472
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 388
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 404
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 456 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.548.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.651.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.959.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %.sroa.1062.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %.sroa.1165.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %.sroa.1371.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.af = load i64, ptr %i.h, align 16, !range !724, !noundef !3
  %.not = icmp eq i64 %i.af, 3
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvXNtNtCscVxtfYSVfE7_9itertools8adaptors3mapINtB2_14MapSpecialCaseINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB1a_7sources4once4OnceINtNtB1c_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3p_5error5ErrorEEINtNtB18_7flatten7FlattenINtNtB1c_6option8IntoIterIB2M_DNtNtNtB1a_6traits8iterator8Iteratorp4ItemB2o_NtNtB1c_6marker4SendEL_EEEEINtB2_18MapSpecialCaseFnOkNCNCNvMNtB3p_11log_segmentNtB7h_10LogSegment24create_checkpoint_streams_00EEB5A_4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.g, ptr noalias noundef nonnull align 16 dereferenceable(160) %1)
  %i.ag = load i64, ptr %i.g, align 16, !range !21579, !noundef !3
  %.not17 = icmp eq i64 %i.ag, -9223372036854775742
  br i1 %.not17, label %bb.af, label %bb.ae

bb.d:                                             ; preds = %bb.ai, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !32911)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvXNtNtCs6Po7BT7Nknu_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iteratorp4ItemINtNtBU_6result6ResultIBC_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2i_5error5ErrorENtNtBU_6marker4SendEL_EBM_4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i), !noalias !32914
  %i.ah = load i64, ptr %i.e, align 16, !range !21579, !noalias !32916, !noundef !3 ; 3 uses
  %.not.i = icmp eq i64 %i.ah, -9223372036854775742
  br i1 %.not.i, label %bb.aj, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.44.0.copyload.i = load ptr, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !32916 ; 8 uses
  %.sroa.55.0.copyload.i = load ptr, ptr %.sroa.55.0..sroa_idx.i, align 16, !noalias !32916 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !32917)
  %.not.i.i = icmp eq i64 %i.ah, -9223372036854775743
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.66.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.12.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.66.0..sroa_idx.i, i64 72, i1 false), !noalias !32916
  br label %bb.aq

bb.g:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.55.0.copyload.i) ]
  %i.ai = load i8, ptr %i.j, align 16, !range !136, !alias.scope !32920, !noalias !32921, !noundef !3
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.h, label %bb.ar

bb.h:                                             ; preds = %bb.g
  %i.ak = load i64, ptr %i.k, align 16, !alias.scope !32920, !noalias !32921, !noundef !3 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 88686269585142076
  call void @llvm.assume(i1 %i.al)
  %i.am = icmp eq i64 %i.ak, 1
  br i1 %i.am, label %bb.i, label %bb.ar

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !32924
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !32924
  %i.an = load ptr, ptr %i.l, align 16, !alias.scope !32920, !noalias !32921, !nonnull !3, !noundef !3 ; 4 uses
  %i.ao = atomicrmw add ptr %i.an, i64 1 monotonic, align 8, !noalias !32925
  %i.ap = icmp slt i64 %i.ao, 0
  br i1 %i.ap, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = load ptr, ptr %i.m, align 8, !alias.scope !32920, !noalias !32921, !nonnull !3, !align !42, !noundef !3 ; 2 uses
  store ptr %i.an, ptr %i.c, align 8, !noalias !32924
  store ptr %i.aq, ptr %i.n, align 8, !noalias !32924
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !32924
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32924
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o)
          to label %bb.m unwind label %bb.aa, !noalias !32921

bb.k:                                             ; preds = %bb.i
  call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.q
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.m:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.r, ptr noundef nonnull align 8 dereferenceable(17) %i.q, i64 17, i1 false), !noalias !32921
  %i.as = load i32, ptr %i.t, align 4, !alias.scope !32920, !noalias !32921, !noundef !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !32924
  %i.at = load <4 x i32>, ptr %i.p, align 4, !alias.scope !32920, !noalias !32921
  store <4 x i32> %i.at, ptr %i.v, align 4, !noalias !32924
  %i.au = load <2 x i16>, ptr %i.s, align 16, !alias.scope !32920, !noalias !32921
  store <2 x i16> %i.au, ptr %i.w, align 8, !noalias !32924
  store i32 %i.as, ptr %i.x, align 4, !noalias !32924
  %i.av = load <4 x i32>, ptr %i.u, align 16, !alias.scope !32920, !noalias !32921
  store <4 x i32> %i.av, ptr %i.y, align 8, !noalias !32924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32924
  %i.aw = load ptr, ptr %i.z, align 16, !alias.scope !32920, !noalias !32921, !nonnull !3, !noundef !3
  %i.ax = atomicrmw add ptr %i.aw, i64 1 monotonic, align 8, !noalias !32921
  %i.ay = icmp slt i64 %i.ax, 0
  br i1 %i.ay, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %2 = load ptr, ptr %i.z, align 16, !alias.scope !32920, !noalias !32921, !nonnull !3, !noundef !3
  %i.az = load ptr, ptr %i.aa, align 8, !alias.scope !32920, !noalias !32921, !noundef !3 ; 2 uses
  %.not81.i.i = icmp eq ptr %i.az, null
  br i1 %.not81.i.i, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.m
  call void @llvm.trap()
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ba = atomicrmw add ptr %i.az, i64 1 monotonic, align 8, !noalias !32921
  %i.bb = icmp slt i64 %i.ba, 0
  br i1 %i.bb, label %bb.r, label %3

bb.q:                                             ; preds = %3, %bb.n
  %.sroa.018.0.i.i = phi ptr [ %4, %3 ], [ null, %bb.n ]
  invoke void @_RNvMNtCs8ulvy0Wg6Ot_12delta_kernel11log_segmentNtB2_10LogSegment16process_sidecars(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.d, ptr noundef nonnull %i.an, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.aq, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.b, ptr noundef nonnull %.sroa.44.0.copyload.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %.sroa.55.0.copyload.i, ptr noundef nonnull %2, ptr noundef %.sroa.018.0.i.i)
          to label %bb.s unwind label %bb.l, !noalias !32921

3:                                                ; preds = %bb.p
  %4 = load ptr, ptr %i.aa, align 8, !alias.scope !32920, !noalias !32921, !nonnull !3, !noundef !3
  br label %bb.q

bb.r:                                             ; preds = %bb.p
  call void @llvm.trap()
  unreachable

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !32924
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !32924
  %i.bc = load i64, ptr %i.d, align 16, !range !32770, !noalias !32924, !noundef !3 ; 3 uses
  %.not82.i.i = icmp eq i64 %i.bc, -9223372036854775743
  %i.bd = load ptr, ptr %i.ab, align 8, !noalias !32924 ; 3 uses
  %i.be = load ptr, ptr %i.ac, align 16, !noalias !32924 ; 3 uses
  br i1 %.not82.i.i, label %bb.z, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.sroa.748.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.12.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.748.0..sroa_idx.i.i, i64 72, i1 false), !noalias !32926
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !32924
  %i.bf = load ptr, ptr %.sroa.55.0.copyload.i, align 8, !invariant.load !3, !noalias !32921 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void %i.bf(ptr noundef nonnull %.sroa.44.0.copyload.i)
          to label %bb.v unwind label %bb.x, !noalias !32921

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.55.0.copyload.i, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !range !708, !invariant.load !3, !noalias !32921 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.aq, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.55.0.copyload.i, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !range !349, !invariant.load !3, !noalias !32921
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.44.0.copyload.i, i64 noundef range(i64 1, 0) %i.bh, i64 noundef range(i64 1, 536870913) %i.bk) #45, !noalias !32921
  br label %bb.aq

bb.x:                                             ; preds = %bb.u
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.55.0.copyload.i, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !range !708, !invariant.load !3, !noalias !32921 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %common.resume, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.55.0.copyload.i, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !range !349, !invariant.load !3, !noalias !32921
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.44.0.copyload.i, i64 noundef range(i64 1, 0) %i.bn, i64 noundef range(i64 1, 536870913) %i.bq) #45, !noalias !32921
  br label %common.resume

common.resume:                                    ; preds = %bb.ah, %bb.ao, %bb.as, %bb.x, %bb.y, %bb.ad
  %common.resume.op = phi { ptr, i32 } [ %.pn.ph.i.i, %bb.ad ], [ %i.bl, %bb.x ], [ %i.bl, %bb.y ], [ %i.bz, %bb.as ], [ %i.by, %bb.ao ], [ %i.bv, %bb.ah ]
  resume { ptr, i32 } %common.resume.op

bb.z:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !32924
  br label %bb.ar

bb.aa:                                            ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = atomicrmw sub ptr %i.an, i64 1 release, align 8, !noalias !32927
  %i.bt = icmp eq i64 %i.bs, 1
  br i1 %i.bt, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #52
          to label %bb.ad unwind label %bb.ac, !noalias !32921

bb.ac:                                            ; preds = %bb.ad, %bb.ab
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51, !noalias !32921
  unreachable

bb.ad:                                            ; preds = %bb.ab, %bb.aa, %bb.l
  %.pn.ph.i.i = phi { ptr, i32 } [ %i.ar, %bb.l ], [ %i.br, %bb.ab ], [ %i.br, %bb.aa ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_EECs14kWLkQVSKO_14deltalake_core(ptr nonnull %.sroa.44.0.copyload.i, ptr nonnull %.sroa.55.0.copyload.i) #50
          to label %common.resume unwind label %bb.ac, !noalias !32921

bb.ae:                                            ; preds = %bb.c
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false)
  store i128 0, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ag

bb.af:                                            ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCscVxtfYSVfE7_9itertools8adaptors3map14MapSpecialCaseINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtB27_7sources4once4OnceINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB45_5error5ErrorEEINtNtB25_7flatten7FlattenINtBJ_8IntoIterIB3s_DNtNtNtB27_6traits8iterator8Iteratorp4ItemB35_NtNtB4_6marker4SendEL_EEEEINtB15_18MapSpecialCaseFnOkNCNCNvMNtB45_11log_segmentNtB7N_10LogSegment24create_checkpoint_streams_00EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(160) %1)
          to label %bb.ai unwind label %bb.ah

bb.ag:                                            ; preds = %bb.al, %bb.am, %bb.aq, %bb.ae
  ret void

bb.ah:                                            ; preds = %bb.af
  %i.bv = landingpad { ptr, i32 }
          cleanup
  store i64 3, ptr %i.h, align 16
  br label %common.resume

bb.ai:                                            ; preds = %bb.af
  store i64 3, ptr %i.h, align 16
  br label %bb.d

bb.aj:                                            ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bw = load i64, ptr %i.ae, align 16, !range !724, !noundef !3
  %.not19 = icmp eq i64 %i.bw, 3
  br i1 %.not19, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvXNtNtCscVxtfYSVfE7_9itertools8adaptors3mapINtB2_14MapSpecialCaseINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB1a_7sources4once4OnceINtNtB1c_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB3p_5error5ErrorEEINtNtB18_7flatten7FlattenINtNtB1c_6option8IntoIterIB2M_DNtNtNtB1a_6traits8iterator8Iteratorp4ItemB2o_NtNtB1c_6marker4SendEL_EEEEINtB2_18MapSpecialCaseFnOkNCNCNvMNtB3p_11log_segmentNtB7h_10LogSegment24create_checkpoint_streams_00EEB5A_4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.f, ptr noalias noundef nonnull align 16 dereferenceable(160) %i.ad)
  %i.bx = load i64, ptr %i.f, align 16, !range !21579, !noundef !3
  %.not20 = icmp eq i64 %i.bx, -9223372036854775742
  br i1 %.not20, label %bb.an, label %bb.am

bb.al:                                            ; preds = %bb.aj
  store i128 2, ptr %0, align 16
  br label %bb.ag

bb.am:                                            ; preds = %bb.ak
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %.sroa.49.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(96) %i.f, i64 96, i1 false)
  store i128 0, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ag

bb.an:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCscVxtfYSVfE7_9itertools8adaptors3map14MapSpecialCaseINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtB27_7sources4once4OnceINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB45_5error5ErrorEEINtNtB25_7flatten7FlattenINtBJ_8IntoIterIB3s_DNtNtNtB27_6traits8iterator8Iteratorp4ItemB35_NtNtB4_6marker4SendEL_EEEEINtB15_18MapSpecialCaseFnOkNCNCNvMNtB45_11log_segmentNtB7N_10LogSegment24create_checkpoint_streams_00EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(160) %i.ad)
          to label %bb.ap unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.by = landingpad { ptr, i32 }
          cleanup
  store i64 3, ptr %i.ae, align 16
  br label %common.resume

bb.ap:                                            ; preds = %bb.an
  store i64 3, ptr %i.ae, align 16
  br label %.backedge

bb.aq:                                            ; preds = %bb.w, %bb.v, %bb.f
  %.sroa.9.0.i = phi ptr [ %.sroa.55.0.copyload.i, %bb.f ], [ %i.be, %bb.v ], [ %i.be, %bb.w ]
  %.sroa.6.0.i = phi ptr [ %.sroa.44.0.copyload.i, %bb.f ], [ %i.bd, %bb.v ], [ %i.bd, %bb.w ]
  %.sroa.0.0.i = phi i64 [ %i.ah, %bb.f ], [ %i.bc, %bb.v ], [ %i.bc, %bb.w ]
  %.sroa.47.sroa.6.0..sroa.47.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.47.sroa.6.0..sroa.47.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.12.i, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i128 1, ptr %0, align 16
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0.i, ptr %.sroa.47.0..sroa_idx, align 16
  %.sroa.47.sroa.4.0..sroa.47.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.6.0.i, ptr %.sroa.47.sroa.4.0..sroa.47.0..sroa_idx.sroa_idx, align 8
  %.sroa.47.sroa.5.0..sroa.47.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.9.0.i, ptr %.sroa.47.sroa.5.0..sroa.47.0..sroa_idx.sroa_idx, align 16
  br label %bb.ag

bb.ar:                                            ; preds = %bb.z, %bb.h, %bb.g
  %.sroa.18.0.i.ph = phi ptr [ undef, %bb.g ], [ undef, %bb.h ], [ %i.be, %bb.z ] ; 2 uses
  %.sroa.17.0.i.ph = phi ptr [ null, %bb.g ], [ null, %bb.h ], [ %i.bd, %bb.z ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCscVxtfYSVfE7_9itertools8adaptors3map14MapSpecialCaseINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtB27_7sources4once4OnceINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB45_5error5ErrorEEINtNtB25_7flatten7FlattenINtBJ_8IntoIterIB3s_DNtNtNtB27_6traits8iterator8Iteratorp4ItemB35_NtNtB4_6marker4SendEL_EEEEINtB15_18MapSpecialCaseFnOkNCNCNvMNtB45_11log_segmentNtB7N_10LogSegment24create_checkpoint_streams_00EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(160) %1)
          to label %bb.at unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.bz = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775743, ptr %1, align 16
  store ptr %.sroa.44.0.copyload.i, ptr %.sroa.548.0..sroa_idx49, align 8
  store ptr %.sroa.55.0.copyload.i, ptr %.sroa.651.0..sroa_idx52, align 16
  store i64 1, ptr %i.h, align 16
  store ptr %.sroa.17.0.i.ph, ptr %.sroa.959.0..sroa_idx60, align 8
  store ptr %.sroa.18.0.i.ph, ptr %.sroa.1062.0..sroa_idx63, align 16
  store ptr null, ptr %.sroa.1165.0..sroa_idx66, align 8
  store ptr null, ptr %.sroa.1371.0..sroa_idx72, align 8
  br label %common.resume

bb.at:                                            ; preds = %bb.ar
  store i64 -9223372036854775743, ptr %1, align 16
  store ptr %.sroa.44.0.copyload.i, ptr %.sroa.548.0..sroa_idx49, align 8
  store ptr %.sroa.55.0.copyload.i, ptr %.sroa.651.0..sroa_idx52, align 16
  store i64 1, ptr %i.h, align 16
  store ptr %.sroa.17.0.i.ph, ptr %.sroa.959.0..sroa_idx60, align 8
  store ptr %.sroa.18.0.i.ph, ptr %.sroa.1062.0..sroa_idx63, align 16
  store ptr null, ptr %.sroa.1165.0..sroa_idx66, align 8
  store ptr null, ptr %.sroa.1371.0..sroa_idx72, align 8
  br label %.backedge

.backedge:                                        ; preds = %bb.at, %bb.ap
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
end_hunk_4
