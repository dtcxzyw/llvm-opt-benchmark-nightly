Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_wasm_chat_template.candle_wasm_chat_template.41e4d5002cfb9e58-cgu.06?download=true
inline.NumInlined: 172
inline.NumDeleted: 114
begin_hunk_0_@_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellbEE4withNCINvMsc_NtCs1fJj97VvEPD_9minijinja5valueNtB1J_5Value14from_serializeRRNtNtCsgCecv3eZDcN_5alloc6string6StringE0B2f_ECs5EKAXG1naGG_25candle_wasm_chat_template:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.b = tail call noundef ptr %.val(ptr noalias nofree noundef dereferenceable_or_null(2) null), !noalias !102, !inline_history !99 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellbEE8try_withNCINvMsc_NtCs1fJj97VvEPD_9minijinja5valueNtB1N_5Value14from_serializeRRNtNtCsgCecv3eZDcN_5alloc6string6StringE0B2j_ECs5EKAXG1naGG_25candle_wasm_chat_template.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !102
  %i.d = load i8, ptr %i.b, align 1, !range !5, !noalias !103, !noundef !4 ; 2 uses
  store i8 1, ptr %i.b, align 1, !noalias !103
  invoke void @_RINvNtNtCs1fJj97VvEPD_9minijinja5value9serialize9transformRRNtNtCsgCecv3eZDcN_5alloc6string6StringECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2)
          to label %bb.e unwind label %bb.c, !noalias !102

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %.not.not.i.i = icmp eq i8 %i.d, 0
  br i1 %.not.not.i.i, label %bb.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value26InternalSerializationGuardECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.i

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.b, align 1, !noalias !103
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value26InternalSerializationGuardECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.i

bb.e:                                             ; preds = %bb.b
  %i.f = trunc nuw i8 %i.d to i1
  br i1 %i.f, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellbEE8try_withNCINvMsc_NtCs1fJj97VvEPD_9minijinja5valueNtB1N_5Value14from_serializeRRNtNtCsgCecv3eZDcN_5alloc6string6StringE0B2j_ECs5EKAXG1naGG_25candle_wasm_chat_template.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %i.b, align 1, !noalias !103
  br label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellbEE8try_withNCINvMsc_NtCs1fJj97VvEPD_9minijinja5valueNtB1N_5Value14from_serializeRRNtNtCsgCecv3eZDcN_5alloc6string6StringE0B2j_ECs5EKAXG1naGG_25candle_wasm_chat_template.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value26InternalSerializationGuardECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.e

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellbEE8try_withNCINvMsc_NtCs1fJj97VvEPD_9minijinja5valueNtB1N_5Value14from_serializeRRNtNtCsgCecv3eZDcN_5alloc6string6StringE0B2j_ECs5EKAXG1naGG_25candle_wasm_chat_template.exit: ; preds = %bb.e, %bb.f
  %.sroa.0.0.copyload1 = load i8, ptr %i.a, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6.0..sroa_idx2, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !102
  %i.g = icmp eq i8 %.sroa.0.0.copyload1, -1
  br i1 %i.g, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellbEE8try_withNCINvMsc_NtCs1fJj97VvEPD_9minijinja5valueNtB1N_5Value14from_serializeRRNtNtCsgCecv3eZDcN_5alloc6string6StringE0B2j_ECs5EKAXG1naGG_25candle_wasm_chat_template.exit.thread, label %bb.g, !prof !6

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellbEE8try_withNCINvMsc_NtCs1fJj97VvEPD_9minijinja5valueNtB1N_5Value14from_serializeRRNtNtCsgCecv3eZDcN_5alloc6string6StringE0B2j_ECs5EKAXG1naGG_25candle_wasm_chat_template.exit.thread: ; preds = %bb.a, %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellbEE8try_withNCINvMsc_NtCs1fJj97VvEPD_9minijinja5valueNtB1N_5Value14from_serializeRRNtNtCsgCecv3eZDcN_5alloc6string6StringE0B2j_ECs5EKAXG1naGG_25candle_wasm_chat_template.exit
  call void @_RNvNtNtCs5Xr050g3D4S_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #26
  unreachable

bb.g:                                             ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellbEE8try_withNCINvMsc_NtCs1fJj97VvEPD_9minijinja5valueNtB1N_5Value14from_serializeRRNtNtCsgCecv3eZDcN_5alloc6string6StringE0B2j_ECs5EKAXG1naGG_25candle_wasm_chat_template.exit
  store i8 %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellbEE4withNCINvMsc_NtCs1fJj97VvEPD_9minijinja5valueNtB1J_5Value14from_serializeRRSNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageE0B2f_EB2M_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6 = alloca [23 x i8], align 1            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.b = tail call noundef ptr %.val(ptr noalias nofree noundef dereferenceable_or_null(2) null), !noalias !109, !inline_history !106 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellbEE8try_withNCINvMsc_NtCs1fJj97VvEPD_9minijinja5valueNtB1N_5Value14from_serializeRRSNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageE0B2j_EB2Q_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !109
  %i.d = load i8, ptr %i.b, align 1, !range !5, !noalias !110, !noundef !4 ; 2 uses
  store i8 1, ptr %i.b, align 1, !noalias !110
  invoke void @_RINvNtNtCs1fJj97VvEPD_9minijinja5value9serialize9transformRRSNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageEBZ_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
          to label %bb.e unwind label %bb.c, !noalias !109

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %.not.not.i.i = icmp eq i8 %i.d, 0
  br i1 %.not.not.i.i, label %bb.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value26InternalSerializationGuardECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.i

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.b, align 1, !noalias !110
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value26InternalSerializationGuardECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.i

bb.e:                                             ; preds = %bb.b
  %i.f = trunc nuw i8 %i.d to i1
  br i1 %i.f, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellbEE8try_withNCINvMsc_NtCs1fJj97VvEPD_9minijinja5valueNtB1N_5Value14from_serializeRRSNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageE0B2j_EB2Q_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %i.b, align 1, !noalias !110
  br label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellbEE8try_withNCINvMsc_NtCs1fJj97VvEPD_9minijinja5valueNtB1N_5Value14from_serializeRRSNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageE0B2j_EB2Q_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value26InternalSerializationGuardECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.e

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellbEE8try_withNCINvMsc_NtCs1fJj97VvEPD_9minijinja5valueNtB1N_5Value14from_serializeRRSNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageE0B2j_EB2Q_.exit: ; preds = %bb.e, %bb.f
  %.sroa.0.0.copyload1 = load i8, ptr %i.a, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6.0..sroa_idx2, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !109
  %i.g = icmp eq i8 %.sroa.0.0.copyload1, -1
  br i1 %i.g, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellbEE8try_withNCINvMsc_NtCs1fJj97VvEPD_9minijinja5valueNtB1N_5Value14from_serializeRRSNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageE0B2j_EB2Q_.exit.thread, label %bb.g, !prof !6

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellbEE8try_withNCINvMsc_NtCs1fJj97VvEPD_9minijinja5valueNtB1N_5Value14from_serializeRRSNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageE0B2j_EB2Q_.exit.thread: ; preds = %bb.a, %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellbEE8try_withNCINvMsc_NtCs1fJj97VvEPD_9minijinja5valueNtB1N_5Value14from_serializeRRSNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageE0B2j_EB2Q_.exit
  call void @_RNvNtNtCs5Xr050g3D4S_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #26
  unreachable

bb.g:                                             ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellbEE8try_withNCINvMsc_NtCs1fJj97VvEPD_9minijinja5valueNtB1N_5Value14from_serializeRRSNtCs5EKAXG1naGG_25candle_wasm_chat_template7MessageE0B2j_EB2Q_.exit
  store i8 %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellbEE4withNCINvMsc_NtCs1fJj97VvEPD_9minijinja5valueNtB1J_5Value14from_serializeRbE0B2f_ECs5EKAXG1naGG_25candle_wasm_chat_template(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly captures(address, read_provenance) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6 = alloca [23 x i8], align 1            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.b = tail call noundef ptr %.val(ptr noalias nofree noundef dereferenceable_or_null(2) null), !noalias !116, !inline_history !113 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellbEE8try_withNCINvMsc_NtCs1fJj97VvEPD_9minijinja5valueNtB1N_5Value14from_serializeRbE0B2j_ECs5EKAXG1naGG_25candle_wasm_chat_template.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !116
  %i.d = load i8, ptr %i.b, align 1, !range !5, !noalias !117, !noundef !4 ; 2 uses
  store i8 1, ptr %i.b, align 1, !noalias !117
  invoke void @_RINvNtNtCs1fJj97VvEPD_9minijinja5value9serialize9transformRbECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %2)
          to label %bb.e unwind label %bb.c, !noalias !116

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %.not.not.i.i = icmp eq i8 %i.d, 0
  br i1 %.not.not.i.i, label %bb.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value26InternalSerializationGuardECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.i

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.b, align 1, !noalias !117
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value26InternalSerializationGuardECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.i

bb.e:                                             ; preds = %bb.b
  %i.f = trunc nuw i8 %i.d to i1
  br i1 %i.f, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellbEE8try_withNCINvMsc_NtCs1fJj97VvEPD_9minijinja5valueNtB1N_5Value14from_serializeRbE0B2j_ECs5EKAXG1naGG_25candle_wasm_chat_template.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %i.b, align 1, !noalias !117
  br label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellbEE8try_withNCINvMsc_NtCs1fJj97VvEPD_9minijinja5valueNtB1N_5Value14from_serializeRbE0B2j_ECs5EKAXG1naGG_25candle_wasm_chat_template.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value26InternalSerializationGuardECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.e

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellbEE8try_withNCINvMsc_NtCs1fJj97VvEPD_9minijinja5valueNtB1N_5Value14from_serializeRbE0B2j_ECs5EKAXG1naGG_25candle_wasm_chat_template.exit: ; preds = %bb.e, %bb.f
  %.sroa.0.0.copyload1 = load i8, ptr %i.a, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6.0..sroa_idx2, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !116
  %i.g = icmp eq i8 %.sroa.0.0.copyload1, -1
  br i1 %i.g, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellbEE8try_withNCINvMsc_NtCs1fJj97VvEPD_9minijinja5valueNtB1N_5Value14from_serializeRbE0B2j_ECs5EKAXG1naGG_25candle_wasm_chat_template.exit.thread, label %bb.g, !prof !6

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellbEE8try_withNCINvMsc_NtCs1fJj97VvEPD_9minijinja5valueNtB1N_5Value14from_serializeRbE0B2j_ECs5EKAXG1naGG_25candle_wasm_chat_template.exit.thread: ; preds = %bb.a, %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellbEE8try_withNCINvMsc_NtCs1fJj97VvEPD_9minijinja5valueNtB1N_5Value14from_serializeRbE0B2j_ECs5EKAXG1naGG_25candle_wasm_chat_template.exit
  call void @_RNvNtNtCs5Xr050g3D4S_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #26
  unreachable

bb.g:                                             ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellbEE8try_withNCINvMsc_NtCs1fJj97VvEPD_9minijinja5valueNtB1N_5Value14from_serializeRbE0B2j_ECs5EKAXG1naGG_25candle_wasm_chat_template.exit
  store i8 %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6, i64 23, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellmEE4withNCINvXsd_NtCs1fJj97VvEPD_9minijinja5valueNtB1J_5ValueNtNtCseZbltJ5Yqe_10serde_core3ser9Serialize9serializeNtNtB1J_9serialize15ValueSerializerE0mECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.a = tail call noundef ptr %.val(ptr noalias nofree noundef align 4 dereferenceable_or_null(8) null), !inline_history !118 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs5Xr050g3D4S_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.a, align 4, !noundef !4
  %i.d = add i32 %i.c, 1                          ; 2 uses
  store i32 %i.d, ptr %i.a, align 4
  ret i32 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellNtNtCs1fJj97VvEPD_9minijinja5value19ValueHandleRegistryEE4withNCINvXsd_B1x_NtB1x_5ValueNtNtCseZbltJ5Yqe_10serde_core3ser9Serialize9serializeNtNtB1x_9serialize15ValueSerializerEs_0uECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1, ptr noundef nonnull align 8 captures(address, read_provenance) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.4.i.i.i = alloca [28 x i8], align 4      ; 4 uses
  %.sroa.22.i.i = alloca [6 x i8], align 2        ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.f = tail call noundef ptr %.val(ptr noalias nofree noundef align 8 dereferenceable_or_null(72) null), !inline_history !119 ; 13 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.ai, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  %i.h = load i64, ptr %i.f, align 8, !noundef !4
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.v, !prof !7

bb.c:                                             ; preds = %bb.b
  store i64 -1, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.k = load i32, ptr %1, align 4, !noundef !4   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.22.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %i.l = load i8, ptr %2, align 8, !range !8, !alias.scope !131, !noundef !4 ; 2 uses
  switch i8 %i.l, label %default.unreachable [
    i8 0, label %_RNvXsB_NtCs1fJj97VvEPD_9minijinja5valueNtB5_9ValueReprNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %bb.h
    i8 6, label %bb.i
    i8 7, label %bb.j
    i8 8, label %bb.k
    i8 9, label %bb.l
    i8 10, label %bb.m
    i8 11, label %bb.n
    i8 12, label %bb.o
  ]

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.n = load i8, ptr %i.m, align 1, !range !5, !alias.scope !131, !noundef !4
  br label %_RNvXsB_NtCs1fJj97VvEPD_9minijinja5valueNtB5_9ValueReprNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.p = load i8, ptr %i.o, align 1, !range !5, !alias.scope !131, !noundef !4
  br label %_RNvXsB_NtCs1fJj97VvEPD_9minijinja5valueNtB5_9ValueReprNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i

bb.f:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !131, !noundef !4
  br label %_RNvXsB_NtCs1fJj97VvEPD_9minijinja5valueNtB5_9ValueReprNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i

bb.g:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !131, !noundef !4
  br label %_RNvXsB_NtCs1fJj97VvEPD_9minijinja5valueNtB5_9ValueReprNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i

bb.h:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !131, !noundef !4
  br label %_RNvXsB_NtCs1fJj97VvEPD_9minijinja5valueNtB5_9ValueReprNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i

bb.i:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !131, !nonnull !4, !noundef !4 ; 2 uses
  %i.y = atomicrmw add ptr %i.x, i64 1 monotonic, align 8, !noalias !132
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %bb.q, label %bb.p

bb.j:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 1
  %.sroa.16.1.copyload8.i.i = load i8, ptr %i.aa, align 1, !alias.scope !132
  %.sroa.22.1..sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %2, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.22.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.22.1..sroa_idx10.i.i, i64 6, i1 false), !alias.scope !132
  %.sroa.2211.1..sroa_idx14.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2211.1.copyload15.i.i = load i64, ptr %.sroa.2211.1..sroa_idx14.i.i, align 8, !alias.scope !132
  %.sroa.29.1..sroa_idx18.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.29.1.copyload19.i.i = load i8, ptr %.sroa.29.1..sroa_idx18.i.i, align 8, !alias.scope !132
  %.sroa.29.1.insert.ext21.i.i = zext i8 %.sroa.29.1.copyload19.i.i to i64
  br label %_RNvXsB_NtCs1fJj97VvEPD_9minijinja5valueNtB5_9ValueReprNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i

bb.k:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 1
  %.sroa.16.1.copyload7.i.i = load i8, ptr %i.ab, align 1, !alias.scope !132
  %.sroa.22.1..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %2, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.22.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.22.1..sroa_idx9.i.i, i64 6, i1 false), !alias.scope !132
  %.sroa.2211.1..sroa_idx12.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2211.1.copyload13.i.i = load i64, ptr %.sroa.2211.1..sroa_idx12.i.i, align 8, !alias.scope !132
  %.sroa.29.1..sroa_idx16.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.29.1.copyload17.i.i = load i8, ptr %.sroa.29.1..sroa_idx16.i.i, align 8, !alias.scope !132
  %.sroa.29.1.insert.ext.i.i = zext i8 %.sroa.29.1.copyload17.i.i to i64
  br label %_RNvXsB_NtCs1fJj97VvEPD_9minijinja5valueNtB5_9ValueReprNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i

bb.l:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !131, !nonnull !4, !noundef !4 ; 2 uses
  %i.ae = atomicrmw add ptr %i.ad, i64 1 monotonic, align 8, !noalias !132
  %i.af = icmp slt i64 %i.ae, 0
  br i1 %i.af, label %bb.s, label %bb.r

bb.m:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 1
  %.sroa.16.1.copyload.i.i = load i8, ptr %i.ag, align 1, !alias.scope !132
  %.sroa.22.1..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.22.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.22.1..sroa_idx.i.i, i64 6, i1 false), !alias.scope !132
  %.sroa.2211.1..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2211.1.copyload.i.i = load i64, ptr %.sroa.2211.1..sroa_idx.i.i, align 8, !alias.scope !132
  %.sroa.29.1..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.29.1.copyload.i.i = load i64, ptr %.sroa.29.1..sroa_idx.i.i, align 8, !alias.scope !132
  br label %_RNvXsB_NtCs1fJj97VvEPD_9minijinja5valueNtB5_9ValueReprNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i

bb.n:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !131, !nonnull !4, !noundef !4 ; 2 uses
  %i.aj = atomicrmw add ptr %i.ai, i64 1 monotonic, align 8, !noalias !132
  %i.ak = icmp slt i64 %i.aj, 0
  br i1 %i.ak, label %bb.u, label %bb.t

bb.o:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.am = invoke { ptr, ptr } @_RNvXs_NvNtNtCs1fJj97VvEPD_9minijinja5value6object1__NtB6_9DynObjectNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.al)
          to label %.noexc.i.i unwind label %bb.z, !noalias !130 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.o
  %i.an = extractvalue { ptr, ptr } %i.am, 0
  %i.ao = extractvalue { ptr, ptr } %i.am, 1
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  br label %_RNvXsB_NtCs1fJj97VvEPD_9minijinja5valueNtB5_9ValueReprNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i

bb.p:                                             ; preds = %bb.i
  %i.ar = ptrtoint ptr %i.x to i64
  br label %_RNvXsB_NtCs1fJj97VvEPD_9minijinja5valueNtB5_9ValueReprNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i

bb.q:                                             ; preds = %bb.i
  tail call void @llvm.trap()
  unreachable

bb.r:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !131, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.av = load i8, ptr %i.au, align 1, !range !5, !alias.scope !131, !noundef !4
  %i.aw = ptrtoint ptr %i.ad to i64
  br label %_RNvXsB_NtCs1fJj97VvEPD_9minijinja5valueNtB5_9ValueReprNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i

bb.s:                                             ; preds = %bb.l
  tail call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %bb.n
  %i.ax = ptrtoint ptr %i.ai to i64
  br label %_RNvXsB_NtCs1fJj97VvEPD_9minijinja5valueNtB5_9ValueReprNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i

bb.u:                                             ; preds = %bb.n
  tail call void @llvm.trap()
  unreachable

bb.v:                                             ; preds = %bb.b
  tail call void @_RNvNtCsf3Ta7LF998c_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #26
  unreachable

_RNvXsB_NtCs1fJj97VvEPD_9minijinja5valueNtB5_9ValueReprNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.t, %bb.r, %bb.p, %.noexc.i.i, %bb.m, %bb.k, %bb.j, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.06.sroa.16.0.i.i = phi i8 [ undef, %.noexc.i.i ], [ %i.n, %bb.d ], [ %i.p, %bb.e ], [ undef, %bb.f ], [ undef, %bb.g ], [ undef, %bb.h ], [ undef, %bb.p ], [ %.sroa.16.1.copyload8.i.i, %bb.j ], [ %.sroa.16.1.copyload7.i.i, %bb.k ], [ %i.av, %bb.r ], [ %.sroa.16.1.copyload.i.i, %bb.m ], [ undef, %bb.t ], [ undef, %bb.c ]
  %.sroa.29.0.i.i = phi i64 [ %i.aq, %.noexc.i.i ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %bb.f ], [ undef, %bb.g ], [ undef, %bb.h ], [ undef, %bb.p ], [ %.sroa.29.1.insert.ext21.i.i, %bb.j ], [ %.sroa.29.1.insert.ext.i.i, %bb.k ], [ %i.at, %bb.r ], [ %.sroa.29.1.copyload.i.i, %bb.m ], [ undef, %bb.t ], [ undef, %bb.c ]
  %.sroa.2211.0.i.i = phi i64 [ %i.ap, %.noexc.i.i ], [ undef, %bb.d ], [ undef, %bb.e ], [ %i.r, %bb.f ], [ %i.t, %bb.g ], [ %i.v, %bb.h ], [ %i.ar, %bb.p ], [ %.sroa.2211.1.copyload15.i.i, %bb.j ], [ %.sroa.2211.1.copyload13.i.i, %bb.k ], [ %i.aw, %bb.r ], [ %.sroa.2211.1.copyload.i.i, %bb.m ], [ %i.ax, %bb.t ], [ undef, %bb.c ]
  %.sroa.06.sroa.16.0.insert.ext.i.i = zext i8 %.sroa.06.sroa.16.0.i.i to i16
  %.sroa.06.sroa.16.0.insert.shift.i.i = shl nuw i16 %.sroa.06.sroa.16.0.insert.ext.i.i, 8
  %.sroa.06.sroa.0.0.insert.ext.i.i = zext nneg i8 %i.l to i16
  %.sroa.06.sroa.0.0.insert.insert.i.i = or disjoint i16 %.sroa.06.sroa.16.0.insert.shift.i.i, %.sroa.06.sroa.0.0.insert.ext.i.i
  store i16 %.sroa.06.sroa.0.0.insert.insert.i.i, ptr %i.e, align 8
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.22.0..sroa_idx.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.22.i.i, i64 6, i1 false)
  %.sroa.2211.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.2211.0.i.i, ptr %.sroa.2211.0..sroa_idx.i.i, align 8
  %.sroa.29.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.29.0.i.i, ptr %.sroa.29.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 8, !range !9, !alias.scope !133, !noundef !4 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.az, -1              ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !133
  %i.bd = icmp eq i64 %i.bc, 0
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %i.bd, i1 false
  br i1 %or.cond.i.i.i, label %bb.ae, label %bb.w

bb.w:                                             ; preds = %_RNvXsB_NtCs1fJj97VvEPD_9minijinja5valueNtB5_9ValueReprNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i
  %.sroa.07.0.copyload.i.i.i = load i32, ptr %i.j, align 8, !alias.scope !133
  store i8 -1, ptr %i.ay, align 8, !alias.scope !133
  br i1 %.not.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !134
  store i8 %i.az, ptr %i.d, align 8, !noalias !134
  %.sroa.6.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6.8..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6.0..sroa_idx.i.i.i, i64 23, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !134
  invoke void @_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapmNtNtCs1fJj97VvEPD_9minijinja5value5ValueE6insertCs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba, i32 noundef %.sroa.07.0.copyload.i.i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.aa unwind label %bb.af, !noalias !135

bb.y:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1fJj97VvEPD_9minijinja5value5ValueEECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.i, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !134
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !133
  invoke void @_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapmNtNtCs1fJj97VvEPD_9minijinja5value5ValueE6insertCs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba, i32 noundef %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.ac unwind label %bb.z, !noalias !135

bb.z:                                             ; preds = %bb.ad, %bb.y, %bb.o
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.aa:                                            ; preds = %bb.x
  %i.be = load i8, ptr %i.c, align 8, !range !9, !alias.scope !136, !noalias !135, !noundef !4
  %i.bf = icmp eq i8 %i.be, -1
  br i1 %i.bf, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1fJj97VvEPD_9minijinja5value5ValueEECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value5ValueECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1fJj97VvEPD_9minijinja5value5ValueEECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.i unwind label %bb.af, !noalias !135

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1fJj97VvEPD_9minijinja5value5ValueEECs5EKAXG1naGG_25candle_wasm_chat_template.exit.i.i: ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !134
  br label %bb.y

bb.ac:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !134
  %i.bg = load i8, ptr %i.b, align 8, !range !9, !alias.scope !137, !noalias !135, !noundef !4
  %i.bh = icmp eq i8 %i.bg, -1
  br i1 %i.bh, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1fJj97VvEPD_9minijinja5value5ValueEECs5EKAXG1naGG_25candle_wasm_chat_template.exit5.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value5ValueECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1fJj97VvEPD_9minijinja5value5ValueEECs5EKAXG1naGG_25candle_wasm_chat_template.exit5.i.i unwind label %bb.z, !noalias !135

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1fJj97VvEPD_9minijinja5value5ValueEECs5EKAXG1naGG_25candle_wasm_chat_template.exit5.i.i: ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !134
  br label %bb.aj

bb.ae:                                            ; preds = %_RNvXsB_NtCs1fJj97VvEPD_9minijinja5valueNtB5_9ValueReprNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i
  %.sroa.4.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.4.8..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  store i32 %i.k, ptr %i.j, align 8, !alias.scope !133
  %.sroa.5.0..sroa_idx6.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.5.0..sroa_idx6.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.i.i.i, i64 28, i1 false)
  br label %bb.aj

bb.af:                                            ; preds = %bb.ab, %bb.x
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value5ValueECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #23
          to label %bb.ah unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.ah:                                            ; preds = %bb.af, %bb.z
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %bb.af ], [ %lpad.thr_comm.split-lp.i.i, %bb.z ]
  %i.bj = load i64, ptr %i.f, align 8, !noundef !4
  %i.bk = add i64 %i.bj, 1
  store i64 %i.bk, ptr %i.f, align 8
  resume { ptr, i32 } %eh.lpad-body.i.i

bb.ai:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCs5Xr050g3D4S_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #26
  unreachable

bb.aj:                                            ; preds = %bb.ae, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1fJj97VvEPD_9minijinja5value5ValueEECs5EKAXG1naGG_25candle_wasm_chat_template.exit5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bl = load i64, ptr %i.f, align 8, !noundef !4
  %i.bm = add i64 %i.bl, 1
  store i64 %i.bm, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5EKAXG1naGG_25candle_wasm_chat_template(ptr %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = icmp eq ptr %.0.val, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5EKAXG1naGG_25candle_wasm_chat_template.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.d = and i64 %i.c, 3
  switch i64 %i.d, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5EKAXG1naGG_25candle_wasm_chat_template.exit
    i64 3, label %bb.d
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5EKAXG1naGG_25candle_wasm_chat_template.exit
    i64 1, label %bb.e
  ], !prof !140

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.e = icmp ult ptr %.0.val, inttoptr (i64 188978561024 to ptr)
  %i.f = and i64 %i.c, 1095216660480
  %i.g = icmp ne i64 %i.f, 1095216660480
  tail call void @llvm.assume(i1 %i.e)
  tail call void @llvm.assume(i1 %i.g)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5EKAXG1naGG_25candle_wasm_chat_template.exit

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %.0.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !alias.scope !141
  store i8 3, ptr %i.a, align 8, !alias.scope !141
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5EKAXG1naGG_25candle_wasm_chat_template.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5EKAXG1naGG_25candle_wasm_chat_template.exit: ; preds = %bb.c, %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value5ValueECs5EKAXG1naGG_25candle_wasm_chat_template(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.a = load i8, ptr %0, align 8, !range !8, !alias.scope !156, !noundef !4
  switch i8 %i.a, label %bb.b [
    i8 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECs5EKAXG1naGG_25candle_wasm_chat_template.exit
    i8 1, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECs5EKAXG1naGG_25candle_wasm_chat_template.exit
    i8 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECs5EKAXG1naGG_25candle_wasm_chat_template.exit
    i8 3, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECs5EKAXG1naGG_25candle_wasm_chat_template.exit
    i8 4, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECs5EKAXG1naGG_25candle_wasm_chat_template.exit
    i8 5, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECs5EKAXG1naGG_25candle_wasm_chat_template.exit
    i8 6, label %bb.c
    i8 7, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECs5EKAXG1naGG_25candle_wasm_chat_template.exit
    i8 8, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECs5EKAXG1naGG_25candle_wasm_chat_template.exit
    i8 9, label %bb.e
    i8 10, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECs5EKAXG1naGG_25candle_wasm_chat_template.exit
    i8 11, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs0_NvNtNtCs1fJj97VvEPD_9minijinja5value6object1__NtB7_9DynObjectNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECs5EKAXG1naGG_25candle_wasm_chat_template.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !159, !nonnull !4, !noundef !4
  %i.e = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !159
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECs5EKAXG1naGG_25candle_wasm_chat_template.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs1fJj97VvEPD_9minijinja5error5ErrorE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #24
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECs5EKAXG1naGG_25candle_wasm_chat_template.exit

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
end_hunk_0
