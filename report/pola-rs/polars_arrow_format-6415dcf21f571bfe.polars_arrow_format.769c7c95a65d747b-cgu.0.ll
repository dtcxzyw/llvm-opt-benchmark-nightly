Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_arrow_format-6415dcf21f571bfe.polars_arrow_format.769c7c95a65d747b-cgu.0?download=true
inline.NumInlined: 469
inline.NumDeleted: 207
begin_hunk_0_@_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8KeyValueEEEB1P_:bb.a
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8KeyValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBV_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8KeyValueEEB1t_.exit unwind label %bb.d, !dbg !547

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8KeyValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB12_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8KeyValueEEB1A_.exit.i unwind label %bb.e, !dbg !548

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #13, !dbg !547
  unreachable, !dbg !547

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8KeyValueEEB1A_.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c, !dbg !547

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8KeyValueEEB1t_.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8KeyValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB12_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !dbg !549
  br label %bb.b, !dbg !546
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9FieldNodeEEEB1P_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !16 !guid !553 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !554, !range !264, !noundef !262
  %i.b = icmp eq i64 %i.a, -9223372036854775808, !dbg !554
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !554

bb.b:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9FieldNodeEEB1t_.exit, %bb.a
  ret void, !dbg !554

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9FieldNodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBV_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9FieldNodeEEB1t_.exit unwind label %bb.d, !dbg !555

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9FieldNodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB12_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9FieldNodeEEB1A_.exit.i unwind label %bb.e, !dbg !556

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #13, !dbg !555
  unreachable, !dbg !555

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9FieldNodeEEB1A_.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c, !dbg !555

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9FieldNodeEEB1t_.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9FieldNodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB12_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !dbg !557
  br label %bb.b, !dbg !554
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEECsabmDd0H9iBj_19polars_arrow_format(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !19 !guid !561 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !562, !range !264, !noundef !262
  %i.b = icmp eq i64 %i.a, -9223372036854775808, !dbg !562
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !562

bb.b:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECsabmDd0H9iBj_19polars_arrow_format.exit, %bb.a
  ret void, !dbg !562

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsabmDd0H9iBj_19polars_arrow_format(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECsabmDd0H9iBj_19polars_arrow_format.exit unwind label %bb.d, !dbg !563

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsabmDd0H9iBj_19polars_arrow_format(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecxEECsabmDd0H9iBj_19polars_arrow_format.exit.i unwind label %bb.e, !dbg !564

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #13, !dbg !563
  unreachable, !dbg !563

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecxEECsabmDd0H9iBj_19polars_arrow_format.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c, !dbg !563

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECsabmDd0H9iBj_19polars_arrow_format.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsabmDd0H9iBj_19polars_arrow_format(ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !dbg !565
  br label %bb.b, !dbg !562
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf11RecordBatchEEEB1R_(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !22 !guid !577 {
bb.a:
  %i.a = icmp eq ptr %.0.val, null, !dbg !578
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !578

bb.b:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf11RecordBatchEEB1v_.exit, %bb.a
  ret void, !dbg !578

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf11RecordBatchEBW_(ptr noalias noundef nonnull align 8 dereferenceable(88) %.0.val)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf11RecordBatchEEB1v_.exit unwind label %bb.d, !dbg !579

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 88, i64 noundef 8) #14, !dbg !580
  resume { ptr, i32 } %i.b, !dbg !579

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf11RecordBatchEEB1v_.exit: ; preds = %bb.c
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 88, i64 noundef 8) #14, !dbg !581
  br label %bb.b, !dbg !578
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf18DictionaryEncodingEEEB1R_(ptr captures(address) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !31 !guid !596 {
bb.a:
  %i.a = icmp eq ptr %.0.val, null, !dbg !597
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !597

bb.b:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf18DictionaryEncodingEEB1v_.exit, %bb.a
  ret void, !dbg !597

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %.0.val, i64 8, !dbg !598
  %.val.i = load ptr, ptr %i.b, align 8, !dbg !598, !align !274, !noundef !262 ; 2 uses
  %i.c = icmp eq ptr %.val.i, null, !dbg !599
  br i1 %i.c, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf18DictionaryEncodingEEB1v_.exit, label %bb.d, !dbg !599

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 8, i64 noundef 4) #14, !dbg !600
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf18DictionaryEncodingEEB1v_.exit, !dbg !599

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf18DictionaryEncodingEEB1v_.exit: ; preds = %bb.c, %bb.d
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 24, i64 noundef 8) #14, !dbg !601
  br label %bb.b, !dbg !597
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf6SchemaEEEB1R_(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !42 !guid !613 {
bb.a:
  %i.a = icmp eq ptr %.0.val, null, !dbg !614
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !614

bb.b:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf6SchemaEEB1v_.exit, %bb.a
  ret void, !dbg !614

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf6SchemaEBW_(ptr noalias noundef nonnull align 8 dereferenceable(80) %.0.val)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf6SchemaEEB1v_.exit unwind label %bb.d, !dbg !615

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 80, i64 noundef 8) #14, !dbg !616
  resume { ptr, i32 } %i.b, !dbg !615

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf6SchemaEEB1v_.exit: ; preds = %bb.c
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 80, i64 noundef 8) #14, !dbg !617
  br label %bb.b, !dbg !614
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringEECsabmDd0H9iBj_19polars_arrow_format(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !47 !guid !622 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !623, !range !264, !noundef !262
  %i.b = icmp eq i64 %i.a, -9223372036854775808, !dbg !623
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !623

bb.b:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsabmDd0H9iBj_19polars_arrow_format.exit, %bb.a
  ret void, !dbg !623

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsabmDd0H9iBj_19polars_arrow_format(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsabmDd0H9iBj_19polars_arrow_format.exit unwind label %bb.d, !dbg !624

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsabmDd0H9iBj_19polars_arrow_format(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECsabmDd0H9iBj_19polars_arrow_format.exit.i.i unwind label %bb.e, !dbg !625

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #13, !dbg !624
  unreachable, !dbg !624

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECsabmDd0H9iBj_19polars_arrow_format.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c, !dbg !624

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECsabmDd0H9iBj_19polars_arrow_format.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsabmDd0H9iBj_19polars_arrow_format(ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !dbg !626
  br label %bb.b, !dbg !623
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf13MessageHeaderEEB1i_(i64 %.0.val, ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !627 !guid !651 {
bb.a:
  %0 = icmp eq i64 %.0.val, 5, !dbg !652
  br i1 %0, label %bb.b, label %bb.c, !dbg !652

bb.b:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf13MessageHeaderEBW_.exit, %bb.a
  ret void, !dbg !652

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  switch i64 %.0.val, label %1 [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.h
    i64 3, label %bb.j
  ], !dbg !653

1:                                                ; preds = %bb.c
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf12SparseTensorEBW_(ptr noalias noundef nonnull align 8 dereferenceable(80) %.8.val)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf13MessageHeaderEBW_.exit unwind label %bb.k, !dbg !654

common.resume.i:                                  ; preds = %bb.k, %bb.i, %bb.g
  %.sink.i = phi i64 [ 80, %bb.k ], [ 88, %bb.i ], [ 24, %bb.g ]
  %common.resume.op.i = phi { ptr, i32 } [ %i.e, %bb.k ], [ %i.d, %bb.i ], [ %i.c, %bb.g ]
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef %.sink.i, i64 noundef 8) #14, !dbg !653
  resume { ptr, i32 } %common.resume.op.i, !dbg !653

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf6SchemaEBW_(ptr noalias noundef nonnull align 8 dereferenceable(80) %.8.val)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf13MessageHeaderEBW_.exit unwind label %bb.k, !dbg !655

bb.e:                                             ; preds = %bb.c
  %i.a = getelementptr i8, ptr %.8.val, i64 8, !dbg !656
  %.val.i.i = load ptr, ptr %i.a, align 8, !dbg !656, !align !275, !noundef !262 ; 4 uses
  %i.b = icmp eq ptr %.val.i.i, null, !dbg !657
  br i1 %i.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf13MessageHeaderEBW_.exit, label %bb.f, !dbg !657

bb.f:                                             ; preds = %bb.e
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf11RecordBatchEBW_(ptr noalias noundef nonnull align 8 dereferenceable(88) %.val.i.i)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf11RecordBatchEEB1v_.exit.i.i.i.i unwind label %bb.g, !dbg !658

bb.g:                                             ; preds = %bb.f
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 88, i64 noundef 8) #14, !dbg !659
  br label %common.resume.i, !dbg !656

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf11RecordBatchEEB1v_.exit.i.i.i.i: ; preds = %bb.f
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 88, i64 noundef 8) #14, !dbg !660
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf13MessageHeaderEBW_.exit, !dbg !657

bb.h:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf11RecordBatchEBW_(ptr noalias noundef nonnull align 8 dereferenceable(88) %.8.val)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf13MessageHeaderEBW_.exit unwind label %bb.i, !dbg !661

bb.i:                                             ; preds = %bb.h
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i, !dbg !661

bb.j:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf6TensorEBW_(ptr noalias noundef nonnull align 8 dereferenceable(80) %.8.val)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf13MessageHeaderEBW_.exit unwind label %bb.k, !dbg !662

bb.k:                                             ; preds = %bb.j, %bb.d, %1
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i, !dbg !662

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf13MessageHeaderEBW_.exit: ; preds = %1, %bb.d, %bb.e, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf11RecordBatchEEB1v_.exit.i.i.i.i, %bb.h, %bb.j
  %.sink1.i = phi i64 [ 88, %bb.h ], [ 24, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf11RecordBatchEEB1v_.exit.i.i.i.i ], [ 80, %bb.d ], [ 80, %1 ], [ 24, %bb.e ], [ 80, %bb.j ]
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef %.sink1.i, i64 noundef 8) #14, !dbg !653
  br label %bb.b, !dbg !652
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf6BufferEEB1t_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !8 !guid !665 {
bb.a:
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf6BufferENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBV_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b, !dbg !666

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf6BufferENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB12_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf6BufferEEB1A_.exit unwind label %bb.d, !dbg !667

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf6BufferENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB12_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0), !dbg !668
  ret void, !dbg !666

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #13, !dbg !666
  unreachable, !dbg !666

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf6BufferEEB1A_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !666
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9TensorDimEEB1t_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !52 !guid !671 {
bb.a:
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9TensorDimENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBV_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b, !dbg !672

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9TensorDimENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB12_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9TensorDimEEB1A_.exit unwind label %bb.d, !dbg !673

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9TensorDimENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB12_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0), !dbg !674
  ret void, !dbg !672

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #13, !dbg !672
  unreachable, !dbg !672

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9TensorDimEEB1A_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !672
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECsabmDd0H9iBj_19polars_arrow_format(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !54 !guid !677 {
bb.a:
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsabmDd0H9iBj_19polars_arrow_format(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b, !dbg !678

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsabmDd0H9iBj_19polars_arrow_format(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVeclEECsabmDd0H9iBj_19polars_arrow_format.exit unwind label %bb.d, !dbg !679

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsabmDd0H9iBj_19polars_arrow_format(ptr noalias noundef nonnull align 8 dereferenceable(16) %0), !dbg !680
  ret void, !dbg !678

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #13, !dbg !678
  unreachable, !dbg !678

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVeclEECsabmDd0H9iBj_19polars_arrow_format.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !678
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf11RecordBatchEBW_(ptr noalias noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !681 !guid !714 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !718, !range !264, !alias.scope !715, !noundef !262
  %i.b = icmp eq i64 %i.a, -9223372036854775808, !dbg !718
  br i1 %i.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9FieldNodeEEEB1P_.exit, label %bb.b, !dbg !718

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9FieldNodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBV_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9FieldNodeEEB1t_.exit.i unwind label %bb.c, !dbg !719

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9FieldNodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB12_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d, !dbg !720

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #13, !dbg !719
  unreachable, !dbg !719

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9FieldNodeEEB1t_.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9FieldNodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB12_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9FieldNodeEEEB1P_.exit unwind label %bb.e, !dbg !721

bb.e:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9FieldNodeEEB1t_.exit.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !722

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !722
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf6BufferEEEB1P_(ptr noalias noundef align 8 dereferenceable(24) %i.f) #15
          to label %.body5 unwind label %bb.o, !dbg !722

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9FieldNodeEEEB1P_.exit: ; preds = %bb.a, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9FieldNodeEEB1t_.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !722 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !dbg !723, !range !264, !alias.scope !716, !noundef !262
  %i.i = icmp eq i64 %i.h, -9223372036854775808, !dbg !723
  br i1 %i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf6BufferEEEB1P_.exit, label %bb.f, !dbg !723

bb.f:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9FieldNodeEEEB1P_.exit
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf6BufferENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBV_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf6BufferEEB1t_.exit.i unwind label %bb.g, !dbg !724

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf6BufferENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB12_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body5 unwind label %bb.h, !dbg !725

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #13, !dbg !724
  unreachable, !dbg !724

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf6BufferEEB1t_.exit.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf6BufferENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB12_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf6BufferEEEB1P_.exit unwind label %bb.j, !dbg !726

.body5:                                           ; preds = %bb.j, %bb.g, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.n, %bb.j ], [ %i.j, %bb.g ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !722
  %.val4 = load ptr, ptr %i.l, align 8, !dbg !722, !noundef !262 ; 2 uses
  %i.m = icmp eq ptr %.val4, null, !dbg !727
  br i1 %i.m, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15BodyCompressionEEEB1R_.exit, label %bb.i, !dbg !727

bb.i:                                             ; preds = %.body5
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef 2, i64 noundef 1) #14, !dbg !728
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15BodyCompressionEEEB1R_.exit, !dbg !727

bb.j:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf6BufferEEB1t_.exit.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body5

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf6BufferEEEB1P_.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9FieldNodeEEEB1P_.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf6BufferEEB1t_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !722
  %.val = load ptr, ptr %i.o, align 8, !dbg !722, !noundef !262 ; 2 uses
  %i.p = icmp eq ptr %.val, null, !dbg !729
  br i1 %i.p, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15BodyCompressionEEEB1R_.exit8, label %bb.k, !dbg !729

bb.k:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf6BufferEEEB1P_.exit
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 2, i64 noundef 1) #14, !dbg !730
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15BodyCompressionEEEB1R_.exit8, !dbg !729

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15BodyCompressionEEEB1R_.exit: ; preds = %bb.i, %.body5
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !722
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEECsabmDd0H9iBj_19polars_arrow_format(ptr noalias noundef align 8 dereferenceable(24) %i.q) #15
          to label %common.resume unwind label %bb.o, !dbg !722

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15BodyCompressionEEEB1R_.exit8: ; preds = %bb.k, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf6BufferEEEB1P_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !722 ; 4 uses
  %i.s = load i64, ptr %i.r, align 8, !dbg !731, !range !264, !alias.scope !717, !noundef !262
  %i.t = icmp eq i64 %i.s, -9223372036854775808, !dbg !731
  br i1 %i.t, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEECsabmDd0H9iBj_19polars_arrow_format.exit, label %bb.l, !dbg !731

bb.l:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15BodyCompressionEEEB1R_.exit8
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsabmDd0H9iBj_19polars_arrow_format(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECsabmDd0H9iBj_19polars_arrow_format.exit.i unwind label %bb.m, !dbg !732

bb.m:                                             ; preds = %bb.l
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsabmDd0H9iBj_19polars_arrow_format(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume unwind label %bb.n, !dbg !733

bb.n:                                             ; preds = %bb.m
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #13, !dbg !732
  unreachable, !dbg !732

common.resume:                                    ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15BodyCompressionEEEB1R_.exit, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.m ], [ %.pn, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15BodyCompressionEEEB1R_.exit ]
end_hunk_0
begin_hunk_1_@llvm.memset.p0.i64
!428 = !DINamespace(name: "{impl#453}", scope: !286)
!429 = !DINamespace(name: "TimestampRef", scope: !286)
!430 = !DIFile(filename: "library/alloc/src/raw_vec/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "574f79ffb8958f4ee3ea71272af6c6ad")
!431 = !DINamespace(name: "raw_vec", scope: !267)
!432 = !DINamespace(name: "RawVecInner", scope: !431)
!433 = !DIFile(filename: "library/core/src/convert/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "895b07ad419949eb0829369911de237b")
!434 = !DIFile(filename: "library/core/src/ops/function.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "7165aec212fc528edf645f7f5c1c91bb")
!435 = !DINamespace(name: "ops", scope: !260)
!436 = !DINamespace(name: "function", scope: !435)
!437 = !DINamespace(name: "FnOnce", scope: !436)
!438 = !DINamespace(name: "convert", scope: !260)
!439 = !DINamespace(name: "{impl#3}", scope: !438)
!440 = !DIFile(filename: "library/alloc/src/string.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "d83aa07ff14615d36cf46a54ac461721")
!441 = !DINamespace(name: "string", scope: !267)
!442 = !DINamespace(name: "{impl#48}", scope: !441)
!443 = !DIFile(filename: "library/alloc/src/str.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "df2687b23b15ff9362a5ffa3e0f54f56")
!444 = !DINamespace(name: "str", scope: !267)
!445 = !DINamespace(name: "{impl#4}", scope: !444)
!446 = !DIFile(filename: "library/alloc/src/slice.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "c354101fc648df7ae7a06556360deeb9")
!447 = !DINamespace(name: "slice", scope: !267)
!448 = !DINamespace(name: "{impl#9}", scope: !447)
!449 = !DINamespace(name: "{impl#0}", scope: !447)
!450 = !DINamespace(name: "to_vec_in", scope: !449)
!451 = !DINamespace(name: "{impl#1}", scope: !450)
!452 = !DIFile(filename: "library/alloc/src/vec/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "798a33fa32aec5b8561311078a20d89c")
!453 = !DINamespace(name: "vec", scope: !267)
!454 = !DINamespace(name: "Vec", scope: !453)
!455 = !DINamespace(name: "RawVec", scope: !431)
!456 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!457 = !DIFile(filename: "library/core/src/hint.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "3bdbac5c7616d584a36b114744411911")
!458 = !DINamespace(name: "hint", scope: !260)
!459 = !DIFile(filename: "library/core/src/ptr/const_ptr.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "48638a38fe414ca30cde797e4a40b3a9")
!460 = !DINamespace(name: "const_ptr", scope: !261)
!461 = !DINamespace(name: "{impl#0}", scope: !460)
!462 = !DINamespace(name: "{impl#500}", scope: !286)
!463 = !DINamespace(name: "{impl#544}", scope: !286)
!464 = !DINamespace(name: "{impl#545}", scope: !286)
!465 = !DINamespace(name: "{impl#527}", scope: !286)
!466 = !DINamespace(name: "{impl#528}", scope: !286)
!467 = !DINamespace(name: "{impl#0}", scope: !272)
!468 = !DINamespace(name: "KeyValueRef", scope: !286)
!469 = !DIFile(filename: "library/core/src/fmt/num.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "f6b2e2268fd0327649658dbf44a6effb")
!470 = !DINamespace(name: "num", scope: !334)
!471 = !DINamespace(name: "Formatter", scope: !334)
!472 = !DINamespace(name: "{impl#623}", scope: !286)
!473 = !DINamespace(name: "FieldRef", scope: !286)
!474 = !DINamespace(name: "{impl#6}", scope: !438)
!475 = !DINamespace(name: "{impl#676}", scope: !286)
!476 = !DINamespace(name: "DictionaryEncodingRef", scope: !286)
!477 = !DINamespace(name: "{impl#654}", scope: !286)
!478 = !DINamespace(name: "SchemaRef", scope: !286)
!479 = !DINamespace(name: "{impl#724}", scope: !286)
!480 = !DIFile(filename: "library/core/src/cmp.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "93720ae7898ae8b09789e408e6950d44")
!481 = !DINamespace(name: "cmp", scope: !260)
!482 = !DINamespace(name: "impls", scope: !481)
!483 = !DINamespace(name: "{impl#79}", scope: !482)
!484 = !DINamespace(name: "Ordering", scope: !481)
!485 = !DINamespace(name: "{impl#781}", scope: !286)
!486 = !DINamespace(name: "RecordBatchRef", scope: !286)
!487 = !DINamespace(name: "{impl#802}", scope: !286)
!488 = !DINamespace(name: "BodyCompressionRef", scope: !286)
!489 = !DINamespace(name: "MessageRef", scope: !286)
!490 = !{i16 0, i16 6}
!491 = !DINamespace(name: "{impl#859}", scope: !286)
!492 = !DINamespace(name: "{impl#11}", scope: !272)
!493 = !DINamespace(name: "FooterRef", scope: !286)
!494 = !DINamespace(name: "DictionaryBatchRef", scope: !286)
!495 = !DINamespace(name: "{impl#821}", scope: !286)
!496 = !DINamespace(name: "{impl#1003}", scope: !286)
!497 = !DINamespace(name: "{impl#966}", scope: !286)
!498 = !DINamespace(name: "SparseTensorIndexCooRef", scope: !286)
!499 = !DINamespace(name: "SparseMatrixIndexCsxRef", scope: !286)
!500 = !DINamespace(name: "{impl#911}", scope: !286)
!501 = !DINamespace(name: "SparseTensorIndexCsfRef", scope: !286)
!502 = !DINamespace(name: "{impl#879}", scope: !286)
!503 = !DINamespace(name: "{impl#932}", scope: !286)
!504 = !DINamespace(name: "TensorDimRef", scope: !286)
!505 = !DINamespace(name: "{impl#984}", scope: !286)
!506 = !DINamespace(name: "SparseTensorRef", scope: !286)
!507 = !DINamespace(name: "TensorRef", scope: !286)
!508 = !DINamespace(name: "{impl#17}", scope: !286)
!509 = !DINamespace(name: "{impl#31}", scope: !314)
!510 = distinct !DILocation(line: 810, column: 1, scope: !1)
!511 = distinct !DILocation(line: 810, column: 1, scope: !2, inlinedAt: !510)
!512 = distinct !DILocation(line: 810, column: 1, scope: !2, inlinedAt: !510)
!513 = !{i64 8370212419873639505}
!514 = !DILocation(line: 810, column: 1, scope: !1)
!515 = !DILocation(line: 810, column: 1, scope: !2, inlinedAt: !510)
!516 = !DILocation(line: 810, column: 1, scope: !3, inlinedAt: !511)
!517 = !DILocation(line: 810, column: 1, scope: !3, inlinedAt: !512)
!518 = distinct !DILocation(line: 810, column: 1, scope: !4)
!519 = distinct !DILocation(line: 810, column: 1, scope: !5, inlinedAt: !518)
!520 = distinct !DILocation(line: 810, column: 1, scope: !5, inlinedAt: !518)
!521 = !{i64 7867516694669106364}
!522 = !DILocation(line: 810, column: 1, scope: !4)
!523 = !DILocation(line: 810, column: 1, scope: !5, inlinedAt: !518)
!524 = !DILocation(line: 810, column: 1, scope: !6, inlinedAt: !519)
!525 = !DILocation(line: 810, column: 1, scope: !6, inlinedAt: !520)
!526 = distinct !DILocation(line: 810, column: 1, scope: !7)
!527 = distinct !DILocation(line: 810, column: 1, scope: !8, inlinedAt: !526)
!528 = distinct !DILocation(line: 810, column: 1, scope: !8, inlinedAt: !526)
!529 = !{i64 3186500241681780170}
!530 = !DILocation(line: 810, column: 1, scope: !7)
!531 = !DILocation(line: 810, column: 1, scope: !8, inlinedAt: !526)
!532 = !DILocation(line: 810, column: 1, scope: !9, inlinedAt: !527)
!533 = !DILocation(line: 810, column: 1, scope: !9, inlinedAt: !528)
!534 = distinct !DILocation(line: 810, column: 1, scope: !10)
!535 = distinct !DILocation(line: 810, column: 1, scope: !11, inlinedAt: !534)
!536 = distinct !DILocation(line: 810, column: 1, scope: !11, inlinedAt: !534)
!537 = !{i64 2373207298658173964}
!538 = !DILocation(line: 810, column: 1, scope: !10)
!539 = !DILocation(line: 810, column: 1, scope: !11, inlinedAt: !534)
!540 = !DILocation(line: 810, column: 1, scope: !12, inlinedAt: !535)
!541 = !DILocation(line: 810, column: 1, scope: !12, inlinedAt: !536)
!542 = distinct !DILocation(line: 810, column: 1, scope: !13)
!543 = distinct !DILocation(line: 810, column: 1, scope: !14, inlinedAt: !542)
!544 = distinct !DILocation(line: 810, column: 1, scope: !14, inlinedAt: !542)
!545 = !{i64 -9140059786977367717}
!546 = !DILocation(line: 810, column: 1, scope: !13)
!547 = !DILocation(line: 810, column: 1, scope: !14, inlinedAt: !542)
!548 = !DILocation(line: 810, column: 1, scope: !15, inlinedAt: !543)
!549 = !DILocation(line: 810, column: 1, scope: !15, inlinedAt: !544)
!550 = distinct !DILocation(line: 810, column: 1, scope: !16)
!551 = distinct !DILocation(line: 810, column: 1, scope: !17, inlinedAt: !550)
!552 = distinct !DILocation(line: 810, column: 1, scope: !17, inlinedAt: !550)
!553 = !{i64 5267015368670796201}
!554 = !DILocation(line: 810, column: 1, scope: !16)
!555 = !DILocation(line: 810, column: 1, scope: !17, inlinedAt: !550)
!556 = !DILocation(line: 810, column: 1, scope: !18, inlinedAt: !551)
!557 = !DILocation(line: 810, column: 1, scope: !18, inlinedAt: !552)
!558 = distinct !DILocation(line: 810, column: 1, scope: !19)
!559 = distinct !DILocation(line: 810, column: 1, scope: !20, inlinedAt: !558)
!560 = distinct !DILocation(line: 810, column: 1, scope: !20, inlinedAt: !558)
!561 = !{i64 -1214897730327480588}
!562 = !DILocation(line: 810, column: 1, scope: !19)
!563 = !DILocation(line: 810, column: 1, scope: !20, inlinedAt: !558)
!564 = !DILocation(line: 810, column: 1, scope: !21, inlinedAt: !559)
!565 = !DILocation(line: 810, column: 1, scope: !21, inlinedAt: !560)
!566 = distinct !DILocation(line: 810, column: 1, scope: !22)
!567 = distinct !DILocation(line: 810, column: 1, scope: !23, inlinedAt: !566)
!568 = distinct !DILocation(line: 1921, column: 24, scope: !30, inlinedAt: !567)
!569 = distinct !DILocation(line: 462, column: 23, scope: !27, inlinedAt: !568)
!570 = distinct !DILocation(line: 344, column: 9, scope: !26, inlinedAt: !569)
!571 = distinct !DILocation(line: 229, column: 22, scope: !25, inlinedAt: !570)
!572 = distinct !DILocation(line: 810, column: 1, scope: !23, inlinedAt: !566)
!573 = distinct !DILocation(line: 1921, column: 24, scope: !30, inlinedAt: !572)
!574 = distinct !DILocation(line: 462, column: 23, scope: !27, inlinedAt: !573)
!575 = distinct !DILocation(line: 344, column: 9, scope: !26, inlinedAt: !574)
!576 = distinct !DILocation(line: 229, column: 22, scope: !25, inlinedAt: !575)
!577 = !{i64 7102695991223574051}
!578 = !DILocation(line: 810, column: 1, scope: !22)
!579 = !DILocation(line: 810, column: 1, scope: !23, inlinedAt: !566)
!580 = !DILocation(line: 128, column: 14, scope: !24, inlinedAt: !571)
!581 = !DILocation(line: 128, column: 14, scope: !24, inlinedAt: !576)
!582 = distinct !DILocation(line: 810, column: 1, scope: !31)
!583 = distinct !DILocation(line: 810, column: 1, scope: !32, inlinedAt: !582)
!584 = distinct !DILocation(line: 810, column: 1, scope: !34, inlinedAt: !583)
!585 = distinct !DILocation(line: 810, column: 1, scope: !33, inlinedAt: !584)
!586 = distinct !DILocation(line: 810, column: 1, scope: !38, inlinedAt: !585)
!587 = distinct !DILocation(line: 1921, column: 24, scope: !37, inlinedAt: !586)
!588 = distinct !DILocation(line: 462, column: 23, scope: !27, inlinedAt: !587)
!589 = distinct !DILocation(line: 344, column: 9, scope: !26, inlinedAt: !588)
!590 = distinct !DILocation(line: 229, column: 22, scope: !25, inlinedAt: !589)
!591 = distinct !DILocation(line: 810, column: 1, scope: !32, inlinedAt: !582)
!592 = distinct !DILocation(line: 1921, column: 24, scope: !41, inlinedAt: !591)
!593 = distinct !DILocation(line: 462, column: 23, scope: !27, inlinedAt: !592)
!594 = distinct !DILocation(line: 344, column: 9, scope: !26, inlinedAt: !593)
!595 = distinct !DILocation(line: 229, column: 22, scope: !25, inlinedAt: !594)
!596 = !{i64 8624565616655196947}
!597 = !DILocation(line: 810, column: 1, scope: !31)
!598 = !DILocation(line: 810, column: 1, scope: !32, inlinedAt: !582)
!599 = !DILocation(line: 810, column: 1, scope: !33, inlinedAt: !584)
!600 = !DILocation(line: 128, column: 14, scope: !24, inlinedAt: !590)
!601 = !DILocation(line: 128, column: 14, scope: !24, inlinedAt: !595)
!602 = distinct !DILocation(line: 810, column: 1, scope: !42)
!603 = distinct !DILocation(line: 810, column: 1, scope: !43, inlinedAt: !602)
!604 = distinct !DILocation(line: 1921, column: 24, scope: !46, inlinedAt: !603)
!605 = distinct !DILocation(line: 462, column: 23, scope: !27, inlinedAt: !604)
!606 = distinct !DILocation(line: 344, column: 9, scope: !26, inlinedAt: !605)
!607 = distinct !DILocation(line: 229, column: 22, scope: !25, inlinedAt: !606)
!608 = distinct !DILocation(line: 810, column: 1, scope: !43, inlinedAt: !602)
!609 = distinct !DILocation(line: 1921, column: 24, scope: !46, inlinedAt: !608)
!610 = distinct !DILocation(line: 462, column: 23, scope: !27, inlinedAt: !609)
!611 = distinct !DILocation(line: 344, column: 9, scope: !26, inlinedAt: !610)
!612 = distinct !DILocation(line: 229, column: 22, scope: !25, inlinedAt: !611)
!613 = !{i64 5037380298771047296}
!614 = !DILocation(line: 810, column: 1, scope: !42)
!615 = !DILocation(line: 810, column: 1, scope: !43, inlinedAt: !602)
!616 = !DILocation(line: 128, column: 14, scope: !24, inlinedAt: !607)
!617 = !DILocation(line: 128, column: 14, scope: !24, inlinedAt: !612)
!618 = distinct !DILocation(line: 810, column: 1, scope: !47)
!619 = distinct !DILocation(line: 810, column: 1, scope: !49, inlinedAt: !618)
!620 = distinct !DILocation(line: 810, column: 1, scope: !48, inlinedAt: !619)
!621 = distinct !DILocation(line: 810, column: 1, scope: !48, inlinedAt: !619)
!622 = !{i64 -5995528697144424910}
!623 = !DILocation(line: 810, column: 1, scope: !47)
!624 = !DILocation(line: 810, column: 1, scope: !48, inlinedAt: !619)
!625 = !DILocation(line: 810, column: 1, scope: !50, inlinedAt: !620)
!626 = !DILocation(line: 810, column: 1, scope: !50, inlinedAt: !621)
!627 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<polars_arrow_format::ipc::generated::root::org::apache::arrow::flatbuf::MessageHeader>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf13MessageHeaderEEB1i_", scope: !261, file: !259, line: 810, type: !265, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !262)
!628 = distinct !DISubprogram(name: "drop_in_place<polars_arrow_format::ipc::generated::root::org::apache::arrow::flatbuf::MessageHeader>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf13MessageHeaderEBW_", scope: !261, file: !259, line: 810, type: !265, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !262)
!629 = distinct !DILocation(line: 810, column: 1, scope: !627)
!630 = distinct !DISubprogram(name: "drop_in_place<alloc::boxed::Box<polars_arrow_format::ipc::generated::root::org::apache::arrow::flatbuf::SparseTensor, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf12SparseTensorEEB1v_", scope: !261, file: !259, line: 810, type: !265, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !262)
!631 = distinct !DILocation(line: 810, column: 1, scope: !628, inlinedAt: !629)
!632 = distinct !DILocation(line: 810, column: 1, scope: !628, inlinedAt: !629)
!633 = distinct !DISubprogram(name: "drop_in_place<alloc::boxed::Box<polars_arrow_format::ipc::generated::root::org::apache::arrow::flatbuf::DictionaryBatch, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15DictionaryBatchEEB1v_", scope: !261, file: !259, line: 810, type: !265, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !262)
!634 = distinct !DILocation(line: 810, column: 1, scope: !628, inlinedAt: !629)
!635 = distinct !DILocation(line: 810, column: 1, scope: !633, inlinedAt: !634)
!636 = distinct !DILocation(line: 810, column: 1, scope: !51, inlinedAt: !635)
!637 = distinct !DILocation(line: 810, column: 1, scope: !22, inlinedAt: !636)
!638 = distinct !DILocation(line: 810, column: 1, scope: !23, inlinedAt: !637)
!639 = distinct !DILocation(line: 1921, column: 24, scope: !30, inlinedAt: !638)
!640 = distinct !DILocation(line: 462, column: 23, scope: !27, inlinedAt: !639)
!641 = distinct !DILocation(line: 344, column: 9, scope: !26, inlinedAt: !640)
!642 = distinct !DILocation(line: 229, column: 22, scope: !25, inlinedAt: !641)
!643 = distinct !DILocation(line: 810, column: 1, scope: !23, inlinedAt: !637)
!644 = distinct !DILocation(line: 1921, column: 24, scope: !30, inlinedAt: !643)
!645 = distinct !DILocation(line: 462, column: 23, scope: !27, inlinedAt: !644)
!646 = distinct !DILocation(line: 344, column: 9, scope: !26, inlinedAt: !645)
!647 = distinct !DILocation(line: 229, column: 22, scope: !25, inlinedAt: !646)
!648 = distinct !DILocation(line: 810, column: 1, scope: !628, inlinedAt: !629)
!649 = distinct !DISubprogram(name: "drop_in_place<alloc::boxed::Box<polars_arrow_format::ipc::generated::root::org::apache::arrow::flatbuf::Tensor, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf6TensorEEB1v_", scope: !261, file: !259, line: 810, type: !265, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !262)
!650 = distinct !DILocation(line: 810, column: 1, scope: !628, inlinedAt: !629)
!651 = !{i64 565796188072121006}
!652 = !DILocation(line: 810, column: 1, scope: !627)
!653 = !DILocation(line: 810, column: 1, scope: !628, inlinedAt: !629)
!654 = !DILocation(line: 810, column: 1, scope: !630, inlinedAt: !631)
!655 = !DILocation(line: 810, column: 1, scope: !43, inlinedAt: !632)
!656 = !DILocation(line: 810, column: 1, scope: !633, inlinedAt: !634)
!657 = !DILocation(line: 810, column: 1, scope: !22, inlinedAt: !636)
!658 = !DILocation(line: 810, column: 1, scope: !23, inlinedAt: !637)
!659 = !DILocation(line: 128, column: 14, scope: !24, inlinedAt: !642)
!660 = !DILocation(line: 128, column: 14, scope: !24, inlinedAt: !647)
!661 = !DILocation(line: 810, column: 1, scope: !23, inlinedAt: !648)
!662 = !DILocation(line: 810, column: 1, scope: !649, inlinedAt: !650)
!663 = distinct !DILocation(line: 810, column: 1, scope: !8)
!664 = distinct !DILocation(line: 810, column: 1, scope: !8)
!665 = !{i64 -3519384406479264787}
!666 = !DILocation(line: 810, column: 1, scope: !8)
!667 = !DILocation(line: 810, column: 1, scope: !9, inlinedAt: !663)
!668 = !DILocation(line: 810, column: 1, scope: !9, inlinedAt: !664)
!669 = distinct !DILocation(line: 810, column: 1, scope: !52)
!670 = distinct !DILocation(line: 810, column: 1, scope: !52)
!671 = !{i64 1367521092629398808}
!672 = !DILocation(line: 810, column: 1, scope: !52)
!673 = !DILocation(line: 810, column: 1, scope: !53, inlinedAt: !669)
!674 = !DILocation(line: 810, column: 1, scope: !53, inlinedAt: !670)
!675 = distinct !DILocation(line: 810, column: 1, scope: !54)
!676 = distinct !DILocation(line: 810, column: 1, scope: !54)
!677 = !{i64 4938547933142478289}
!678 = !DILocation(line: 810, column: 1, scope: !54)
!679 = !DILocation(line: 810, column: 1, scope: !55, inlinedAt: !675)
!680 = !DILocation(line: 810, column: 1, scope: !55, inlinedAt: !676)
!681 = distinct !DISubprogram(name: "drop_in_place<polars_arrow_format::ipc::generated::root::org::apache::arrow::flatbuf::RecordBatch>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf11RecordBatchEBW_", scope: !261, file: !259, line: 810, type: !263, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !262)
!682 = distinct !{!682, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9FieldNodeEEEB1P_"}
!683 = distinct !{!683, !682, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9FieldNodeEEEB1P_: argument 0"}
!684 = distinct !DILocation(line: 810, column: 1, scope: !681)
!685 = distinct !DILocation(line: 810, column: 1, scope: !16, inlinedAt: !684)
!686 = distinct !DILocation(line: 810, column: 1, scope: !17, inlinedAt: !685)
!687 = distinct !DILocation(line: 810, column: 1, scope: !17, inlinedAt: !685)
!688 = distinct !{!688, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf6BufferEEEB1P_"}
!689 = distinct !{!689, !688, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf6BufferEEEB1P_: argument 0"}
!690 = distinct !DILocation(line: 810, column: 1, scope: !681)
!691 = distinct !DILocation(line: 810, column: 1, scope: !7, inlinedAt: !690)
!692 = distinct !DILocation(line: 810, column: 1, scope: !8, inlinedAt: !691)
!693 = distinct !DILocation(line: 810, column: 1, scope: !8, inlinedAt: !691)
!694 = distinct !DILocation(line: 810, column: 1, scope: !681)
!695 = distinct !DILocation(line: 810, column: 1, scope: !56, inlinedAt: !694)
!696 = distinct !DILocation(line: 810, column: 1, scope: !60, inlinedAt: !695)
!697 = distinct !DILocation(line: 1921, column: 24, scope: !59, inlinedAt: !696)
!698 = distinct !DILocation(line: 462, column: 23, scope: !27, inlinedAt: !697)
!699 = distinct !DILocation(line: 344, column: 9, scope: !26, inlinedAt: !698)
!700 = distinct !DILocation(line: 229, column: 22, scope: !25, inlinedAt: !699)
!701 = distinct !DILocation(line: 810, column: 1, scope: !681)
!702 = distinct !DILocation(line: 810, column: 1, scope: !56, inlinedAt: !701)
!703 = distinct !DILocation(line: 810, column: 1, scope: !60, inlinedAt: !702)
!704 = distinct !DILocation(line: 1921, column: 24, scope: !59, inlinedAt: !703)
!705 = distinct !DILocation(line: 462, column: 23, scope: !27, inlinedAt: !704)
!706 = distinct !DILocation(line: 344, column: 9, scope: !26, inlinedAt: !705)
!707 = distinct !DILocation(line: 229, column: 22, scope: !25, inlinedAt: !706)
!708 = distinct !{!708, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEECsabmDd0H9iBj_19polars_arrow_format"}
!709 = distinct !{!709, !708, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEECsabmDd0H9iBj_19polars_arrow_format: argument 0"}
!710 = distinct !DILocation(line: 810, column: 1, scope: !681)
!711 = distinct !DILocation(line: 810, column: 1, scope: !19, inlinedAt: !710)
!712 = distinct !DILocation(line: 810, column: 1, scope: !20, inlinedAt: !711)
!713 = distinct !DILocation(line: 810, column: 1, scope: !20, inlinedAt: !711)
!714 = !{i64 -6608499032741071013}
!715 = !{!683}
!716 = !{!689}
!717 = !{!709}
!718 = !DILocation(line: 810, column: 1, scope: !16, inlinedAt: !684)
!719 = !DILocation(line: 810, column: 1, scope: !17, inlinedAt: !685)
!720 = !DILocation(line: 810, column: 1, scope: !18, inlinedAt: !686)
!721 = !DILocation(line: 810, column: 1, scope: !18, inlinedAt: !687)
!722 = !DILocation(line: 810, column: 1, scope: !681)
!723 = !DILocation(line: 810, column: 1, scope: !7, inlinedAt: !690)
!724 = !DILocation(line: 810, column: 1, scope: !8, inlinedAt: !691)
!725 = !DILocation(line: 810, column: 1, scope: !9, inlinedAt: !692)
!726 = !DILocation(line: 810, column: 1, scope: !9, inlinedAt: !693)
!727 = !DILocation(line: 810, column: 1, scope: !56, inlinedAt: !694)
!728 = !DILocation(line: 128, column: 14, scope: !24, inlinedAt: !700)
!729 = !DILocation(line: 810, column: 1, scope: !56, inlinedAt: !701)
!730 = !DILocation(line: 128, column: 14, scope: !24, inlinedAt: !707)
!731 = !DILocation(line: 810, column: 1, scope: !19, inlinedAt: !710)
!732 = !DILocation(line: 810, column: 1, scope: !20, inlinedAt: !711)
!733 = !DILocation(line: 810, column: 1, scope: !21, inlinedAt: !712)
!734 = !DILocation(line: 810, column: 1, scope: !21, inlinedAt: !713)
!735 = distinct !DISubprogram(name: "drop_in_place<polars_arrow_format::ipc::generated::root::org::apache::arrow::flatbuf::SparseTensor>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf12SparseTensorEBW_", scope: !261, file: !259, line: 810, type: !263, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !262)
!736 = distinct !DILocation(line: 810, column: 1, scope: !735)
!737 = distinct !DILocation(line: 810, column: 1, scope: !52, inlinedAt: !736)
!738 = distinct !DILocation(line: 810, column: 1, scope: !52, inlinedAt: !736)
!739 = !{i64 -1448916600381859269}
!740 = !DILocation(line: 810, column: 1, scope: !735)
!741 = !DILocation(line: 810, column: 1, scope: !52, inlinedAt: !736)
!742 = !DILocation(line: 810, column: 1, scope: !53, inlinedAt: !737)
!743 = !DILocation(line: 810, column: 1, scope: !53, inlinedAt: !738)
!744 = distinct !DILocation(line: 810, column: 1, scope: !51)
!745 = distinct !DILocation(line: 810, column: 1, scope: !22, inlinedAt: !744)
!746 = distinct !DILocation(line: 810, column: 1, scope: !23, inlinedAt: !745)
!747 = distinct !DILocation(line: 1921, column: 24, scope: !30, inlinedAt: !746)
!748 = distinct !DILocation(line: 462, column: 23, scope: !27, inlinedAt: !747)
!749 = distinct !DILocation(line: 344, column: 9, scope: !26, inlinedAt: !748)
!750 = distinct !DILocation(line: 229, column: 22, scope: !25, inlinedAt: !749)
!751 = distinct !DILocation(line: 810, column: 1, scope: !23, inlinedAt: !745)
!752 = distinct !DILocation(line: 1921, column: 24, scope: !30, inlinedAt: !751)
!753 = distinct !DILocation(line: 462, column: 23, scope: !27, inlinedAt: !752)
!754 = distinct !DILocation(line: 344, column: 9, scope: !26, inlinedAt: !753)
!755 = distinct !DILocation(line: 229, column: 22, scope: !25, inlinedAt: !754)
!756 = !{i64 -6742927409383816384}
!757 = !DILocation(line: 810, column: 1, scope: !22, inlinedAt: !744)
!758 = !DILocation(line: 810, column: 1, scope: !23, inlinedAt: !745)
!759 = !DILocation(line: 128, column: 14, scope: !24, inlinedAt: !750)
!760 = !DILocation(line: 128, column: 14, scope: !24, inlinedAt: !755)
!761 = !DILocation(line: 810, column: 1, scope: !51)
!762 = distinct !DISubprogram(name: "drop_in_place<polars_arrow_format::ipc::generated::root::org::apache::arrow::flatbuf::SparseTensorIndex>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf17SparseTensorIndexEBW_", scope: !261, file: !259, line: 810, type: !265, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !262)
!763 = distinct !DISubprogram(name: "drop_in_place<alloc::boxed::Box<polars_arrow_format::ipc::generated::root::org::apache::arrow::flatbuf::SparseTensorIndexCsf, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf20SparseTensorIndexCsfEEB1v_", scope: !261, file: !259, line: 810, type: !265, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !262)
!764 = distinct !DILocation(line: 810, column: 1, scope: !762)
!765 = distinct !{!765, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf20SparseTensorIndexCooEBW_"}
!766 = distinct !{!766, !765, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf20SparseTensorIndexCooEBW_: argument 0"}
!767 = distinct !DISubprogram(name: "drop_in_place<alloc::boxed::Box<polars_arrow_format::ipc::generated::root::org::apache::arrow::flatbuf::SparseTensorIndexCoo, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf20SparseTensorIndexCooEEB1v_", scope: !261, file: !259, line: 810, type: !265, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !262)
!768 = distinct !DILocation(line: 810, column: 1, scope: !762)
!769 = distinct !DILocation(line: 810, column: 1, scope: !767, inlinedAt: !768)
!770 = distinct !DILocation(line: 810, column: 1, scope: !61, inlinedAt: !769)
!771 = distinct !DILocation(line: 810, column: 1, scope: !38, inlinedAt: !770)
!772 = distinct !DILocation(line: 1921, column: 24, scope: !37, inlinedAt: !771)
!773 = distinct !DILocation(line: 462, column: 23, scope: !27, inlinedAt: !772)
!774 = distinct !DILocation(line: 344, column: 9, scope: !26, inlinedAt: !773)
!775 = distinct !DILocation(line: 229, column: 22, scope: !25, inlinedAt: !774)
!776 = distinct !{!776, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEECsabmDd0H9iBj_19polars_arrow_format"}
!777 = distinct !{!777, !776, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEECsabmDd0H9iBj_19polars_arrow_format: argument 0"}
!778 = distinct !DILocation(line: 810, column: 1, scope: !61, inlinedAt: !769)
!779 = distinct !DILocation(line: 810, column: 1, scope: !19, inlinedAt: !778)
!780 = distinct !DILocation(line: 810, column: 1, scope: !20, inlinedAt: !779)
!781 = distinct !DILocation(line: 810, column: 1, scope: !20, inlinedAt: !779)
!782 = distinct !DISubprogram(name: "drop_in_place<alloc::boxed::Box<polars_arrow_format::ipc::generated::root::org::apache::arrow::flatbuf::SparseMatrixIndexCsx, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf20SparseMatrixIndexCsxEEB1v_", scope: !261, file: !259, line: 810, type: !265, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !262)
!783 = distinct !DILocation(line: 810, column: 1, scope: !762)
!784 = distinct !DILocation(line: 810, column: 1, scope: !782, inlinedAt: !783)
!785 = distinct !DILocation(line: 810, column: 1, scope: !62, inlinedAt: !784)
!786 = distinct !DILocation(line: 810, column: 1, scope: !38, inlinedAt: !785)
!787 = distinct !DILocation(line: 1921, column: 24, scope: !37, inlinedAt: !786)
!788 = distinct !DILocation(line: 462, column: 23, scope: !27, inlinedAt: !787)
!789 = distinct !DILocation(line: 344, column: 9, scope: !26, inlinedAt: !788)
!790 = distinct !DILocation(line: 229, column: 22, scope: !25, inlinedAt: !789)
!791 = distinct !DILocation(line: 810, column: 1, scope: !62, inlinedAt: !784)
!792 = distinct !DILocation(line: 810, column: 1, scope: !38, inlinedAt: !791)
!793 = distinct !DILocation(line: 1921, column: 24, scope: !37, inlinedAt: !792)
!794 = distinct !DILocation(line: 462, column: 23, scope: !27, inlinedAt: !793)
!795 = distinct !DILocation(line: 344, column: 9, scope: !26, inlinedAt: !794)
!796 = distinct !DILocation(line: 229, column: 22, scope: !25, inlinedAt: !795)
!797 = !{i64 1862372976170348995}
!798 = !{!766}
!799 = !{!777, !766}
!800 = !DILocation(line: 810, column: 1, scope: !762)
!801 = !DILocation(line: 810, column: 1, scope: !763, inlinedAt: !764)
!802 = !DILocation(line: 810, column: 1, scope: !767, inlinedAt: !768)
!803 = !DILocation(line: 810, column: 1, scope: !61, inlinedAt: !769)
!804 = !DILocation(line: 128, column: 14, scope: !24, inlinedAt: !775)
!805 = !DILocation(line: 810, column: 1, scope: !19, inlinedAt: !778)
!806 = !DILocation(line: 810, column: 1, scope: !20, inlinedAt: !779)
!807 = !DILocation(line: 810, column: 1, scope: !21, inlinedAt: !780)
!808 = !DILocation(line: 810, column: 1, scope: !21, inlinedAt: !781)
!809 = !DILocation(line: 810, column: 1, scope: !782, inlinedAt: !783)
!810 = !DILocation(line: 128, column: 14, scope: !24, inlinedAt: !790)
!811 = !DILocation(line: 128, column: 14, scope: !24, inlinedAt: !796)
!812 = distinct !DILocation(line: 810, column: 1, scope: !62)
!813 = distinct !DILocation(line: 810, column: 1, scope: !38, inlinedAt: !812)
!814 = distinct !DILocation(line: 1921, column: 24, scope: !37, inlinedAt: !813)
!815 = distinct !DILocation(line: 462, column: 23, scope: !27, inlinedAt: !814)
!816 = distinct !DILocation(line: 344, column: 9, scope: !26, inlinedAt: !815)
!817 = distinct !DILocation(line: 229, column: 22, scope: !25, inlinedAt: !816)
!818 = distinct !DILocation(line: 810, column: 1, scope: !62)
!819 = distinct !DILocation(line: 810, column: 1, scope: !38, inlinedAt: !818)
!820 = distinct !DILocation(line: 1921, column: 24, scope: !37, inlinedAt: !819)
!821 = distinct !DILocation(line: 462, column: 23, scope: !27, inlinedAt: !820)
!822 = distinct !DILocation(line: 344, column: 9, scope: !26, inlinedAt: !821)
!823 = distinct !DILocation(line: 229, column: 22, scope: !25, inlinedAt: !822)
!824 = !{i64 835574130727031049}
!825 = !DILocation(line: 128, column: 14, scope: !24, inlinedAt: !817)
!826 = !DILocation(line: 128, column: 14, scope: !24, inlinedAt: !823)
!827 = !DILocation(line: 810, column: 1, scope: !62)
!828 = distinct !DILocation(line: 810, column: 1, scope: !61)
!829 = distinct !DILocation(line: 810, column: 1, scope: !38, inlinedAt: !828)
!830 = distinct !DILocation(line: 1921, column: 24, scope: !37, inlinedAt: !829)
!831 = distinct !DILocation(line: 462, column: 23, scope: !27, inlinedAt: !830)
!832 = distinct !DILocation(line: 344, column: 9, scope: !26, inlinedAt: !831)
!833 = distinct !DILocation(line: 229, column: 22, scope: !25, inlinedAt: !832)
!834 = distinct !{!834, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEECsabmDd0H9iBj_19polars_arrow_format"}
!835 = distinct !{!835, !834, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEECsabmDd0H9iBj_19polars_arrow_format: argument 0"}
!836 = distinct !DILocation(line: 810, column: 1, scope: !61)
!837 = distinct !DILocation(line: 810, column: 1, scope: !19, inlinedAt: !836)
!838 = distinct !DILocation(line: 810, column: 1, scope: !20, inlinedAt: !837)
!839 = distinct !DILocation(line: 810, column: 1, scope: !20, inlinedAt: !837)
!840 = !{i64 -4150743231063511545}
!841 = !{!835}
!842 = !DILocation(line: 810, column: 1, scope: !61)
!843 = !DILocation(line: 128, column: 14, scope: !24, inlinedAt: !833)
!844 = !DILocation(line: 810, column: 1, scope: !19, inlinedAt: !836)
!845 = !DILocation(line: 810, column: 1, scope: !20, inlinedAt: !837)
!846 = !DILocation(line: 810, column: 1, scope: !21, inlinedAt: !838)
!847 = !DILocation(line: 810, column: 1, scope: !21, inlinedAt: !839)
!848 = distinct !DISubprogram(name: "drop_in_place<polars_arrow_format::ipc::generated::root::org::apache::arrow::flatbuf::SparseTensorIndexCsf>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf20SparseTensorIndexCsfEBW_", scope: !261, file: !259, line: 810, type: !263, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !262)
!849 = distinct !DILocation(line: 810, column: 1, scope: !848)
!850 = distinct !DILocation(line: 810, column: 1, scope: !38, inlinedAt: !849)
!851 = distinct !DILocation(line: 1921, column: 24, scope: !37, inlinedAt: !850)
!852 = distinct !DILocation(line: 462, column: 23, scope: !27, inlinedAt: !851)
!853 = distinct !DILocation(line: 344, column: 9, scope: !26, inlinedAt: !852)
!854 = distinct !DILocation(line: 229, column: 22, scope: !25, inlinedAt: !853)
end_hunk_1
