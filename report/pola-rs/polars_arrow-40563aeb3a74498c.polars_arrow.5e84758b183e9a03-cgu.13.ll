Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_arrow-40563aeb3a74498c.polars_arrow.5e84758b183e9a03-cgu.13?download=true
inline.NumInlined: 2131
inline.NumDeleted: 606
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf7FeatureEEECs8774dFTUdNv_12polars_arrow:bb.a
bb.b:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf7FeatureEECs8774dFTUdNv_12polars_arrow.exit, %bb.a
  ret void, !dbg !5032

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf7FeatureENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf7FeatureEECs8774dFTUdNv_12polars_arrow.exit unwind label %bb.d, !dbg !5033

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf7FeatureENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf7FeatureEECs8774dFTUdNv_12polars_arrow.exit.i unwind label %bb.e, !dbg !5034

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #30, !dbg !5033
  unreachable, !dbg !5033

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf7FeatureEECs8774dFTUdNv_12polars_arrow.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c, !dbg !5033

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf7FeatureEECs8774dFTUdNv_12polars_arrow.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf7FeatureENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !dbg !5035
  br label %bb.b, !dbg !5032
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8KeyValueEEECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !255 !guid !5039 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !5040, !range !2286, !noundef !2137
  %i.b = icmp eq i64 %i.a, -9223372036854775808, !dbg !5040
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !5040

bb.b:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8KeyValueEECs8774dFTUdNv_12polars_arrow.exit, %bb.a
  ret void, !dbg !5040

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8KeyValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8KeyValueEECs8774dFTUdNv_12polars_arrow.exit unwind label %bb.d, !dbg !5041

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8KeyValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8KeyValueEECs8774dFTUdNv_12polars_arrow.exit.i unwind label %bb.e, !dbg !5042

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #30, !dbg !5041
  unreachable, !dbg !5041

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8KeyValueEECs8774dFTUdNv_12polars_arrow.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c, !dbg !5041

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8KeyValueEECs8774dFTUdNv_12polars_arrow.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8KeyValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !dbg !5043
  br label %bb.b, !dbg !5040
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEEECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !258 !guid !5047 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !5048, !range !2286, !noundef !2137
  %i.b = icmp eq i64 %i.a, -9223372036854775808, !dbg !5048
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !5048

bb.b:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECs8774dFTUdNv_12polars_arrow.exit, %bb.a
  ret void, !dbg !5048

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECs8774dFTUdNv_12polars_arrow.exit unwind label %bb.d, !dbg !5049

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVeclEECs8774dFTUdNv_12polars_arrow.exit.i unwind label %bb.e, !dbg !5050

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #30, !dbg !5049
  unreachable, !dbg !5049

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVeclEECs8774dFTUdNv_12polars_arrow.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c, !dbg !5049

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECs8774dFTUdNv_12polars_arrow.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !dbg !5051
  br label %bb.b, !dbg !5048
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !261 !guid !5055 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !5056, !range !2286, !noundef !2137
  %i.b = icmp eq i64 %i.a, -9223372036854775808, !dbg !5056
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !5056

bb.b:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECs8774dFTUdNv_12polars_arrow.exit, %bb.a
  ret void, !dbg !5056

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECs8774dFTUdNv_12polars_arrow.exit unwind label %bb.d, !dbg !5057

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecxEECs8774dFTUdNv_12polars_arrow.exit.i unwind label %bb.e, !dbg !5058

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #30, !dbg !5057
  unreachable, !dbg !5057

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecxEECs8774dFTUdNv_12polars_arrow.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c, !dbg !5057

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECs8774dFTUdNv_12polars_arrow.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !dbg !5059
  br label %bb.b, !dbg !5056
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCsgjwxzEoLG5s_12polars_error9ErrStringEECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !264 !guid !5066 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !5067, !range !2287, !noundef !2137
  %switch = icmp slt i64 %i.a, -9223372036854775806, !dbg !5067
  br i1 %switch, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error9ErrStringECs8774dFTUdNv_12polars_arrow.exit, label %bb.b, !dbg !5067

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error9ErrStringECs8774dFTUdNv_12polars_arrow.exit: ; preds = %bb.a, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs8774dFTUdNv_12polars_arrow.exit.i.i
  ret void, !dbg !5067

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs8774dFTUdNv_12polars_arrow.exit.i.i unwind label %bb.c, !dbg !5068

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECs8774dFTUdNv_12polars_arrow.exit.i.i.i.i unwind label %bb.d, !dbg !5069

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #30, !dbg !5068
  unreachable, !dbg !5068

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECs8774dFTUdNv_12polars_arrow.exit.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.b, !dbg !5068

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs8774dFTUdNv_12polars_arrow.exit.i.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !dbg !5070
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error9ErrStringECs8774dFTUdNv_12polars_arrow.exit, !dbg !5071
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringEECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !270 !guid !5076 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !5077, !range !2286, !noundef !2137
  %i.b = icmp eq i64 %i.a, -9223372036854775808, !dbg !5077
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !5077

bb.b:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs8774dFTUdNv_12polars_arrow.exit, %bb.a
  ret void, !dbg !5077

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs8774dFTUdNv_12polars_arrow.exit unwind label %bb.d, !dbg !5078

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECs8774dFTUdNv_12polars_arrow.exit.i.i unwind label %bb.e, !dbg !5079

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #30, !dbg !5078
  unreachable, !dbg !5078

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECs8774dFTUdNv_12polars_arrow.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c, !dbg !5078

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECs8774dFTUdNv_12polars_arrow.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !dbg !5080
  br label %bb.b, !dbg !5077
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf13MessageHeaderEECs8774dFTUdNv_12polars_arrow(i64 %.0.val, ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5081 !guid !5125 {
bb.a:
  %0 = icmp eq i64 %.0.val, 5, !dbg !5131
  br i1 %0, label %bb.b, label %1, !dbg !5131

bb.b:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf13MessageHeaderECs8774dFTUdNv_12polars_arrow.exit, %bb.a
  ret void, !dbg !5131

1:                                                ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  switch i64 %.0.val, label %bb.c [
    i64 0, label %bb.k
    i64 1, label %bb.l
    i64 2, label %bb.o
    i64 3, label %bb.q
  ], !dbg !5132

bb.c:                                             ; preds = %1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5126), !dbg !5133
  %i.a = getelementptr inbounds nuw i8, ptr %.8.val, i64 16, !dbg !5134
  %.val.i.i.i = load i64, ptr %i.a, align 8, !dbg !5134, !range !5127, !alias.scope !5126, !noundef !2137
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 24, !dbg !5134
  %.val2.i.i.i = load ptr, ptr %i.b, align 8, !dbg !5134, !alias.scope !5126
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf4TypeECs8774dFTUdNv_12polars_arrow(i64 %.val.i.i.i, ptr %.val2.i.i.i)
          to label %bb.e unwind label %bb.d, !dbg !5134, !noalias !5126

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %.8.val, i64 32, !dbg !5134
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9TensorDimEECs8774dFTUdNv_12polars_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.d) #32
          to label %.body.i.i.i unwind label %bb.j, !dbg !5134

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 32, !dbg !5134 ; 3 uses
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9TensorDimENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.g unwind label %bb.f, !dbg !5135

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9TensorDimENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body.i.i.i unwind label %bb.h, !dbg !5136

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9TensorDimENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9TensorDimEECs8774dFTUdNv_12polars_arrow.exit.i.i.i unwind label %bb.i, !dbg !5137

bb.h:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #30, !dbg !5135
  unreachable, !dbg !5135

.body.i.i.i:                                      ; preds = %bb.i, %bb.f, %bb.d
  %.pn.i.i.i = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.i, %bb.i ], [ %i.f, %bb.f ]
  %.val5.i.i.i = load i64, ptr %.8.val, align 8, !dbg !5134, !range !5128, !alias.scope !5126, !noundef !2137
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8, !dbg !5134
  %.val6.i.i.i = load ptr, ptr %i.h, align 8, !dbg !5134, !alias.scope !5126
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf17SparseTensorIndexECs8774dFTUdNv_12polars_arrow(i64 %.val5.i.i.i, ptr %.val6.i.i.i) #32
          to label %common.resume.i unwind label %bb.j, !dbg !5134

bb.i:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9TensorDimEECs8774dFTUdNv_12polars_arrow.exit.i.i.i: ; preds = %bb.g
  %.val3.i.i.i = load i64, ptr %.8.val, align 8, !dbg !5134, !range !5128, !alias.scope !5126, !noundef !2137
  %i.j = getelementptr inbounds nuw i8, ptr %.8.val, i64 8, !dbg !5134
  %.val4.i.i.i = load ptr, ptr %i.j, align 8, !dbg !5134, !alias.scope !5126
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf17SparseTensorIndexECs8774dFTUdNv_12polars_arrow(i64 %.val3.i.i.i, ptr %.val4.i.i.i)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf13MessageHeaderECs8774dFTUdNv_12polars_arrow.exit unwind label %bb.ab, !dbg !5134

bb.j:                                             ; preds = %.body.i.i.i, %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #30, !dbg !5134
  unreachable, !dbg !5134

common.resume.i:                                  ; preds = %bb.ab, %bb.y, %.body.i.i7.i, %bb.p, %bb.n, %.body.i.i.i
  %.sink.i = phi i64 [ 80, %.body.i.i7.i ], [ 88, %bb.p ], [ 24, %bb.n ], [ 80, %.body.i.i.i ], [ 80, %bb.ab ], [ 80, %bb.y ]
  %common.resume.op.i = phi { ptr, i32 } [ %.pn.i.i8.i, %.body.i.i7.i ], [ %i.o, %bb.p ], [ %i.n, %bb.n ], [ %.pn.i.i.i, %.body.i.i.i ], [ %i.ad, %bb.ab ], [ %i.aa, %bb.y ]
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef %.sink.i, i64 noundef 8) #33, !dbg !5132
  resume { ptr, i32 } %common.resume.op.i, !dbg !5132

bb.k:                                             ; preds = %1
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf6SchemaECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(80) %.8.val)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf13MessageHeaderECs8774dFTUdNv_12polars_arrow.exit unwind label %bb.ab, !dbg !5138

bb.l:                                             ; preds = %1
  %i.l = getelementptr i8, ptr %.8.val, i64 8, !dbg !5139
  %.val.i.i = load ptr, ptr %i.l, align 8, !dbg !5139, !align !2288, !noundef !2137 ; 4 uses
  %i.m = icmp eq ptr %.val.i.i, null, !dbg !5140
  br i1 %i.m, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf13MessageHeaderECs8774dFTUdNv_12polars_arrow.exit, label %bb.m, !dbg !5140

bb.m:                                             ; preds = %bb.l
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf11RecordBatchECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(88) %.val.i.i)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf11RecordBatchEECs8774dFTUdNv_12polars_arrow.exit.i.i.i.i unwind label %bb.n, !dbg !5141

bb.n:                                             ; preds = %bb.m
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 88, i64 noundef 8) #33, !dbg !5142
  br label %common.resume.i, !dbg !5139

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf11RecordBatchEECs8774dFTUdNv_12polars_arrow.exit.i.i.i.i: ; preds = %bb.m
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 88, i64 noundef 8) #33, !dbg !5143
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf13MessageHeaderECs8774dFTUdNv_12polars_arrow.exit, !dbg !5140

bb.o:                                             ; preds = %1
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf11RecordBatchECs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(88) %.8.val)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf13MessageHeaderECs8774dFTUdNv_12polars_arrow.exit unwind label %bb.p, !dbg !5144

bb.p:                                             ; preds = %bb.o
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i, !dbg !5144

bb.q:                                             ; preds = %1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5129), !dbg !5145
  %.val.i.i5.i = load i64, ptr %.8.val, align 8, !dbg !5146, !range !5127, !alias.scope !5129, !noundef !2137
  %i.p = getelementptr inbounds nuw i8, ptr %.8.val, i64 8, !dbg !5146
  %.val2.i.i6.i = load ptr, ptr %i.p, align 8, !dbg !5146, !alias.scope !5129
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf4TypeECs8774dFTUdNv_12polars_arrow(i64 %.val.i.i5.i, ptr %.val2.i.i6.i)
          to label %bb.s unwind label %bb.r, !dbg !5146, !noalias !5129

bb.r:                                             ; preds = %bb.q
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %.8.val, i64 16, !dbg !5146
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9TensorDimEECs8774dFTUdNv_12polars_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.r) #32
          to label %.body.i.i7.i unwind label %bb.aa, !dbg !5146

bb.s:                                             ; preds = %bb.q
  %i.s = getelementptr inbounds nuw i8, ptr %.8.val, i64 16, !dbg !5146 ; 3 uses
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9TensorDimENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.u unwind label %bb.t, !dbg !5147

bb.t:                                             ; preds = %bb.s
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9TensorDimENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body.i.i7.i unwind label %bb.v, !dbg !5148

bb.u:                                             ; preds = %bb.s
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9TensorDimENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9TensorDimEECs8774dFTUdNv_12polars_arrow.exit.i.i10.i unwind label %bb.w, !dbg !5149

bb.v:                                             ; preds = %bb.t
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #30, !dbg !5147
  unreachable, !dbg !5147

.body.i.i7.i:                                     ; preds = %bb.w, %bb.t, %bb.r
  %.pn.i.i8.i = phi { ptr, i32 } [ %i.q, %bb.r ], [ %i.w, %bb.w ], [ %i.t, %bb.t ]
  %i.v = getelementptr inbounds nuw i8, ptr %.8.val, i64 40, !dbg !5146
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEECs8774dFTUdNv_12polars_arrow(ptr noalias noundef align 8 dereferenceable(24) %i.v) #32
          to label %common.resume.i unwind label %bb.aa, !dbg !5146

bb.w:                                             ; preds = %bb.u
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i7.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9TensorDimEECs8774dFTUdNv_12polars_arrow.exit.i.i10.i: ; preds = %bb.u
  %i.x = getelementptr inbounds nuw i8, ptr %.8.val, i64 40, !dbg !5146 ; 4 uses
  %i.y = load i64, ptr %i.x, align 8, !dbg !5150, !range !2286, !alias.scope !5130, !noundef !2137
  %i.z = icmp eq i64 %i.y, -9223372036854775808, !dbg !5150
  br i1 %i.z, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf13MessageHeaderECs8774dFTUdNv_12polars_arrow.exit, label %bb.x, !dbg !5150

bb.x:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9TensorDimEECs8774dFTUdNv_12polars_arrow.exit.i.i10.i
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECs8774dFTUdNv_12polars_arrow.exit.i.i.i.i unwind label %bb.y, !dbg !5151

bb.y:                                             ; preds = %bb.x
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %common.resume.i unwind label %bb.z, !dbg !5152

bb.z:                                             ; preds = %bb.y
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #30, !dbg !5151
  unreachable, !dbg !5151

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECs8774dFTUdNv_12polars_arrow.exit.i.i.i.i: ; preds = %bb.x
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf13MessageHeaderECs8774dFTUdNv_12polars_arrow.exit unwind label %bb.ab, !dbg !5153

bb.aa:                                            ; preds = %.body.i.i7.i, %bb.r
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #30, !dbg !5146
  unreachable, !dbg !5146

bb.ab:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECs8774dFTUdNv_12polars_arrow.exit.i.i.i.i, %bb.k, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9TensorDimEECs8774dFTUdNv_12polars_arrow.exit.i.i.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i, !dbg !5145

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf13MessageHeaderECs8774dFTUdNv_12polars_arrow.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9TensorDimEECs8774dFTUdNv_12polars_arrow.exit.i.i.i, %bb.k, %bb.l, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf11RecordBatchEECs8774dFTUdNv_12polars_arrow.exit.i.i.i.i, %bb.o, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9TensorDimEECs8774dFTUdNv_12polars_arrow.exit.i.i10.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECs8774dFTUdNv_12polars_arrow.exit.i.i.i.i
  %.sink1.i = phi i64 [ 88, %bb.o ], [ 24, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf11RecordBatchEECs8774dFTUdNv_12polars_arrow.exit.i.i.i.i ], [ 80, %bb.k ], [ 80, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9TensorDimEECs8774dFTUdNv_12polars_arrow.exit.i.i.i ], [ 24, %bb.l ], [ 80, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9TensorDimEECs8774dFTUdNv_12polars_arrow.exit.i.i10.i ], [ 80, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECs8774dFTUdNv_12polars_arrow.exit.i.i.i.i ]
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef %.sink1.i, i64 noundef 8) #33, !dbg !5132
  br label %bb.b, !dbg !5131
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardNtNtBL_3raw13RawTableInnerNCINvMsa_B1z_B1x_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0EECs8774dFTUdNv_12polars_arrow(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #3 !dbg !54 !guid !5175 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5176), !dbg !5179
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !5180
  %.val.i = load ptr, ptr %i.a, align 8, !dbg !5181, !alias.scope !5176 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !5181
  %.val1.i = load i64, ptr %i.b, align 8, !dbg !5181, !alias.scope !5176, !noundef !2137 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5177), !dbg !5181
  %i.c = icmp eq i64 %.val1.i, 0, !dbg !5182
  br i1 %i.c, label %_RNvXs1_NtCs7tGzs63DEEy_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow.exit, label %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !dbg !5182

_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5183
  %i.e = load i64, ptr %i.d, align 8, !dbg !5183, !alias.scope !5178, !noundef !2137
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5183
  %i.g = load i64, ptr %i.f, align 8, !dbg !5183, !alias.scope !5178, !noundef !2137 ; 5 uses
  %i.h = add i64 %.val1.i, 1, !dbg !5184
  %i.i = mul nuw i64 %i.e, %i.h, !dbg !5185       ; 2 uses
  %i.j = add i64 %i.g, -1, !dbg !5186
  %i.k = add i64 %i.j, %i.i, !dbg !5187           ; 2 uses
  %i.l = icmp uge i64 %i.k, %i.i, !dbg !5187
  tail call void @llvm.assume(i1 %i.l), !dbg !5188
  %i.m = sub i64 0, %i.g, !dbg !5189
  %i.n = and i64 %i.k, %i.m, !dbg !5190           ; 3 uses
  %i.o = add i64 %.val1.i, 17, !dbg !5191
  %i.p = add i64 %i.o, %i.n, !dbg !5192           ; 4 uses
  %i.q = icmp uge i64 %i.p, %i.n, !dbg !5192
  %i.r = sub nuw i64 -9223372036854775808, %i.g
  %i.s = icmp ule i64 %i.p, %i.r
  tail call void @llvm.assume(i1 %i.q), !dbg !5193
  tail call void @llvm.assume(i1 %i.s), !dbg !5193
  %i.t = icmp ne i64 %i.g, 0, !dbg !5194
  tail call void @llvm.assume(i1 %i.t), !dbg !5195
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.u = icmp eq i64 %i.p, 0, !dbg !5196
  br i1 %i.u, label %_RNvXs1_NtCs7tGzs63DEEy_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow.exit, label %bb.b, !dbg !5196

bb.b:                                             ; preds = %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %i.v = sub nsw i64 0, %i.n, !dbg !5197
  %i.w = getelementptr inbounds i8, ptr %.val.i, i64 %i.v, !dbg !5198
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.w, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) %i.g) #33, !dbg !5199, !noalias !5178
  br label %_RNvXs1_NtCs7tGzs63DEEy_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow.exit, !dbg !5200

_RNvXs1_NtCs7tGzs63DEEy_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow.exit: ; preds = %bb.a, %_RNvMs1_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, %bb.b
  ret void, !dbg !5179
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECs8774dFTUdNv_12polars_arrow(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 !dbg !5201 !guid !5247 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5248), !dbg !5252
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5253
  %.val.i = load ptr, ptr %i.a, align 8, !dbg !5253, !alias.scope !5248
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5253
  %.val1.i = load i64, ptr %i.b, align 8, !dbg !5253, !alias.scope !5248
  %.val2.i = load ptr, ptr %0, align 8, !dbg !5253, !alias.scope !5248, !nonnull !2137, !align !2288, !noundef !2137 ; 10 uses
  %.0.val.fr.i.i = freeze ptr %.val.i             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8, !dbg !5254 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !5254, !noalias !5248, !noundef !2137 ; 3 uses
  %.not4.i.i = icmp eq i64 %i.d, -1, !dbg !5255
  br i1 %.not4.i.i, label %_RNvXs1_NtCs7tGzs63DEEy_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow.exit, label %.lr.ph.i.i, !dbg !5256

.lr.ph.i.i:                                       ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.0.val.fr.i.i, null
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 4 uses
  br i1 %.not.i.i, label %.lr.ph.split.us.preheader.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.preheader.i.i:                    ; preds = %.lr.ph.i.i
  %.pre7.i.i = load ptr, ptr %.val2.i, align 8, !dbg !5257, !noalias !5248
  br label %.lr.ph.split.us.i.i, !dbg !5258

.lr.ph.split.us.i.i:                              ; preds = %bb.c, %.lr.ph.split.us.preheader.i.i
  %i.f = phi ptr [ %i.s, %bb.c ], [ %.pre7.i.i, %.lr.ph.split.us.preheader.i.i ], !dbg !5257 ; 2 uses
  %.sroa.04.03.us.i.i = phi i64 [ %i.g, %bb.c ], [ 0, %.lr.ph.split.us.preheader.i.i ] ; 4 uses
  %i.g = add nuw i64 %.sroa.04.03.us.i.i, 1, !dbg !5259
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.04.03.us.i.i, !dbg !5260 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !dbg !5261, !noalias !5248, !noundef !2137
  %i.j = icmp eq i8 %i.i, -128, !dbg !5258
  br i1 %i.j, label %bb.b, label %bb.c, !dbg !5258

bb.b:                                             ; preds = %.lr.ph.split.us.i.i
  %i.k = add i64 %.sroa.04.03.us.i.i, -16, !dbg !5262
  %i.l = load i64, ptr %i.c, align 8, !dbg !5263, !noalias !5248, !noundef !2137
  %i.m = and i64 %i.l, %i.k, !dbg !5264
  store i8 -1, ptr %i.h, align 1, !dbg !5265, !noalias !5248
  %i.n = load ptr, ptr %.val2.i, align 8, !dbg !5266, !noalias !5248, !nonnull !2137, !noundef !2137
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m, !dbg !5267
  %i.p = getelementptr i8, ptr %i.o, i64 16, !dbg !5267
  store i8 -1, ptr %i.p, align 1, !dbg !5268, !noalias !5248
  %i.q = load i64, ptr %i.e, align 8, !dbg !5269, !noalias !5248, !noundef !2137
  %i.r = add i64 %i.q, -1, !dbg !5269
  store i64 %i.r, ptr %i.e, align 8, !dbg !5269, !noalias !5248
  %.pre.i.i = load ptr, ptr %.val2.i, align 8, !dbg !5257, !noalias !5248
  br label %bb.c, !dbg !5270

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.i.i
  %i.s = phi ptr [ %.pre.i.i, %bb.b ], [ %i.f, %.lr.ph.split.us.i.i ]
  %exitcond6.not.i.i = icmp eq i64 %.sroa.04.03.us.i.i, %i.d, !dbg !5255
  br i1 %exitcond6.not.i.i, label %_RNvXs1_NtCs7tGzs63DEEy_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow.exit, label %.lr.ph.split.us.i.i, !dbg !5256

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.e
  %.sroa.04.03.i.i = phi i64 [ %i.t, %bb.e ], [ 0, %.lr.ph.i.i ] ; 5 uses
  %i.t = add nuw i64 %.sroa.04.03.i.i, 1, !dbg !5259
  %i.u = load ptr, ptr %.val2.i, align 8, !dbg !5257, !noalias !5248, !nonnull !2137, !noundef !2137
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.04.03.i.i, !dbg !5260 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !dbg !5261, !noalias !5248, !noundef !2137
  %i.x = icmp eq i8 %i.w, -128, !dbg !5258
  br i1 %i.x, label %bb.d, label %bb.e, !dbg !5258

bb.d:                                             ; preds = %.lr.ph.split.i.i
  %.neg.i.i = xor i64 %.sroa.04.03.i.i, -1, !dbg !5259
  %i.y = add i64 %.sroa.04.03.i.i, -16, !dbg !5262
  %i.z = load i64, ptr %i.c, align 8, !dbg !5263, !noalias !5248, !noundef !2137
  %i.aa = and i64 %i.z, %i.y, !dbg !5264
  store i8 -1, ptr %i.v, align 1, !dbg !5265, !noalias !5248
  %i.ab = load ptr, ptr %.val2.i, align 8, !dbg !5266, !noalias !5248, !nonnull !2137, !noundef !2137
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.aa, !dbg !5267
  %i.ad = getelementptr i8, ptr %i.ac, i64 16, !dbg !5267
  store i8 -1, ptr %i.ad, align 1, !dbg !5268, !noalias !5248
  %i.ae = load ptr, ptr %.val2.i, align 8, !dbg !5271, !noalias !5248, !nonnull !2137, !noundef !2137
  %.neg6.i.i = mul i64 %.val1.i, %.neg.i.i, !dbg !5272
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 %.neg6.i.i, !dbg !5273
  tail call void %.0.val.fr.i.i(ptr noundef nonnull %i.af), !dbg !5274, !noalias !5248, !inline_history !5244
  %i.ag = load i64, ptr %i.e, align 8, !dbg !5269, !noalias !5248, !noundef !2137
  %i.ah = add i64 %i.ag, -1, !dbg !5269
  store i64 %i.ah, ptr %i.e, align 8, !dbg !5269, !noalias !5248
  br label %bb.e, !dbg !5270

bb.e:                                             ; preds = %bb.d, %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %.sroa.04.03.i.i, %i.d, !dbg !5255
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCs7tGzs63DEEy_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow.exit, label %.lr.ph.split.i.i, !dbg !5256

_RNvXs1_NtCs7tGzs63DEEy_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow.exit: ; preds = %bb.e, %bb.c, %bb.a
  %i.ai = load i64, ptr %i.c, align 8, !dbg !5275, !noalias !5248, !noundef !2137 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 8, !dbg !5276
  %i.ak = add i64 %i.ai, 1, !dbg !5276
  %i.al = lshr i64 %i.ak, 3, !dbg !5276
  %i.am = mul nuw i64 %i.al, 7, !dbg !5276
  %.sroa.01.0.i.i = select i1 %i.aj, i64 %i.ai, i64 %i.am, !dbg !5276
  %i.an = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24, !dbg !5277
  %i.ao = load i64, ptr %i.an, align 8, !dbg !5277, !noalias !5248, !noundef !2137
  %i.ap = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16, !dbg !5278
  %i.aq = sub i64 %.sroa.01.0.i.i, %i.ao, !dbg !5278
  store i64 %i.aq, ptr %i.ap, align 8, !dbg !5278, !noalias !5248
  ret void, !dbg !5252
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtBL_10exceptions15PyBaseExceptionEECs8774dFTUdNv_12polars_arrow(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !284 !guid !5288 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsbm5zPlkZccl_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL), !dbg !5289
  %.val.i.i.i = load i64, ptr %i.a, align 8, !dbg !5290, !noundef !2137
  %i.b = icmp sgt i64 %.val.i.i.i, 0, !dbg !5291
  br i1 %i.b, label %bb.c, label %bb.b, !dbg !5292, !prof !2315

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvXsA_NtCsbm5zPlkZccl_4pyo38instanceINtB7_2PypENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %.0.val), !dbg !5293
  br label %_RNvXsA_NtCsbm5zPlkZccl_4pyo38instanceINtB5_2PyNtNtB7_10exceptions15PyBaseExceptionENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow.exit, !dbg !5293

bb.c:                                             ; preds = %bb.a
  tail call void @_Py_DecRef(ptr noundef nonnull %.0.val) #33, !dbg !5294
  br label %_RNvXsA_NtCsbm5zPlkZccl_4pyo38instanceINtB5_2PyNtNtB7_10exceptions15PyBaseExceptionENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow.exit, !dbg !5295

_RNvXsA_NtCsbm5zPlkZccl_4pyo38instanceINtB5_2PyNtNtB7_10exceptions15PyBaseExceptionENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow.exit: ; preds = %bb.b, %bb.c
  ret void, !dbg !5296
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfyRUffk9zcp_6planus13builder_cache5CacheNtBJ_6VTableEECs8774dFTUdNv_12polars_arrow(ptr captures(address) %.0.val, i64 %.8.val) unnamed_addr #3 !dbg !295 !guid !5316 {
bb.a:
  %i.a = icmp eq i64 %.8.val, 0, !dbg !5318
  br i1 %i.a, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsiRP4scwzBE7_9hashbrown5table9HashTableNtNtCsfyRUffk9zcp_6planus13builder_cache11CacheOffsetEECs8774dFTUdNv_12polars_arrow.exit, label %_RNvMs1_NtCsiRP4scwzBE7_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i, !dbg !5318

_RNvMs1_NtCsiRP4scwzBE7_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i: ; preds = %bb.a
  %i.b = shl i64 %.8.val, 2, !dbg !5319           ; 2 uses
  %i.c = add i64 %i.b, 4, !dbg !5319
  %i.d = add i64 %i.b, 19, !dbg !5320             ; 2 uses
  %i.e = icmp uge i64 %i.d, %i.c, !dbg !5320
  tail call void @llvm.assume(i1 %i.e), !dbg !5321
  %i.f = and i64 %i.d, -16, !dbg !5322            ; 3 uses
  %i.g = add i64 %.8.val, 17, !dbg !5323
  %i.h = add i64 %i.g, %i.f, !dbg !5324           ; 4 uses
  %i.i = icmp uge i64 %i.h, %i.f, !dbg !5324
  %i.j = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %i.i), !dbg !5325
  tail call void @llvm.assume(i1 %i.j), !dbg !5325
  %i.k = icmp eq i64 %i.h, 0, !dbg !5326
  br i1 %i.k, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsiRP4scwzBE7_9hashbrown5table9HashTableNtNtCsfyRUffk9zcp_6planus13builder_cache11CacheOffsetEECs8774dFTUdNv_12polars_arrow.exit, label %bb.b, !dbg !5326

bb.b:                                             ; preds = %_RNvMs1_NtCsiRP4scwzBE7_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.l = sub nsw i64 0, %i.f, !dbg !5327
  %i.m = getelementptr inbounds i8, ptr %.0.val, i64 %i.l, !dbg !5328
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #33, !dbg !5329, !noalias !5317
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsiRP4scwzBE7_9hashbrown5table9HashTableNtNtCsfyRUffk9zcp_6planus13builder_cache11CacheOffsetEECs8774dFTUdNv_12polars_arrow.exit, !dbg !5330
end_hunk_0
begin_hunk_1_@llvm.umin.i8
!4882 = distinct !{!4882, !4881, !"_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs8774dFTUdNv_12polars_arrow: argument 0"}
!4883 = distinct !DILocation(line: 35, column: 21, scope: !223, inlinedAt: !4880)
!4884 = distinct !DILocation(line: 1573, column: 36, scope: !216, inlinedAt: !4869)
!4885 = distinct !DILocation(line: 1597, column: 46, scope: !221, inlinedAt: !4869)
!4886 = distinct !DISubprogram(name: "capacity_overflow", linkageName: "_RNvMNtCs7tGzs63DEEy_9hashbrown3rawNtB2_11Fallibility17capacity_overflow", scope: !2160, file: !2149, line: 33, type: !2138, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2137)
!4887 = distinct !DISubprogram(name: "ok_or_else<usize, hashbrown::TryReserveError, hashbrown::raw::{impl#12}::fallible_with_capacity::{closure_env#0}<allocator_api2::stable::alloc::global::Global>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionjE10ok_or_elseNtCs7tGzs63DEEy_9hashbrown15TryReserveErrorNCINvMsa_NtBY_3rawNtB1M_13RawTableInner22fallible_with_capacityNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0ECs8774dFTUdNv_12polars_arrow", scope: !2199, file: !2197, line: 1363, type: !2138, scopeLine: 1363, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2137)
!4888 = distinct !DISubprogram(name: "{closure#0}<allocator_api2::stable::alloc::global::Global>", linkageName: "_RNCINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB8_13RawTableInner22fallible_with_capacityNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0Cs8774dFTUdNv_12polars_arrow", scope: !4911, file: !2149, line: 1631, type: !2138, scopeLine: 1631, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2137)
!4889 = distinct !DISubprogram(name: "from_residual<hashbrown::raw::RawTableInner, hashbrown::TryReserveError, hashbrown::TryReserveError>", linkageName: "_RNvXsq_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultNtNtCs7tGzs63DEEy_9hashbrown3raw13RawTableInnerNtBO_15TryReserveErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1v_EE13from_residualCs8774dFTUdNv_12polars_arrow", scope: !2281, file: !2164, line: 2187, type: !2138, scopeLine: 2187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2137)
!4890 = distinct !DILexicalBlock(scope: !4889, file: !2164, line: 2189, column: 13)
!4891 = distinct !DILexicalBlock(scope: !4849, file: !2149, line: 1631, column: 68)
!4892 = distinct !DILexicalBlock(scope: !4891, file: !2149, line: 1631, column: 68)
!4893 = distinct !DILexicalBlock(scope: !4889, file: !2164, line: 2189, column: 13)
!4894 = distinct !DILexicalBlock(scope: !4868, file: !2149, line: 1634, column: 87)
!4895 = distinct !DILexicalBlock(scope: !4894, file: !2149, line: 1634, column: 87)
!4896 = distinct !DILocation(line: 1601, column: 65, scope: !227, inlinedAt: !4869)
!4897 = distinct !DILocation(line: 1606, column: 26, scope: !228, inlinedAt: !4869)
!4898 = distinct !DISubprogram(name: "write_bytes<core::mem::maybe_uninit::MaybeUninit<hashbrown::control::tag::Tag>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr11write_bytesINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtNtCs7tGzs63DEEy_9hashbrown7control3tag3TagEECs8774dFTUdNv_12polars_arrow", scope: !2148, file: !2147, line: 702, type: !2138, scopeLine: 702, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2137)
!4899 = distinct !DILexicalBlock(scope: !4868, file: !2149, line: 1633, column: 17)
!4900 = distinct !DISubprogram(name: "fill_empty<[core::mem::maybe_uninit::MaybeUninit<hashbrown::control::tag::Tag>]>", linkageName: "_RNvYSINtNtNtCscgRAwXFJnXP_4core3mem12maybe_uninit11MaybeUninitNtNtNtCs7tGzs63DEEy_9hashbrown7control3tag3TagENtB10_11TagSliceExt10fill_emptyCs8774dFTUdNv_12polars_arrow", scope: !2282, file: !2223, line: 72, type: !2138, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2137)
!4901 = distinct !DISubprogram(name: "fill_tag", linkageName: "_RNvXs0_NtNtCs7tGzs63DEEy_9hashbrown7control3tagSINtNtNtCscgRAwXFJnXP_4core3mem12maybe_uninit11MaybeUninitNtB5_3TagENtB5_11TagSliceExt8fill_tag", scope: !2283, file: !2223, line: 78, type: !2138, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2137)
!4902 = distinct !DISubprogram(name: "write_bytes<core::mem::maybe_uninit::MaybeUninit<hashbrown::control::tag::Tag>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOINtNtNtB6_3mem12maybe_uninit11MaybeUninitNtNtNtCs7tGzs63DEEy_9hashbrown7control3tag3TagE11write_bytesCs8774dFTUdNv_12polars_arrow", scope: !2185, file: !2183, line: 1432, type: !2138, scopeLine: 1432, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2137)
!4903 = !{i64 -5525171732976008943}
!4904 = !DILexicalBlockFile(scope: !4853, file: !2154, discriminator: 2)
!4905 = !DILexicalBlockFile(scope: !4857, file: !2154, discriminator: 2)
!4906 = !DILexicalBlockFile(scope: !4850, file: !2258, discriminator: 0)
!4907 = !{!4882}
!4908 = !DILocation(line: 1631, column: 22, scope: !4849)
!4909 = !DILocation(line: 1369, column: 25, scope: !4887, inlinedAt: !4908)
!4910 = !DILocation(line: 1631, column: 48, scope: !4888, inlinedAt: !4909)
!4911 = !DINamespace(name: "fallible_with_capacity", scope: !2193)
!4912 = !DILexicalBlockFile(scope: !4892, file: !2149, discriminator: 2)
!4913 = !DILocation(line: 1630, column: 31, scope: !4912)
!4914 = !DILexicalBlockFile(scope: !4849, file: !2258, discriminator: 0)
!4915 = !DILexicalBlockFile(scope: !4895, file: !2149, discriminator: 2)
!4916 = !DILocation(line: 1634, column: 21, scope: !4915)
!4917 = !DILexicalBlockFile(scope: !4868, file: !2258, discriminator: 0)
!4918 = !DILocation(line: 1638, column: 37, scope: !4899)
!4919 = !DILocation(line: 73, column: 14, scope: !4900, inlinedAt: !4918)
!4920 = !DILocation(line: 80, column: 36, scope: !4901, inlinedAt: !4919)
!4921 = !DILocation(line: 1437, column: 18, scope: !4902, inlinedAt: !4920)
!4922 = !DILocation(line: 1624, column: 12, scope: !4849)
!4923 = !DILocation(line: 1625, column: 13, scope: !4849)
!4924 = !DILocation(line: 1624, column: 9, scope: !4849)
!4925 = !DILocation(line: 109, column: 8, scope: !4850, inlinedAt: !4851)
!4926 = !DILocation(line: 3105, column: 26, scope: !4852, inlinedAt: !4855)
!4927 = !DILocation(line: 457, column: 8, scope: !4856, inlinedAt: !4858)
!4928 = !DILocation(line: 156, column: 24, scope: !4850, inlinedAt: !4851)
!4929 = !DILocation(line: 3832, column: 21, scope: !4859, inlinedAt: !4863)
!4930 = !DILocation(line: 3837, column: 30, scope: !4864, inlinedAt: !4863)
!4931 = !DILocation(line: 3838, column: 13, scope: !4865, inlinedAt: !4863)
!4932 = !DILocation(line: 3861, column: 13, scope: !4860, inlinedAt: !4862)
!4933 = !DILocation(line: 164, column: 2, scope: !4850, inlinedAt: !4851)
!4934 = !DILocation(line: 141, column: 26, scope: !4867, inlinedAt: !4851)
!4935 = !DILocation(line: 0, scope: !4906, inlinedAt: !4851)
!4936 = !DILocation(line: 3105, column: 26, scope: !60, inlinedAt: !4872)
!4937 = !DILocation(line: 457, column: 8, scope: !65, inlinedAt: !4873)
!4938 = !DILocation(line: 823, column: 37, scope: !64, inlinedAt: !4874)
!4939 = !DILocation(line: 457, column: 8, scope: !65, inlinedAt: !4875)
!4940 = !DILocation(line: 222, column: 13, scope: !63, inlinedAt: !4870)
!4941 = !DILocation(line: 223, column: 43, scope: !66, inlinedAt: !4870)
!4942 = !DILocation(line: 823, column: 37, scope: !64, inlinedAt: !4876)
!4943 = !DILocation(line: 457, column: 8, scope: !65, inlinedAt: !4877)
!4944 = !DILocation(line: 23, column: 9, scope: !218, inlinedAt: !4880)
!4945 = !DILocation(line: 99, column: 9, scope: !222, inlinedAt: !4883)
!4946 = !DILocation(line: 101, column: 9, scope: !222, inlinedAt: !4883)
!4947 = !DILocation(line: 40, column: 15, scope: !220, inlinedAt: !4878)
!4948 = !DILocation(line: 40, column: 9, scope: !220, inlinedAt: !4878)
!4949 = !DILocation(line: 34, column: 9, scope: !224, inlinedAt: !4884)
!4950 = !DILocation(line: 43, column: 9, scope: !225, inlinedAt: !4885)
!4951 = !DILocation(line: 45, column: 40, scope: !225, inlinedAt: !4885)
!4952 = !DILocation(line: 36, column: 40, scope: !224, inlinedAt: !4884)
!4953 = !DILocation(line: 34, column: 9, scope: !4886, inlinedAt: !4910)
!4954 = !DILocation(line: 36, column: 40, scope: !4886, inlinedAt: !4910)
!4955 = !DILocation(line: 2189, column: 23, scope: !4890, inlinedAt: !4913)
!4956 = !DILocation(line: 0, scope: !4914)
!4957 = !DILocation(line: 2189, column: 23, scope: !4893, inlinedAt: !4916)
!4958 = !DILocation(line: 0, scope: !4917)
!4959 = !DILocation(line: 961, column: 18, scope: !226, inlinedAt: !4896)
!4960 = !DILocation(line: 1604, column: 26, scope: !228, inlinedAt: !4869)
!4961 = !DILocation(line: 183, column: 8, scope: !229, inlinedAt: !4897)
!4962 = !DILocation(line: 714, column: 9, scope: !4898, inlinedAt: !4921)
!4963 = !DILocation(line: 1640, column: 17, scope: !4899)
!4964 = !DILocation(line: 1643, column: 6, scope: !4849)
!4965 = distinct !DISubprogram(name: "is_empty_singleton", linkageName: "_RNvMsa_NtCsiRP4scwzBE7_9hashbrown3rawNtB5_13RawTableInner18is_empty_singleton", scope: !2153, file: !2284, line: 2542, type: !2138, scopeLine: 2542, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2137)
!4966 = distinct !DISubprogram(name: "buckets", linkageName: "_RNvMsa_NtCsiRP4scwzBE7_9hashbrown3rawNtB5_13RawTableInner7buckets", scope: !2153, file: !2284, line: 2521, type: !2138, scopeLine: 2521, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2137)
!4967 = distinct !DILocation(line: 3013, column: 56, scope: !232, inlinedAt: !4980)
!4968 = distinct !DILocation(line: 205, column: 18, scope: !236, inlinedAt: !4967)
!4969 = distinct !DILocation(line: 1215, column: 31, scope: !234, inlinedAt: !4968)
!4970 = distinct !DILocation(line: 205, column: 40, scope: !236, inlinedAt: !4967)
!4971 = distinct !DILocation(line: 823, column: 16, scope: !237, inlinedAt: !4970)
!4972 = distinct !DILocation(line: 206, column: 31, scope: !239, inlinedAt: !4967)
!4973 = distinct !DILocation(line: 823, column: 16, scope: !2285, inlinedAt: !4972)
!4974 = distinct !DILocation(line: 2983, column: 15, scope: !240, inlinedAt: !4979)
!4975 = distinct !DILocation(line: 113, column: 22, scope: !69, inlinedAt: !4974)
!4976 = distinct !DILocation(line: 121, column: 14, scope: !74, inlinedAt: !4975)
!4977 = !{i64 1909228630725923201}
!4978 = !DILocation(line: 2158, column: 18, scope: !230)
!4979 = !DILocation(line: 2165, column: 22, scope: !230)
!4980 = !DILocation(line: 2982, column: 34, scope: !231, inlinedAt: !4979)
!4981 = !DILocation(line: 3013, column: 82, scope: !232, inlinedAt: !4980)
!4982 = !DILocation(line: 3019, column: 64, scope: !241, inlinedAt: !4980)
!4983 = !DILocation(line: 2543, column: 9, scope: !4965, inlinedAt: !4978)
!4984 = !DILocation(line: 2158, column: 13, scope: !230)
!4985 = !DILocation(line: 2522, column: 9, scope: !4966, inlinedAt: !4981)
!4986 = !DILocation(line: 3105, column: 26, scope: !233, inlinedAt: !4969)
!4987 = !DILocation(line: 205, column: 52, scope: !236, inlinedAt: !4967)
!4988 = !DILocation(line: 823, column: 37, scope: !237, inlinedAt: !4970)
!4989 = !DILocation(line: 457, column: 8, scope: !238, inlinedAt: !4971)
!4990 = !DILocation(line: 205, column: 71, scope: !236, inlinedAt: !4967)
!4991 = !DILocation(line: 205, column: 13, scope: !236, inlinedAt: !4967)
!4992 = !DILocation(line: 206, column: 43, scope: !239, inlinedAt: !4967)
!4993 = !DILocation(line: 823, column: 37, scope: !237, inlinedAt: !4972)
!4994 = !DILocation(line: 457, column: 8, scope: !238, inlinedAt: !4973)
!4995 = !DILocation(line: 3013, column: 43, scope: !232, inlinedAt: !4980)
!4996 = !DILocation(line: 3013, column: 37, scope: !232, inlinedAt: !4980)
!4997 = !DILocation(line: 110, column: 12, scope: !69, inlinedAt: !4974)
!4998 = !DILocation(line: 3019, column: 45, scope: !241, inlinedAt: !4980)
!4999 = !DILocation(line: 1072, column: 47, scope: !242, inlinedAt: !4982)
!5000 = !DILocation(line: 1072, column: 22, scope: !242, inlinedAt: !4982)
!5001 = !DILocation(line: 128, column: 14, scope: !73, inlinedAt: !4976)
!5002 = !DILocation(line: 110, column: 9, scope: !69, inlinedAt: !4974)
!5003 = !DILocation(line: 2168, column: 6, scope: !230)
!5004 = distinct !DILocation(line: 810, column: 1, scope: !243)
!5005 = distinct !DILocation(line: 810, column: 1, scope: !244, inlinedAt: !5004)
!5006 = distinct !DILocation(line: 810, column: 1, scope: !244, inlinedAt: !5004)
!5007 = !{i64 -9026529616957810057}
!5008 = !DILocation(line: 810, column: 1, scope: !243)
!5009 = !DILocation(line: 810, column: 1, scope: !244, inlinedAt: !5004)
!5010 = !DILocation(line: 810, column: 1, scope: !245, inlinedAt: !5005)
!5011 = !DILocation(line: 810, column: 1, scope: !245, inlinedAt: !5006)
!5012 = distinct !DILocation(line: 810, column: 1, scope: !246)
!5013 = distinct !DILocation(line: 810, column: 1, scope: !247, inlinedAt: !5012)
!5014 = distinct !DILocation(line: 810, column: 1, scope: !247, inlinedAt: !5012)
!5015 = !{i64 -5820799846017587225}
!5016 = !DILocation(line: 810, column: 1, scope: !246)
!5017 = !DILocation(line: 810, column: 1, scope: !247, inlinedAt: !5012)
!5018 = !DILocation(line: 810, column: 1, scope: !248, inlinedAt: !5013)
!5019 = !DILocation(line: 810, column: 1, scope: !248, inlinedAt: !5014)
!5020 = distinct !DILocation(line: 810, column: 1, scope: !249)
!5021 = distinct !DILocation(line: 810, column: 1, scope: !250, inlinedAt: !5020)
!5022 = distinct !DILocation(line: 810, column: 1, scope: !250, inlinedAt: !5020)
!5023 = !{i64 1239085779308739210}
!5024 = !DILocation(line: 810, column: 1, scope: !249)
!5025 = !DILocation(line: 810, column: 1, scope: !250, inlinedAt: !5020)
!5026 = !DILocation(line: 810, column: 1, scope: !251, inlinedAt: !5021)
!5027 = !DILocation(line: 810, column: 1, scope: !251, inlinedAt: !5022)
!5028 = distinct !DILocation(line: 810, column: 1, scope: !252)
!5029 = distinct !DILocation(line: 810, column: 1, scope: !253, inlinedAt: !5028)
!5030 = distinct !DILocation(line: 810, column: 1, scope: !253, inlinedAt: !5028)
!5031 = !{i64 4975551573597261515}
!5032 = !DILocation(line: 810, column: 1, scope: !252)
!5033 = !DILocation(line: 810, column: 1, scope: !253, inlinedAt: !5028)
!5034 = !DILocation(line: 810, column: 1, scope: !254, inlinedAt: !5029)
!5035 = !DILocation(line: 810, column: 1, scope: !254, inlinedAt: !5030)
!5036 = distinct !DILocation(line: 810, column: 1, scope: !255)
!5037 = distinct !DILocation(line: 810, column: 1, scope: !256, inlinedAt: !5036)
!5038 = distinct !DILocation(line: 810, column: 1, scope: !256, inlinedAt: !5036)
!5039 = !{i64 -682349893103741356}
!5040 = !DILocation(line: 810, column: 1, scope: !255)
!5041 = !DILocation(line: 810, column: 1, scope: !256, inlinedAt: !5036)
!5042 = !DILocation(line: 810, column: 1, scope: !257, inlinedAt: !5037)
!5043 = !DILocation(line: 810, column: 1, scope: !257, inlinedAt: !5038)
!5044 = distinct !DILocation(line: 810, column: 1, scope: !258)
!5045 = distinct !DILocation(line: 810, column: 1, scope: !259, inlinedAt: !5044)
!5046 = distinct !DILocation(line: 810, column: 1, scope: !259, inlinedAt: !5044)
!5047 = !{i64 -6895687487209301029}
!5048 = !DILocation(line: 810, column: 1, scope: !258)
!5049 = !DILocation(line: 810, column: 1, scope: !259, inlinedAt: !5044)
!5050 = !DILocation(line: 810, column: 1, scope: !260, inlinedAt: !5045)
!5051 = !DILocation(line: 810, column: 1, scope: !260, inlinedAt: !5046)
!5052 = distinct !DILocation(line: 810, column: 1, scope: !261)
!5053 = distinct !DILocation(line: 810, column: 1, scope: !262, inlinedAt: !5052)
!5054 = distinct !DILocation(line: 810, column: 1, scope: !262, inlinedAt: !5052)
!5055 = !{i64 -841848494365310968}
!5056 = !DILocation(line: 810, column: 1, scope: !261)
!5057 = !DILocation(line: 810, column: 1, scope: !262, inlinedAt: !5052)
!5058 = !DILocation(line: 810, column: 1, scope: !263, inlinedAt: !5053)
!5059 = !DILocation(line: 810, column: 1, scope: !263, inlinedAt: !5054)
!5060 = distinct !DILocation(line: 810, column: 1, scope: !264)
!5061 = distinct !DILocation(line: 810, column: 1, scope: !268, inlinedAt: !5060)
!5062 = distinct !DILocation(line: 810, column: 1, scope: !267, inlinedAt: !5061)
!5063 = distinct !DILocation(line: 810, column: 1, scope: !266, inlinedAt: !5062)
!5064 = distinct !DILocation(line: 810, column: 1, scope: !265, inlinedAt: !5063)
!5065 = distinct !DILocation(line: 810, column: 1, scope: !265, inlinedAt: !5063)
!5066 = !{i64 -5986016906656118422}
!5067 = !DILocation(line: 810, column: 1, scope: !264)
!5068 = !DILocation(line: 810, column: 1, scope: !265, inlinedAt: !5063)
!5069 = !DILocation(line: 810, column: 1, scope: !269, inlinedAt: !5064)
!5070 = !DILocation(line: 810, column: 1, scope: !269, inlinedAt: !5065)
!5071 = !DILocation(line: 810, column: 1, scope: !267, inlinedAt: !5061)
!5072 = distinct !DILocation(line: 810, column: 1, scope: !270)
!5073 = distinct !DILocation(line: 810, column: 1, scope: !266, inlinedAt: !5072)
!5074 = distinct !DILocation(line: 810, column: 1, scope: !265, inlinedAt: !5073)
!5075 = distinct !DILocation(line: 810, column: 1, scope: !265, inlinedAt: !5073)
!5076 = !{i64 9052757547020080510}
!5077 = !DILocation(line: 810, column: 1, scope: !270)
!5078 = !DILocation(line: 810, column: 1, scope: !265, inlinedAt: !5073)
!5079 = !DILocation(line: 810, column: 1, scope: !269, inlinedAt: !5074)
!5080 = !DILocation(line: 810, column: 1, scope: !269, inlinedAt: !5075)
!5081 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<polars_arrow_format::ipc::generated::root::org::apache::arrow::flatbuf::MessageHeader>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf13MessageHeaderEECs8774dFTUdNv_12polars_arrow", scope: !2148, file: !2147, line: 810, type: !2146, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2137)
!5082 = distinct !DISubprogram(name: "drop_in_place<polars_arrow_format::ipc::generated::root::org::apache::arrow::flatbuf::MessageHeader>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf13MessageHeaderECs8774dFTUdNv_12polars_arrow", scope: !2148, file: !2147, line: 810, type: !2146, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2137)
!5083 = distinct !DILocation(line: 810, column: 1, scope: !5081)
!5084 = distinct !{!5084, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf12SparseTensorECs8774dFTUdNv_12polars_arrow"}
!5085 = distinct !{!5085, !5084, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf12SparseTensorECs8774dFTUdNv_12polars_arrow: argument 0"}
!5086 = distinct !DISubprogram(name: "drop_in_place<alloc::boxed::Box<polars_arrow_format::ipc::generated::root::org::apache::arrow::flatbuf::SparseTensor, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf12SparseTensorEECs8774dFTUdNv_12polars_arrow", scope: !2148, file: !2147, line: 810, type: !2146, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2137)
!5087 = distinct !DILocation(line: 810, column: 1, scope: !5082, inlinedAt: !5083)
!5088 = distinct !DISubprogram(name: "drop_in_place<polars_arrow_format::ipc::generated::root::org::apache::arrow::flatbuf::SparseTensor>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf12SparseTensorECs8774dFTUdNv_12polars_arrow", scope: !2148, file: !2147, line: 810, type: !2138, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2137)
!5089 = distinct !DILocation(line: 810, column: 1, scope: !5086, inlinedAt: !5087)
!5090 = distinct !DILocation(line: 810, column: 1, scope: !5088, inlinedAt: !5089)
!5091 = distinct !DILocation(line: 810, column: 1, scope: !271, inlinedAt: !5090)
!5092 = distinct !DILocation(line: 810, column: 1, scope: !271, inlinedAt: !5090)
!5093 = distinct !DILocation(line: 810, column: 1, scope: !5082, inlinedAt: !5083)
!5094 = distinct !DISubprogram(name: "drop_in_place<alloc::boxed::Box<polars_arrow_format::ipc::generated::root::org::apache::arrow::flatbuf::DictionaryBatch, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf15DictionaryBatchEECs8774dFTUdNv_12polars_arrow", scope: !2148, file: !2147, line: 810, type: !2146, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2137)
!5095 = distinct !DILocation(line: 810, column: 1, scope: !5082, inlinedAt: !5083)
!5096 = distinct !DILocation(line: 810, column: 1, scope: !5094, inlinedAt: !5095)
!5097 = distinct !DILocation(line: 810, column: 1, scope: !275, inlinedAt: !5096)
!5098 = distinct !DILocation(line: 810, column: 1, scope: !274, inlinedAt: !5097)
!5099 = distinct !DILocation(line: 810, column: 1, scope: !276, inlinedAt: !5098)
!5100 = distinct !DILocation(line: 1921, column: 24, scope: !283, inlinedAt: !5099)
!5101 = distinct !DILocation(line: 462, column: 23, scope: !280, inlinedAt: !5100)
!5102 = distinct !DILocation(line: 344, column: 9, scope: !279, inlinedAt: !5101)
!5103 = distinct !DILocation(line: 229, column: 22, scope: !278, inlinedAt: !5102)
!5104 = distinct !DILocation(line: 810, column: 1, scope: !276, inlinedAt: !5098)
!5105 = distinct !DILocation(line: 1921, column: 24, scope: !283, inlinedAt: !5104)
!5106 = distinct !DILocation(line: 462, column: 23, scope: !280, inlinedAt: !5105)
!5107 = distinct !DILocation(line: 344, column: 9, scope: !279, inlinedAt: !5106)
!5108 = distinct !DILocation(line: 229, column: 22, scope: !278, inlinedAt: !5107)
!5109 = distinct !DILocation(line: 810, column: 1, scope: !5082, inlinedAt: !5083)
!5110 = distinct !{!5110, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf6TensorECs8774dFTUdNv_12polars_arrow"}
!5111 = distinct !{!5111, !5110, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf6TensorECs8774dFTUdNv_12polars_arrow: argument 0"}
!5112 = distinct !DISubprogram(name: "drop_in_place<alloc::boxed::Box<polars_arrow_format::ipc::generated::root::org::apache::arrow::flatbuf::Tensor, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf6TensorEECs8774dFTUdNv_12polars_arrow", scope: !2148, file: !2147, line: 810, type: !2146, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2137)
!5113 = distinct !DILocation(line: 810, column: 1, scope: !5082, inlinedAt: !5083)
!5114 = distinct !DISubprogram(name: "drop_in_place<polars_arrow_format::ipc::generated::root::org::apache::arrow::flatbuf::Tensor>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf6TensorECs8774dFTUdNv_12polars_arrow", scope: !2148, file: !2147, line: 810, type: !2138, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2137)
!5115 = distinct !DILocation(line: 810, column: 1, scope: !5112, inlinedAt: !5113)
!5116 = distinct !DILocation(line: 810, column: 1, scope: !5114, inlinedAt: !5115)
!5117 = distinct !DILocation(line: 810, column: 1, scope: !271, inlinedAt: !5116)
!5118 = distinct !DILocation(line: 810, column: 1, scope: !271, inlinedAt: !5116)
!5119 = distinct !{!5119, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEECs8774dFTUdNv_12polars_arrow"}
!5120 = distinct !{!5120, !5119, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEEECs8774dFTUdNv_12polars_arrow: argument 0"}
!5121 = distinct !DILocation(line: 810, column: 1, scope: !5114, inlinedAt: !5115)
!5122 = distinct !DILocation(line: 810, column: 1, scope: !261, inlinedAt: !5121)
!5123 = distinct !DILocation(line: 810, column: 1, scope: !262, inlinedAt: !5122)
!5124 = distinct !DILocation(line: 810, column: 1, scope: !262, inlinedAt: !5122)
!5125 = !{i64 -7925793257923067373}
!5126 = !{!5085}
!5127 = !{i64 0, i64 26}
!5128 = !{i64 0, i64 3}
!5129 = !{!5111}
!5130 = !{!5120, !5111}
!5131 = !DILocation(line: 810, column: 1, scope: !5081)
!5132 = !DILocation(line: 810, column: 1, scope: !5082, inlinedAt: !5083)
!5133 = !DILocation(line: 810, column: 1, scope: !5086, inlinedAt: !5087)
!5134 = !DILocation(line: 810, column: 1, scope: !5088, inlinedAt: !5089)
!5135 = !DILocation(line: 810, column: 1, scope: !271, inlinedAt: !5090)
!5136 = !DILocation(line: 810, column: 1, scope: !272, inlinedAt: !5091)
!5137 = !DILocation(line: 810, column: 1, scope: !272, inlinedAt: !5092)
!5138 = !DILocation(line: 810, column: 1, scope: !273, inlinedAt: !5093)
!5139 = !DILocation(line: 810, column: 1, scope: !5094, inlinedAt: !5095)
!5140 = !DILocation(line: 810, column: 1, scope: !274, inlinedAt: !5097)
!5141 = !DILocation(line: 810, column: 1, scope: !276, inlinedAt: !5098)
!5142 = !DILocation(line: 128, column: 14, scope: !277, inlinedAt: !5103)
!5143 = !DILocation(line: 128, column: 14, scope: !277, inlinedAt: !5108)
!5144 = !DILocation(line: 810, column: 1, scope: !276, inlinedAt: !5109)
!5145 = !DILocation(line: 810, column: 1, scope: !5112, inlinedAt: !5113)
!5146 = !DILocation(line: 810, column: 1, scope: !5114, inlinedAt: !5115)
!5147 = !DILocation(line: 810, column: 1, scope: !271, inlinedAt: !5116)
!5148 = !DILocation(line: 810, column: 1, scope: !272, inlinedAt: !5117)
!5149 = !DILocation(line: 810, column: 1, scope: !272, inlinedAt: !5118)
!5150 = !DILocation(line: 810, column: 1, scope: !261, inlinedAt: !5121)
!5151 = !DILocation(line: 810, column: 1, scope: !262, inlinedAt: !5122)
!5152 = !DILocation(line: 810, column: 1, scope: !263, inlinedAt: !5123)
!5153 = !DILocation(line: 810, column: 1, scope: !263, inlinedAt: !5124)
!5154 = distinct !{!5154, i1 true, !"_RNvXs1_NtCs7tGzs63DEEy_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow"}
!5155 = distinct !{!5155, !5154, !"_RNvXs1_NtCs7tGzs63DEEy_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow: argument 0"}
!5156 = distinct !DILocation(line: 810, column: 1, scope: !54)
!5157 = distinct !{!5157, i1 true, !"_RNCINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB8_13RawTableInner14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0Cs8774dFTUdNv_12polars_arrow"}
!5158 = distinct !{!5158, !5157, !"_RNCINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB8_13RawTableInner14prepare_resizeNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalE0Cs8774dFTUdNv_12polars_arrow: argument 0"}
!5159 = distinct !DILocation(line: 70, column: 9, scope: !55, inlinedAt: !5156)
!5160 = distinct !DILocation(line: 2710, column: 32, scope: !56, inlinedAt: !5159)
!5161 = distinct !DILocation(line: 3113, column: 38, scope: !59, inlinedAt: !5160)
!5162 = distinct !DILocation(line: 3145, column: 65, scope: !58, inlinedAt: !5161)
!5163 = distinct !DILocation(line: 3145, column: 39, scope: !58, inlinedAt: !5161)
!5164 = distinct !DILocation(line: 222, column: 18, scope: !63, inlinedAt: !5163)
!5165 = distinct !DILocation(line: 1215, column: 31, scope: !61, inlinedAt: !5164)
!5166 = distinct !DILocation(line: 222, column: 40, scope: !63, inlinedAt: !5163)
!5167 = distinct !DILocation(line: 823, column: 16, scope: !64, inlinedAt: !5166)
!5168 = distinct !DILocation(line: 223, column: 31, scope: !66, inlinedAt: !5163)
!5169 = distinct !DILocation(line: 823, column: 16, scope: !2196, inlinedAt: !5168)
!5170 = distinct !DILocation(line: 3146, column: 29, scope: !68, inlinedAt: !5161)
!5171 = distinct !DILocation(line: 3114, column: 19, scope: !70, inlinedAt: !5160)
!5172 = distinct !DILocation(line: 3150, column: 64, scope: !72, inlinedAt: !5161)
!5173 = distinct !DILocation(line: 113, column: 22, scope: !69, inlinedAt: !5171)
!5174 = distinct !DILocation(line: 121, column: 14, scope: !74, inlinedAt: !5173)
!5175 = !{i64 2141954410564345977}
!5176 = !{!5155}
!5177 = !{!5158}
!5178 = !{!5158, !5155}
!5179 = !DILocation(line: 810, column: 1, scope: !54)
!5180 = !DILocation(line: 70, column: 23, scope: !55, inlinedAt: !5156)
!5181 = !DILocation(line: 70, column: 9, scope: !55, inlinedAt: !5156)
!5182 = !DILocation(line: 2705, column: 17, scope: !56, inlinedAt: !5159)
!5183 = !DILocation(line: 2710, column: 52, scope: !56, inlinedAt: !5159)
!5184 = !DILocation(line: 2635, column: 9, scope: !57, inlinedAt: !5162)
!5185 = !DILocation(line: 3105, column: 26, scope: !60, inlinedAt: !5165)
!5186 = !DILocation(line: 222, column: 52, scope: !63, inlinedAt: !5163)
!5187 = !DILocation(line: 823, column: 37, scope: !64, inlinedAt: !5166)
!5188 = !DILocation(line: 457, column: 8, scope: !65, inlinedAt: !5167)
!5189 = !DILocation(line: 222, column: 71, scope: !63, inlinedAt: !5163)
!5190 = !DILocation(line: 222, column: 13, scope: !63, inlinedAt: !5163)
!5191 = !DILocation(line: 223, column: 43, scope: !66, inlinedAt: !5163)
!5192 = !DILocation(line: 823, column: 37, scope: !64, inlinedAt: !5168)
!5193 = !DILocation(line: 457, column: 8, scope: !65, inlinedAt: !5169)
!5194 = !DILocation(line: 1129, column: 15, scope: !67, inlinedAt: !5170)
!5195 = !DILocation(line: 1129, column: 9, scope: !67, inlinedAt: !5170)
!5196 = !DILocation(line: 110, column: 12, scope: !69, inlinedAt: !5171)
!5197 = !DILocation(line: 1072, column: 47, scope: !71, inlinedAt: !5172)
!5198 = !DILocation(line: 1072, column: 22, scope: !71, inlinedAt: !5172)
!5199 = !DILocation(line: 128, column: 14, scope: !73, inlinedAt: !5174)
!5200 = !DILocation(line: 110, column: 9, scope: !69, inlinedAt: !5171)
!5201 = distinct !DISubprogram(name: "drop_in_place<hashbrown::scopeguard::ScopeGuard<&mut hashbrown::raw::RawTableInner, hashbrown::raw::{impl#12}::rehash_in_place::{closure_env#0}>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown10scopeguard10ScopeGuardQNtNtBL_3raw13RawTableInnerNCNvMsa_B1A_B1y_15rehash_in_place0EECs8774dFTUdNv_12polars_arrow", scope: !2148, file: !2147, line: 810, type: !2138, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2137)
!5202 = distinct !{!5202, i1 true, !"_RNvXs1_NtCs7tGzs63DEEy_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow"}
!5203 = distinct !{!5203, !5202, !"_RNvXs1_NtCs7tGzs63DEEy_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow: argument 0"}
!5204 = distinct !DISubprogram(name: "drop<&mut hashbrown::raw::RawTableInner, hashbrown::raw::{impl#12}::rehash_in_place::{closure_env#0}>", linkageName: "_RNvXs1_NtCs7tGzs63DEEy_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs8774dFTUdNv_12polars_arrow", scope: !2192, file: !2190, line: 69, type: !2138, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2137)
!5205 = distinct !DILocation(line: 810, column: 1, scope: !5201)
!5206 = distinct !DISubprogram(name: "num_buckets", linkageName: "_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner11num_buckets", scope: !2153, file: !2149, line: 2634, type: !2138, scopeLine: 2634, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2137)
!5207 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB7_13RawTableInner15rehash_in_place0Cs8774dFTUdNv_12polars_arrow", scope: !5249, file: !2149, line: 2998, type: !2146, scopeLine: 2998, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2137)
!5208 = distinct !DILocation(line: 70, column: 9, scope: !5204, inlinedAt: !5205)
!5209 = distinct !DILocation(line: 2999, column: 31, scope: !5207, inlinedAt: !5208)
!5210 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !2244, file: !2161, line: 1917, type: !2138, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2137)
!5211 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCs8774dFTUdNv_12polars_arrow", scope: !2247, file: !2245, line: 780, type: !2138, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2137)
!5212 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs8774dFTUdNv_12polars_arrow", scope: !2248, file: !2245, line: 865, type: !2138, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2137)
!5213 = distinct !DILexicalBlock(scope: !5207, file: !2149, line: 2999, column: 13)
!5214 = distinct !DILocation(line: 2999, column: 22, scope: !5250, inlinedAt: !5208)
!5215 = distinct !DILocation(line: 866, column: 14, scope: !5212, inlinedAt: !5214)
!5216 = distinct !DILocation(line: 781, column: 12, scope: !5211, inlinedAt: !5215)
!5217 = distinct !DISubprogram(name: "ctrl", linkageName: "_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner4ctrl", scope: !2153, file: !2149, line: 2621, type: !2138, scopeLine: 2621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2137)
!5218 = distinct !DILexicalBlock(scope: !5213, file: !2149, line: 2999, column: 13)
!5219 = distinct !DILocation(line: 3004, column: 31, scope: !5218, inlinedAt: !5208)
!5220 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !2156, file: !2154, line: 886, type: !2138, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2137)
!5221 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsF_NtNtCscgRAwXFJnXP_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !2250, file: !2245, line: 212, type: !2138, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2137)
!5222 = distinct !DILexicalBlock(scope: !5211, file: !2245, line: 782, column: 13)
!5223 = distinct !DILocation(line: 784, column: 35, scope: !5222, inlinedAt: !5215)
!5224 = distinct !DILocation(line: 214, column: 28, scope: !5221, inlinedAt: !5223)
!5225 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOh3addCs8774dFTUdNv_12polars_arrow", scope: !2185, file: !2183, line: 927, type: !2138, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2137)
!5226 = distinct !DILocation(line: 2624, column: 37, scope: !5217, inlinedAt: !5219)
!5227 = distinct !DISubprogram(name: "eq", linkageName: "_RNvXs5_NtNtCs7tGzs63DEEy_9hashbrown7control3tagNtB5_3TagNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq", scope: !2251, file: !2223, line: 4, type: !2138, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2137)
!5228 = distinct !DILocation(line: 3004, column: 24, scope: !5218, inlinedAt: !5208)
!5229 = distinct !DISubprogram(name: "wrapping_sub", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj12wrapping_sub", scope: !2156, file: !2154, line: 2547, type: !2138, scopeLine: 2547, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2137)
!5230 = distinct !DISubprogram(name: "set_ctrl", linkageName: "_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner8set_ctrl", scope: !2153, file: !2149, line: 2564, type: !2138, scopeLine: 2564, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2137)
!5231 = distinct !DILocation(line: 3005, column: 31, scope: !5218, inlinedAt: !5208)
!5232 = distinct !DILocation(line: 2589, column: 30, scope: !5230, inlinedAt: !5231)
!5233 = distinct !DILexicalBlock(scope: !5230, file: !2149, line: 2589, column: 9)
!5234 = distinct !DILocation(line: 2594, column: 19, scope: !5233, inlinedAt: !5231)
!5235 = distinct !DILocation(line: 2624, column: 37, scope: !5251, inlinedAt: !5234)
!5236 = distinct !DISubprogram(name: "data_end<u8>", linkageName: "_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner8data_endhECs8774dFTUdNv_12polars_arrow", scope: !2153, file: !2149, line: 2438, type: !2138, scopeLine: 2438, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2137)
!5237 = distinct !DISubprogram(name: "bucket_ptr", linkageName: "_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner10bucket_ptr", scope: !2153, file: !2149, line: 2393, type: !2138, scopeLine: 2393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2137)
!5238 = distinct !DILexicalBlock(scope: !5218, file: !2149, line: 3006, column: 50)
!5239 = distinct !DILocation(line: 3007, column: 40, scope: !5238, inlinedAt: !5208)
!5240 = distinct !DILocation(line: 2397, column: 38, scope: !5237, inlinedAt: !5239)
!5241 = distinct !DILexicalBlock(scope: !5237, file: !2149, line: 2397, column: 13)
!5242 = distinct !DISubprogram(name: "sub<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOh3subCs8774dFTUdNv_12polars_arrow", scope: !2185, file: !2183, line: 1033, type: !2138, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2137)
!5243 = distinct !DILocation(line: 2398, column: 18, scope: !5241, inlinedAt: !5239)
!5244 = distinct !{null, null}
!5245 = distinct !DISubprogram(name: "bucket_mask_to_capacity", linkageName: "_RNvNtCs7tGzs63DEEy_9hashbrown3raw23bucket_mask_to_capacity", scope: !2151, file: !2149, line: 182, type: !2138, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2137)
!5246 = distinct !DILocation(line: 3013, column: 33, scope: !5207, inlinedAt: !5208)
!5247 = !{i64 1181051396097728493}
!5248 = !{!5203}
!5249 = !DINamespace(name: "rehash_in_place", scope: !2193)
!5250 = !DILexicalBlockFile(scope: !5213, file: !2149, discriminator: 2)
!5251 = !DILexicalBlockFile(scope: !5217, file: !2149, discriminator: 4)
!5252 = !DILocation(line: 810, column: 1, scope: !5201)
!5253 = !DILocation(line: 70, column: 9, scope: !5204, inlinedAt: !5205)
!5254 = !DILocation(line: 2635, column: 9, scope: !5206, inlinedAt: !5209)
!5255 = !DILocation(line: 1917, column: 50, scope: !5210, inlinedAt: !5216)
!5256 = !DILocation(line: 781, column: 12, scope: !5211, inlinedAt: !5215)
!5257 = !DILocation(line: 2624, column: 18, scope: !5217, inlinedAt: !5219)
!5258 = !DILocation(line: 3004, column: 24, scope: !5218, inlinedAt: !5208)
!5259 = !DILocation(line: 898, column: 17, scope: !5220, inlinedAt: !5224)
!5260 = !DILocation(line: 961, column: 18, scope: !5225, inlinedAt: !5226)
!5261 = !DILocation(line: 4, column: 23, scope: !5227, inlinedAt: !5228)
!5262 = !DILocation(line: 2548, column: 13, scope: !5229, inlinedAt: !5232)
!5263 = !DILocation(line: 2589, column: 60, scope: !5230, inlinedAt: !5231)
!5264 = !DILocation(line: 2589, column: 22, scope: !5230, inlinedAt: !5231)
!5265 = !DILocation(line: 2593, column: 13, scope: !5233, inlinedAt: !5231)
!5266 = !DILocation(line: 2624, column: 18, scope: !5217, inlinedAt: !5234)
!5267 = !DILocation(line: 961, column: 18, scope: !5225, inlinedAt: !5235)
!5268 = !DILocation(line: 2594, column: 13, scope: !5233, inlinedAt: !5231)
!5269 = !DILocation(line: 3009, column: 25, scope: !5218, inlinedAt: !5208)
!5270 = !DILocation(line: 3004, column: 21, scope: !5218, inlinedAt: !5208)
!5271 = !DILocation(line: 2439, column: 9, scope: !5236, inlinedAt: !5240)
!5272 = !DILocation(line: 2398, column: 22, scope: !5241, inlinedAt: !5239)
!5273 = !DILocation(line: 1072, column: 22, scope: !5242, inlinedAt: !5243)
!5274 = !DILocation(line: 3007, column: 29, scope: !5238, inlinedAt: !5208)
!5275 = !DILocation(line: 3013, column: 57, scope: !5207, inlinedAt: !5208)
!5276 = !DILocation(line: 183, column: 8, scope: !5245, inlinedAt: !5246)
!5277 = !DILocation(line: 3013, column: 78, scope: !5207, inlinedAt: !5208)
!5278 = !DILocation(line: 3013, column: 13, scope: !5207, inlinedAt: !5208)
!5279 = distinct !DILocation(line: 810, column: 1, scope: !284)
!5280 = distinct !DILocation(line: 2306, column: 9, scope: !290, inlinedAt: !5279)
!5281 = distinct !DILocation(line: 2290, column: 16, scope: !289, inlinedAt: !5280)
!5282 = distinct !DILocation(line: 39, column: 18, scope: !288, inlinedAt: !5281)
!5283 = distinct !DILocation(line: 461, column: 37, scope: !287, inlinedAt: !5282)
!5284 = distinct !DILocation(line: 250, column: 5, scope: !286, inlinedAt: !5283)
!5285 = distinct !DILocation(line: 462, column: 12, scope: !291, inlinedAt: !5282)
!5286 = distinct !DILocation(line: 39, column: 44, scope: !288, inlinedAt: !5281)
!5287 = distinct !DILocation(line: 2292, column: 26, scope: !289, inlinedAt: !5280)
!5288 = !{i64 -4167840473231237563}
!5289 = !DILocation(line: 75, column: 26, scope: !285, inlinedAt: !5284)
!5290 = !DILocation(line: 462, column: 12, scope: !291, inlinedAt: !5282)
!5291 = !DILocation(line: 39, column: 31, scope: !292, inlinedAt: !5285)
!5292 = !DILocation(line: 1595, column: 9, scope: !293, inlinedAt: !5286)
!5293 = !DILocation(line: 2294, column: 17, scope: !289, inlinedAt: !5280)
!5294 = !DILocation(line: 269, column: 13, scope: !294, inlinedAt: !5287)
!5295 = !DILocation(line: 2290, column: 13, scope: !289, inlinedAt: !5280)
!5296 = !DILocation(line: 810, column: 1, scope: !284)
!5297 = distinct !DILocation(line: 810, column: 1, scope: !295)
!5298 = distinct !DILocation(line: 810, column: 1, scope: !298, inlinedAt: !5297)
!5299 = distinct !DILocation(line: 810, column: 1, scope: !297, inlinedAt: !5298)
!5300 = distinct !DILocation(line: 3366, column: 18, scope: !296, inlinedAt: !5299)
!5301 = distinct !DILocation(line: 2165, column: 22, scope: !230, inlinedAt: !5300)
!5302 = distinct !DILocation(line: 2982, column: 34, scope: !231, inlinedAt: !5301)
!5303 = distinct !DILocation(line: 3013, column: 56, scope: !232, inlinedAt: !5302)
!5304 = distinct !DILocation(line: 205, column: 18, scope: !236, inlinedAt: !5303)
!5305 = distinct !DILocation(line: 1215, column: 31, scope: !234, inlinedAt: !5304)
!5306 = distinct !DILocation(line: 205, column: 40, scope: !236, inlinedAt: !5303)
!5307 = distinct !DILocation(line: 823, column: 16, scope: !237, inlinedAt: !5306)
!5308 = distinct !DILocation(line: 206, column: 31, scope: !239, inlinedAt: !5303)
!5309 = distinct !DILocation(line: 823, column: 16, scope: !2285, inlinedAt: !5308)
!5310 = distinct !DILocation(line: 2983, column: 15, scope: !240, inlinedAt: !5301)
!5311 = distinct !DILocation(line: 3019, column: 64, scope: !241, inlinedAt: !5302)
!5312 = distinct !{!5312, i1 true, !"_RINvMsa_NtCsiRP4scwzBE7_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableNtNtCsfyRUffk9zcp_6planus13builder_cache11CacheOffsetNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs8774dFTUdNv_12polars_arrow"}
!5313 = distinct !{!5313, !5312, !"_RINvMsa_NtCsiRP4scwzBE7_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableNtNtCsfyRUffk9zcp_6planus13builder_cache11CacheOffsetNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs8774dFTUdNv_12polars_arrow: argument 0"}
!5314 = distinct !DILocation(line: 113, column: 22, scope: !69, inlinedAt: !5310)
!5315 = distinct !DILocation(line: 121, column: 14, scope: !74, inlinedAt: !5314)
!5316 = !{i64 7558148159555649165}
!5317 = !{!5313}
!5318 = !DILocation(line: 2158, column: 13, scope: !230, inlinedAt: !5300)
!5319 = !DILocation(line: 3105, column: 26, scope: !233, inlinedAt: !5305)
!5320 = !DILocation(line: 823, column: 37, scope: !237, inlinedAt: !5306)
!5321 = !DILocation(line: 457, column: 8, scope: !238, inlinedAt: !5307)
!5322 = !DILocation(line: 205, column: 13, scope: !236, inlinedAt: !5303)
!5323 = !DILocation(line: 206, column: 43, scope: !239, inlinedAt: !5303)
!5324 = !DILocation(line: 823, column: 37, scope: !237, inlinedAt: !5308)
!5325 = !DILocation(line: 457, column: 8, scope: !238, inlinedAt: !5309)
!5326 = !DILocation(line: 110, column: 12, scope: !69, inlinedAt: !5310)
!5327 = !DILocation(line: 1072, column: 47, scope: !242, inlinedAt: !5311)
!5328 = !DILocation(line: 1072, column: 22, scope: !242, inlinedAt: !5311)
!5329 = !DILocation(line: 128, column: 14, scope: !73, inlinedAt: !5315)
!5330 = !DILocation(line: 110, column: 9, scope: !69, inlinedAt: !5310)
!5331 = !DILocation(line: 810, column: 1, scope: !295)
!5332 = distinct !DILocation(line: 810, column: 1, scope: !299)
!5333 = distinct !DILocation(line: 810, column: 1, scope: !298, inlinedAt: !5332)
!5334 = distinct !DILocation(line: 810, column: 1, scope: !297, inlinedAt: !5333)
!5335 = distinct !DILocation(line: 3366, column: 18, scope: !296, inlinedAt: !5334)
!5336 = distinct !DILocation(line: 2165, column: 22, scope: !230, inlinedAt: !5335)
!5337 = distinct !DILocation(line: 2982, column: 34, scope: !231, inlinedAt: !5336)
end_hunk_1
