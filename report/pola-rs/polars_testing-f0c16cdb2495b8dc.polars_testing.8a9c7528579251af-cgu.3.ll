Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_testing-f0c16cdb2495b8dc.polars_testing.8a9c7528579251af-cgu.3?download=true
inline.NumInlined: 202
inline.NumDeleted: 111
begin_hunk_0_@_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsbTP5kh6vDpX_14polars_testing:bb.a
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 8 dereferenceable(48) %.val2)
          to label %.body.i.i unwind label %bb.v, !dbg !1136

bb.u:                                             ; preds = %bb.s
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 8 dereferenceable(48) %.val2)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEECsbTP5kh6vDpX_14polars_testing.exit.i.i unwind label %bb.w, !dbg !1138

bb.v:                                             ; preds = %bb.t
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #15, !dbg !1130
  unreachable, !dbg !1130

bb.w:                                             ; preds = %bb.u
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i, !dbg !1140

.body.i.i:                                        ; preds = %bb.w, %bb.t
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.an, %bb.w ], [ %i.al, %bb.t ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.val2, i64 24, !dbg !1140
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef align 8 dereferenceable(24) %i.ao) #19
          to label %bb.ab unwind label %bb.z, !dbg !1140

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEECsbTP5kh6vDpX_14polars_testing.exit.i.i: ; preds = %bb.u
  %i.ap = getelementptr inbounds nuw i8, ptr %.val2, i64 24, !dbg !1140 ; 3 uses
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECsbTP5kh6vDpX_14polars_testing.exit.i.i unwind label %bb.x, !dbg !1141

bb.x:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEECsbTP5kh6vDpX_14polars_testing.exit.i.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %bb.ab unwind label %bb.y, !dbg !1143

bb.y:                                             ; preds = %bb.x
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #15, !dbg !1141
  unreachable, !dbg !1141

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECsbTP5kh6vDpX_14polars_testing.exit.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEECsbTP5kh6vDpX_14polars_testing.exit.i.i
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxTINtNtBL_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEIB1h_NtNtB1A_5field5FieldEEEECsbTP5kh6vDpX_14polars_testing.exit unwind label %bb.aa, !dbg !1145

bb.z:                                             ; preds = %.body.i.i
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #15, !dbg !1140
  unreachable, !dbg !1140

bb.aa:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECsbTP5kh6vDpX_14polars_testing.exit.i.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab, !dbg !1147

bb.ab:                                            ; preds = %bb.aa, %bb.x, %.body.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.at, %bb.aa ], [ %i.aq, %bb.x ], [ %eh.lpad-body.i.i, %.body.i.i ]
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef 48, i64 noundef 8) #16, !dbg !1148
  br label %common.resume, !dbg !1147

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxTINtNtBL_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEIB1h_NtNtB1A_5field5FieldEEEECsbTP5kh6vDpX_14polars_testing.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECsbTP5kh6vDpX_14polars_testing.exit.i.i
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef 48, i64 noundef 8) #16, !dbg !1157
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEEECsbTP5kh6vDpX_14polars_testing.exit, !dbg !974

bb.ac:                                            ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 31, !dbg !1163
  %i.av = load i8, ptr %i.au, align 1, !dbg !1163, !range !1173, !alias.scope !1174, !noundef !12
  %i.aw = icmp eq i8 %i.av, -40, !dbg !1183
  br i1 %i.aw, label %bb.ad, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEEECsbTP5kh6vDpX_14polars_testing.exit, !dbg !1183, !prof !1184

bb.ad:                                            ; preds = %bb.ac
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !974
  tail call void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax), !dbg !1185
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEEECsbTP5kh6vDpX_14polars_testing.exit, !dbg !1185

bb.ae:                                            ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !974 ; 3 uses
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsbTP5kh6vDpX_14polars_testing.exit unwind label %bb.af, !dbg !1186

bb.af:                                            ; preds = %bb.ae
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %common.resume unwind label %bb.ag, !dbg !1188

bb.ag:                                            ; preds = %bb.af
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #15, !dbg !1186
  unreachable, !dbg !1186

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsbTP5kh6vDpX_14polars_testing.exit: ; preds = %bb.ae
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay), !dbg !1190
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEEECsbTP5kh6vDpX_14polars_testing.exit, !dbg !974
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension21ExtensionTypeInstanceECsbTP5kh6vDpX_14polars_testing(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !839 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !dbg !1192, !invariant.load !12 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null, !dbg !1192
  br i1 %.not.i, label %bb.c, label %bb.b, !dbg !1192

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e, !dbg !1192

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8, !dbg !1194
  %i.c = load i64, ptr %i.b, align 8, !dbg !1194, !range !297, !invariant.load !12 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0, !dbg !1198
  br i1 %i.d, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension17ExtensionTypeImplEL_EECsbTP5kh6vDpX_14polars_testing.exit, label %bb.d, !dbg !1198

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16, !dbg !1194
  %i.f = load i64, ptr %i.e, align 8, !dbg !1199, !range !308, !invariant.load !12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #16, !dbg !1202
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension17ExtensionTypeImplEL_EECsbTP5kh6vDpX_14polars_testing.exit, !dbg !1207

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8, !dbg !1208
  %i.i = load i64, ptr %i.h, align 8, !dbg !1208, !range !297, !invariant.load !12 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0, !dbg !1212
  br i1 %i.j, label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension17ExtensionTypeImplEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing.exit4.i, label %bb.f, !dbg !1212

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16, !dbg !1208
  %i.l = load i64, ptr %i.k, align 8, !dbg !1213, !range !308, !invariant.load !12
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #16, !dbg !1216
  br label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension17ExtensionTypeImplEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing.exit4.i, !dbg !1221

_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension17ExtensionTypeImplEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g, !dbg !1192

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extension17ExtensionTypeImplEL_EECsbTP5kh6vDpX_14polars_testing.exit: ; preds = %bb.c, %bb.d
  ret void, !dbg !1222
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1T_8adapters3map12map_try_foldBX_INtNtB1V_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtB1V_3ops12control_flow11ControlFlowIB5x_B3W_EENCINvMNtB40_10projectionNtB6t_23AmortizedColumnSelector15select_multipleBX_INtB8_3VecBX_EE0NCINvXB2Z_INtB2Z_12GenericShuntINtB2X_3MapBI_B6n_EIB3A_NtNtB1V_7convert10InfallibleB4N_EEB1N_8try_folduNCINvNvB1N_12try_for_each4callB3W_B6c_NcNtB6c_5Break0E0B6c_E0E0B5w_ECsbTP5kh6vDpX_14polars_testing(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 16 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1223 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 16               ; 42 uses
  %i.g = alloca [48 x i8], align 16               ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [96 x i8], align 16               ; 10 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0.i.sroa.7.i.i = alloca [96 x i8], align 8 ; 10 uses
  %.sroa.5.i.i = alloca [7 x i8], align 1         ; 5 uses
  %.sroa.8.i.i = alloca [24 x i8], align 16       ; 5 uses
  %i.k = alloca [72 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.6 = alloca [7 x i8], align 1             ; 5 uses
  %.sroa.10 = alloca [56 x i8], align 8           ; 5 uses
  %.sroa.11 = alloca [40 x i8], align 16          ; 5 uses
  %.sroa.13 = alloca [24 x i8], align 16          ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.n, align 8        ; 2 uses
  %i.o = load ptr, ptr %i.m, align 8, !dbg !1228, !nonnull !12, !noundef !12
  %.not133 = icmp eq ptr %.promoted, %i.o, !dbg !1230
  br i1 %.not133, label %._crit_edge, label %.lr.ph, !dbg !1238

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val3 = load ptr, ptr %i.p, align 8, !nonnull !12, !align !280, !noundef !12
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 23 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.9.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %.sroa.10.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.0.i.sroa.7.96..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.sroa.7.i.i, i64 72
  %.sroa.0.i.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %.sroa.0.i.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.0.i.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.0.i.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.10.80..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.sroa.7.i.i, i64 56
  br label %bb.b, !dbg !1238

bb.b:                                             ; preds = %.lr.ph, %bb.cq
  %i.aa = phi ptr [ %.promoted, %.lr.ph ], [ %i.ab, %bb.cq ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !1239, !noalias !1248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !dbg !1252
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24, !dbg !1258 ; 3 uses
  store ptr %i.ab, ptr %i.n, align 8, !dbg !1261
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !1262
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10), !dbg !1262
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11), !dbg !1262
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13), !dbg !1262
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  %.val.i = load ptr, ptr %.val3, align 8, !dbg !1239, !noalias !1248, !nonnull !12, !align !280, !noundef !12
  call void @llvm.experimental.noalias.scope.decl(metadata !1263), !dbg !1239
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !1266, !noalias !1275
  %i.ac = load i8, ptr %i.q, align 1, !dbg !1277, !range !1173, !alias.scope !1299, !noalias !1302, !noundef !12 ; 2 uses
  %i.ad = icmp ugt i8 %i.ac, -41, !dbg !1303
  br i1 %i.ad, label %bb.d, label %bb.c, !dbg !1303

bb.c:                                             ; preds = %bb.b
  %i.ae = add i8 %i.ac, 64, !dbg !1304
  %i.af = call i8 @llvm.umin.i8(i8 %i.ae, i8 24), !dbg !1310
  %.sroa.0.0.i.i.i.i = zext nneg i8 %i.af to i64, !dbg !1310
  br label %bb.g, !dbg !1316

bb.d:                                             ; preds = %bb.b
  %i.ag = load ptr, ptr %i.l, align 8, !dbg !1319, !alias.scope !1299, !noalias !1302, !noundef !12
  %i.ah = load i64, ptr %i.r, align 8, !dbg !1320, !alias.scope !1299, !noalias !1302, !noundef !12
  br label %bb.g, !dbg !1321

bb.e:                                             ; preds = %bb.l, %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i, !dbg !1322

.body.i.i:                                        ; preds = %bb.bp, %.body.i.i.i.i, %bb.e
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ai, %bb.e ], [ %.pn.i.i.i.i, %bb.bp ], [ %.pn.i.i.i.i, %.body.i.i.i.i ] ; 2 uses
  %i.aj = load i8, ptr %i.q, align 1, !dbg !1323, !range !1173, !alias.scope !1330, !noalias !1302, !noundef !12
  %i.ak = icmp eq i8 %i.aj, -40, !dbg !1339
  br i1 %i.ak, label %bb.f, label %common.resume.i, !dbg !1339, !prof !1184

bb.f:                                             ; preds = %.body.i.i
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume.i unwind label %bb.cl, !dbg !1340, !noalias !1302

bb.g:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0.i.i.i = phi i64 [ %i.ah, %bb.d ], [ %.sroa.0.0.i.i.i.i, %bb.c ], !dbg !1341
  %.sroa.0.0.i.i.i = phi ptr [ %i.ag, %bb.d ], [ %i.l, %bb.c ], !dbg !1342
  invoke void @_RNvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB2_23AmortizedColumnSelector6select(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.i, i64 noundef %.sroa.01.0.i.i.i)
          to label %bb.h unwind label %bb.e, !dbg !1343, !noalias !1302

bb.h:                                             ; preds = %bb.g
  %i.al = load i64, ptr %i.k, align 8, !dbg !1344, !range !1349, !noalias !1275, !noundef !12 ; 2 uses
  %.not.i.i = icmp eq i64 %i.al, 18, !dbg !1344
  br i1 %.not.i.i, label %bb.j, label %bb.i, !dbg !1350

bb.i:                                             ; preds = %bb.h
  %i.am = inttoptr i64 %i.al to ptr, !dbg !1350
  %.sroa.9.8.copyload.i = load ptr, ptr %.sroa.9.8..sroa_idx.i, align 8, !dbg !1351, !noalias !1352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.i.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.10.8..sroa_idx.i, i64 56, i1 false), !dbg !1351, !noalias !1248
  br label %_RNvXs7_NtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB5_6ColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i, !dbg !1353

bb.j:                                             ; preds = %bb.h
  %i.an = load ptr, ptr %.sroa.9.8..sroa_idx.i, align 8, !dbg !1354, !noalias !1275, !nonnull !12, !align !1355, !noundef !12 ; 29 uses
  %i.ao = load i8, ptr %i.an, align 16, !dbg !1356, !range !1367, !noalias !1368, !noundef !12
  %.not.i.i.i = icmp eq i8 %i.ao, 31, !dbg !1356
  br i1 %.not.i.i.i, label %bb.ch, label %bb.k, !dbg !1356

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !1371, !noalias !1378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !1381, !noalias !1378
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 96, !dbg !1381 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 119, !dbg !1388
  %i.ar = load i8, ptr %i.aq, align 1, !dbg !1388, !range !1173, !noalias !1396, !noundef !12
  %i.as = icmp eq i8 %i.ar, -40, !dbg !1397
  br i1 %i.as, label %bb.l, label %bb.m, !dbg !1397

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap) #18
          to label %.noexc1.i.i unwind label %bb.e, !dbg !1398, !noalias !1302

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 16 dereferenceable(24) %i.ap, i64 24, i1 false), !dbg !1399, !noalias !1396
  br label %.noexc1.i.i, !dbg !1402

.noexc1.i.i:                                      ; preds = %bb.m, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !1403, !noalias !1378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !1404, !noalias !1378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !1405, !noalias !1378
  call void @llvm.experimental.noalias.scope.decl(metadata !1406), !dbg !1405
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !1409, !noalias !1415
  invoke fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.g, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.an) #20
          to label %.noexc.i.i.i.i unwind label %bb.bq, !dbg !1409, !noalias !1396

.noexc.i.i.i.i:                                   ; preds = %.noexc1.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !1417, !noalias !1415
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 48, !dbg !1417 ; 25 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1418), !dbg !1417
  call void @llvm.experimental.noalias.scope.decl(metadata !1421), !dbg !1417
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !1423, !noalias !1415
  %i.au = load i8, ptr %i.at, align 16, !dbg !1423, !range !975, !alias.scope !1430, !noalias !1431, !noundef !12
  switch i8 %i.au, label %default.unreachable [
    i8 0, label %bb.n
    i8 1, label %bb.o
    i8 2, label %bb.p
    i8 3, label %bb.q
    i8 4, label %bb.r
    i8 5, label %bb.s
    i8 6, label %bb.t
    i8 7, label %bb.u
    i8 8, label %bb.v
    i8 9, label %bb.w
    i8 10, label %bb.x
    i8 11, label %bb.y
    i8 12, label %bb.z
    i8 13, label %bb.aa
    i8 14, label %bb.ab
    i8 15, label %bb.ac
    i8 16, label %bb.ad
    i8 17, label %bb.ae
    i8 18, label %bb.af
    i8 19, label %bb.ag
    i8 20, label %bb.ah
    i8 21, label %bb.ai
    i8 22, label %bb.aj
    i8 23, label %bb.ak
    i8 24, label %bb.al
    i8 25, label %bb.am
    i8 26, label %bb.an
    i8 27, label %bb.ao
    i8 28, label %bb.ap
    i8 29, label %bb.aq
    i8 30, label %bb.ar
    i8 31, label %bb.aw
    i8 32, label %bb.ax
    i8 33, label %bb.ay
    i8 34, label %bb.az
  ], !dbg !1423

default.unreachable:                              ; preds = %.noexc.i.i.i.i
  unreachable

bb.n:                                             ; preds = %.noexc.i.i.i.i
  store i8 0, ptr %i.f, align 16, !dbg !1423, !alias.scope !1418, !noalias !1432
  br label %bb.br, !dbg !1423

bb.o:                                             ; preds = %.noexc.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.f, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.at, i64 48, i1 false), !dbg !1433, !alias.scope !1435, !noalias !1436
  br label %bb.br, !dbg !1437

bb.p:                                             ; preds = %.noexc.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.f, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.at, i64 48, i1 false), !dbg !1438, !alias.scope !1435, !noalias !1436
  br label %bb.br, !dbg !1437

bb.q:                                             ; preds = %.noexc.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.f, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.at, i64 48, i1 false), !dbg !1440, !alias.scope !1435, !noalias !1436
  br label %bb.br, !dbg !1437

bb.r:                                             ; preds = %.noexc.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.f, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.at, i64 48, i1 false), !dbg !1442, !alias.scope !1435, !noalias !1436
  br label %bb.br, !dbg !1437

bb.s:                                             ; preds = %.noexc.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.f, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.at, i64 48, i1 false), !dbg !1444, !alias.scope !1435, !noalias !1436
  br label %bb.br, !dbg !1437

bb.t:                                             ; preds = %.noexc.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.f, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.at, i64 48, i1 false), !dbg !1446, !alias.scope !1435, !noalias !1436
  br label %bb.br, !dbg !1437

bb.u:                                             ; preds = %.noexc.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.f, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.at, i64 48, i1 false), !dbg !1448, !alias.scope !1435, !noalias !1436
  br label %bb.br, !dbg !1437

bb.v:                                             ; preds = %.noexc.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.f, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.at, i64 48, i1 false), !dbg !1450, !alias.scope !1435, !noalias !1436
  br label %bb.br, !dbg !1437

bb.w:                                             ; preds = %.noexc.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.f, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.at, i64 48, i1 false), !dbg !1452, !alias.scope !1435, !noalias !1436
  br label %bb.br, !dbg !1437

bb.x:                                             ; preds = %.noexc.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.f, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.at, i64 48, i1 false), !dbg !1454, !alias.scope !1435, !noalias !1436
  br label %bb.br, !dbg !1437

bb.y:                                             ; preds = %.noexc.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.f, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.at, i64 48, i1 false), !dbg !1456, !alias.scope !1435, !noalias !1436
  br label %bb.br, !dbg !1437

bb.z:                                             ; preds = %.noexc.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.f, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.at, i64 48, i1 false), !dbg !1458, !alias.scope !1435, !noalias !1436
  br label %bb.br, !dbg !1437

bb.aa:                                            ; preds = %.noexc.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.f, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.at, i64 48, i1 false), !dbg !1460, !alias.scope !1435, !noalias !1436
  br label %bb.br, !dbg !1437

bb.ab:                                            ; preds = %.noexc.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.f, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.at, i64 48, i1 false), !dbg !1462, !alias.scope !1435, !noalias !1436
end_hunk_0
begin_hunk_1_@_RINvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1T_8adapters3map12map_try_foldBX_INtNtB1V_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtB1V_3ops12control_flow11ControlFlowIB5x_B3W_EENCINvMNtB40_10projectionNtB6t_23AmortizedColumnSelector15select_multipleBX_INtB8_3VecBX_EE0NCINvXB2Z_INtB2Z_12GenericShuntINtB2X_3MapBI_B6n_EIB3A_NtNtB1V_7convert10InfallibleB4N_EEB1N_8try_folduNCINvNvB1N_12try_for_each4callB3W_B6c_NcNtB6c_5Break0E0B6c_E0E0B5w_ECsbTP5kh6vDpX_14polars_testing:bb.a
  call void @llvm.trap(), !dbg !1665
  unreachable, !dbg !1665

bb.bl:                                            ; preds = %bb.aw
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cn) #18
          to label %.noexc3.i.i.i.i.i unwind label %bb.bn, !dbg !1666, !noalias !1436

bb.bm:                                            ; preds = %bb.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.cn, i64 24, i1 false), !dbg !1667, !noalias !1431
  br label %.noexc3.i.i.i.i.i, !dbg !1670

.noexc3.i.i.i.i.i:                                ; preds = %bb.bm, %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !1671, !noalias !1432
  store i8 31, ptr %i.f, align 16, !dbg !1671, !alias.scope !1418, !noalias !1432
  br label %bb.br, !dbg !1437

bb.bn:                                            ; preds = %bb.bl, %bb.ay, %bb.ar, %bb.ap
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i, !dbg !1672

.body.i.i.i.i.i:                                  ; preds = %bb.bn, %bb.av
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.cw, %bb.bn ], [ %eh.lpad-body.i.i.i.i.i.i.i, %bb.av ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef align 16 dereferenceable(48) %i.g) #19
          to label %.body.i.i.i.i unwind label %bb.bo, !dbg !1672, !noalias !1436

bb.bo:                                            ; preds = %.body.i.i.i.i.i
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #15, !dbg !1673, !noalias !1436
  unreachable, !dbg !1673

.body.i.i.i.i:                                    ; preds = %.body5.i.i.i.i, %bb.bq, %.body.i.i.i.i.i
  %.pn.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i, %.body5.i.i.i.i ], [ %i.db, %bb.bq ], [ %eh.lpad-body.i.i.i.i.i, %.body.i.i.i.i.i ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.j, i64 23, !dbg !1674
  %i.cz = load i8, ptr %i.cy, align 1, !dbg !1674, !range !1173, !alias.scope !1681, !noalias !1378, !noundef !12
  %i.da = icmp eq i8 %i.cz, -40, !dbg !1690
  br i1 %i.da, label %bb.bp, label %.body.i.i, !dbg !1690, !prof !1184

bb.bp:                                            ; preds = %.body.i.i.i.i
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body.i.i unwind label %bb.cg, !dbg !1691, !noalias !1396

bb.bq:                                            ; preds = %.noexc1.i.i
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

bb.br:                                            ; preds = %.noexc3.i.i.i.i.i, %bb.bj, %bb.bh, %bb.bf, %bb.bd, %bb.bb, %bb.az, %.noexc2.i.i.i.i.i, %bb.ax, %_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxTINtNtB7_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEIBJ_NtNtB12_5field5FieldEEENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCsbTP5kh6vDpX_14polars_testing.exit.i.i.i.i.i.i, %bb.aq, %.noexc.i.i.i.i.i, %bb.ao, %bb.ak, %bb.ai, %bb.ah, %bb.ag, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !1692, !noalias !1415
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.i, ptr noundef nonnull align 16 dereferenceable(48) %i.g, i64 48, i1 false), !dbg !1673, !noalias !1693
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.x, ptr noundef nonnull align 16 dereferenceable(48) %i.f, i64 48, i1 false), !dbg !1673, !noalias !1693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !1672, !noalias !1415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !1672, !noalias !1415
  %i.dc = getelementptr inbounds nuw i8, ptr %i.an, i64 120, !dbg !1694
  %i.dd = load i64, ptr %i.dc, align 8, !dbg !1694, !noalias !1396, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !1695, !noalias !1699
  store i32 3, ptr %i.y, align 8, !dbg !1702, !noalias !1699
  %i.de = getelementptr inbounds nuw i8, ptr %i.an, i64 144, !dbg !1705
  %i.df = load atomic i32, ptr %i.de acquire, align 16, !dbg !1725, !noalias !1728
  %i.dg = icmp eq i32 %i.df, 0, !dbg !1729
  br i1 %i.dg, label %bb.bs, label %_RNvXs2_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB5_12ScalarColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i, !dbg !1729

.body.i3.i.i.i.i:                                 ; preds = %bb.cd, %bb.cc, %bb.by, %bb.bx, %bb.bw
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.dn, %bb.bw ], [ %i.dw, %bb.cc ], [ %i.dn, %bb.by ], [ %i.dn, %bb.bx ], [ %i.dw, %bb.cd ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std4sync9once_lock8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesEECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef align 8 dereferenceable(24) %i.c) #19
          to label %.body5.i.i.i.i unwind label %bb.cf, !dbg !1730, !noalias !1728

bb.bs:                                            ; preds = %bb.br
  %i.dh = getelementptr inbounds nuw i8, ptr %i.an, i64 128, !dbg !1731
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1732, !noalias !1699
  %.val.i.i.i.i.i = load ptr, ptr %i.dh, align 16, !dbg !1733, !noalias !1728, !nonnull !12, !noundef !12 ; 2 uses
  %i.di = getelementptr i8, ptr %i.an, i64 136, !dbg !1733
  %.val8.i.i.i.i.i = load ptr, ptr %i.di, align 8, !dbg !1733, !noalias !1728 ; 2 uses
  %i.dj = atomicrmw add ptr %.val.i.i.i.i.i, i64 1 monotonic, align 8, !dbg !1734, !noalias !1728
  %i.dk = icmp slt i64 %i.dj, 0, !dbg !1743
  br i1 %i.dk, label %bb.bt, label %bb.bu, !dbg !1743

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.trap(), !dbg !1745
  unreachable, !dbg !1745

bb.bu:                                            ; preds = %bb.bs
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1746, !noalias !1751
  store ptr %.val.i.i.i.i.i, ptr %i.a, align 8, !dbg !1755, !noalias !1751
  store ptr %.val8.i.i.i.i.i, ptr %i.z, align 8, !dbg !1755, !noalias !1751
  %i.dl = load atomic i32, ptr %i.y acquire, align 8, !dbg !1756, !noalias !1774
  %i.dm = icmp eq i32 %i.dl, 0, !dbg !1777
  br i1 %i.dm, label %_RINvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB3_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECsbTP5kh6vDpX_14polars_testing.exit.i.i.i.i.i.i, label %bb.bv, !dbg !1777, !prof !1778

bb.bv:                                            ; preds = %bb.bu
  invoke void @_RINvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB3_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE10initializeNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECsbTP5kh6vDpX_14polars_testing(ptr noundef nonnull align 8 %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB3_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECsbTP5kh6vDpX_14polars_testing.exit.i.i.i.i.i.i unwind label %bb.bw, !dbg !1779, !noalias !1780

bb.bw:                                            ; preds = %bb.bv
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1781), !dbg !1784
  %i.do = load ptr, ptr %i.a, align 8, !dbg !1785, !alias.scope !1781, !noalias !1751, !noundef !12 ; 2 uses
  %i.dp = icmp eq ptr %i.do, null, !dbg !1785
  br i1 %i.dp, label %.body.i3.i.i.i.i, label %bb.bx, !dbg !1785

bb.bx:                                            ; preds = %bb.bw
  %i.dq = atomicrmw sub ptr %i.do, i64 1 release, align 8, !dbg !1788, !noalias !1794
  %i.dr = icmp eq i64 %i.dq, 1, !dbg !1801
  br i1 %i.dr, label %bb.by, label %.body.i3.i.i.i.i, !dbg !1801

bb.by:                                            ; preds = %bb.bx
  fence acquire, !dbg !1802
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #18
          to label %.body.i3.i.i.i.i unwind label %bb.bz, !dbg !1804, !noalias !1780

_RINvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB3_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECsbTP5kh6vDpX_14polars_testing.exit.i.i.i.i.i.i: ; preds = %bb.bv, %bb.bu
  %i.ds = load ptr, ptr %i.a, align 8, !dbg !1805, !noalias !1751, !noundef !12 ; 3 uses
  %.not.i.i4.i.i.i.i = icmp eq ptr %i.ds, null, !dbg !1805
  br i1 %.not.i.i4.i.i.i.i, label %bb.cb, label %bb.ca, !dbg !1807

bb.bz:                                            ; preds = %bb.by
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #15, !dbg !1808, !noalias !1780
  unreachable, !dbg !1808

bb.ca:                                            ; preds = %_RINvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB3_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECsbTP5kh6vDpX_14polars_testing.exit.i.i.i.i.i.i
  %i.du = load ptr, ptr %i.z, align 8, !dbg !1809, !noalias !1751, !nonnull !12, !align !280, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1784, !noalias !1751
  store ptr %i.ds, ptr %i.b, align 8, !dbg !1810, !noalias !1699
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !1810
  store ptr %i.du, ptr %i.dv, align 8, !dbg !1810, !noalias !1699
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #21
          to label %bb.ce unwind label %bb.cc, !dbg !1812, !noalias !1728

bb.cb:                                            ; preds = %_RINvMNtNtCsh8eZTKRCwoO_3std4sync9once_lockINtB3_8OnceLockNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECsbTP5kh6vDpX_14polars_testing.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1784, !noalias !1751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1813, !noalias !1699
  br label %_RNvXs2_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB5_12ScalarColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i, !dbg !1814

bb.cc:                                            ; preds = %bb.ca
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dx = atomicrmw sub ptr %i.ds, i64 1 release, align 8, !dbg !1815, !noalias !1823
  %i.dy = icmp eq i64 %i.dx, 1, !dbg !1832
  br i1 %i.dy, label %bb.cd, label %.body.i3.i.i.i.i, !dbg !1832

bb.cd:                                            ; preds = %bb.cc
  fence acquire, !dbg !1833
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #18
          to label %.body.i3.i.i.i.i unwind label %bb.cf, !dbg !1835, !noalias !1728

bb.ce:                                            ; preds = %bb.ca
  unreachable

bb.cf:                                            ; preds = %bb.cd, %.body.i3.i.i.i.i
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #15, !dbg !1836, !noalias !1728
  unreachable, !dbg !1836

.body5.i.i.i.i:                                   ; preds = %.body.i3.i.i.i.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef align 16 dereferenceable(96) %i.i) #19
          to label %.body.i.i.i.i unwind label %bb.cg, !dbg !1837, !noalias !1396

bb.cg:                                            ; preds = %.body5.i.i.i.i, %bb.bp
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #15, !dbg !1838, !noalias !1396
  unreachable, !dbg !1838

_RNvXs2_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB5_12ScalarColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.cb, %bb.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.8.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !1839, !noalias !1248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1730, !noalias !1699
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.sroa.7.96..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !1838, !noalias !1248
  %.sroa.0.i.sroa.0.0.copyload.i.i = load i8, ptr %i.i, align 16, !dbg !1838, !noalias !1840
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.0.i.sroa.4.0..sroa_idx.i.i, i64 7, i1 false), !dbg !1838, !noalias !1248
  %.sroa.0.i.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.0.i.sroa.5.0..sroa_idx.i.i, align 8, !dbg !1838, !noalias !1840
  %.sroa.0.i.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.0.i.sroa.6.0..sroa_idx.i.i, align 16, !dbg !1838, !noalias !1840
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i.sroa.7.0..sroa_idx.i.i, i64 72, i1 false), !dbg !1838, !noalias !1248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !1837, !noalias !1378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !1837, !noalias !1378
  br label %_RNvXs7_NtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB5_6ColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i, !dbg !1841

bb.ch:                                            ; preds = %bb.j
  %i.eb = getelementptr inbounds nuw i8, ptr %i.an, i64 8, !dbg !1842 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !dbg !1842, !noalias !1368, !nonnull !12, !noundef !12
  %i.ed = atomicrmw add ptr %i.ec, i64 1 monotonic, align 8, !dbg !1857, !noalias !1368
  %i.ee = icmp slt i64 %i.ed, 0, !dbg !1862
  br i1 %i.ee, label %bb.cj, label %bb.ci, !dbg !1862

bb.ci:                                            ; preds = %bb.ch
  %i.ef = getelementptr inbounds nuw i8, ptr %i.an, i64 16, !dbg !1842
  %i.eg = load ptr, ptr %i.eb, align 8, !dbg !1864, !noalias !1368, !nonnull !12, !noundef !12
  %i.eh = load ptr, ptr %i.ef, align 16, !dbg !1864, !noalias !1368, !nonnull !12, !align !280, !noundef !12
  br label %_RNvXs7_NtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB5_6ColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i, !dbg !1841

bb.cj:                                            ; preds = %bb.ch
  call void @llvm.trap(), !dbg !1865
  unreachable, !dbg !1865

_RNvXs7_NtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB5_6ColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.ci, %_RNvXs2_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB5_12ScalarColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i, %bb.i
  %.sroa.12.0.i = phi i64 [ undef, %bb.i ], [ undef, %bb.ci ], [ %i.dd, %_RNvXs2_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB5_12ScalarColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], !dbg !1239
  %.sroa.9.0.i = phi ptr [ %.sroa.9.8.copyload.i, %bb.i ], [ %i.eh, %bb.ci ], [ %.sroa.0.i.sroa.6.0.copyload.i.i, %_RNvXs2_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB5_12ScalarColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], !dbg !1866 ; 3 uses
  %.sroa.73.0.i = phi ptr [ %i.am, %bb.i ], [ %i.eg, %bb.ci ], [ %.sroa.0.i.sroa.5.0.copyload.i.i, %_RNvXs2_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB5_12ScalarColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], !dbg !1866 ; 3 uses
  %.sroa.02.0.i = phi i8 [ 32, %bb.i ], [ 31, %bb.ci ], [ %.sroa.0.i.sroa.0.0.copyload.i.i, %_RNvXs2_NtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6scalarNtB5_12ScalarColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i ], !dbg !1866 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !1322, !noalias !1275
  %i.ei = load i8, ptr %i.q, align 1, !dbg !1867, !range !1173, !alias.scope !1874, !noalias !1302, !noundef !12
  %i.ej = icmp eq i8 %i.ei, -40, !dbg !1883
  br i1 %i.ej, label %bb.ck, label %_RNCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB5_23AmortizedColumnSelector15select_multipleNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1D_EE0CsbTP5kh6vDpX_14polars_testing.exit.i, !dbg !1883, !prof !1184

bb.ck:                                            ; preds = %_RNvXs7_NtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB5_6ColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i
  call void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l), !dbg !1884, !noalias !1302
  br label %_RNCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB5_23AmortizedColumnSelector15select_multipleNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1D_EE0CsbTP5kh6vDpX_14polars_testing.exit.i, !dbg !1884

bb.cl:                                            ; preds = %bb.f
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #15, !dbg !1885, !noalias !1302
  unreachable, !dbg !1885

common.resume.i:                                  ; preds = %bb.co, %bb.f, %.body.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.ep, %bb.co ], [ %eh.lpad-body.i.i, %bb.f ], [ %eh.lpad-body.i.i, %.body.i.i ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !1886

_RNCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB5_23AmortizedColumnSelector15select_multipleNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1D_EE0CsbTP5kh6vDpX_14polars_testing.exit.i: ; preds = %bb.ck, %_RNvXs7_NtNtCs1LHh8CLbVkQ_11polars_core5frame6columnNtB5_6ColumnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !1887, !noalias !1248
  %i.el = icmp eq i8 %.sroa.02.0.i, 32, !dbg !1888
  br i1 %i.el, label %bb.cm, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3L_B2a_EENCINvMNtB2e_10projectionNtB4G_23AmortizedColumnSelector15select_multipleBZ_INtNtCsgZ49sUHp3tW_5alloc3vec3VecBZ_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5Q_9into_iter8IntoIterBZ_EB4A_EIB1P_NtNtBa_7convert10InfallibleB31_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8g_12try_for_each4callB2a_B4p_NcNtB4p_5Break0E0B4p_E0E0CsbTP5kh6vDpX_14polars_testing.exit, !dbg !1897

bb.cm:                                            ; preds = %_RNCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB5_23AmortizedColumnSelector15select_multipleNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1D_EE0CsbTP5kh6vDpX_14polars_testing.exit.i
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.le = load ptr, ptr %i.em, align 8, !nonnull !12, !noundef !12 ; 8 uses
  %i.en = load i64, ptr %.val.le, align 8, !dbg !1898, !range !1349, !alias.scope !1902, !noalias !1905, !noundef !12
  %i.eo = icmp eq i64 %i.en, 18, !dbg !1898
  br i1 %i.eo, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3L_B2a_EENCINvMNtB2e_10projectionNtB4G_23AmortizedColumnSelector15select_multipleBZ_INtNtCsgZ49sUHp3tW_5alloc3vec3VecBZ_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5Q_9into_iter8IntoIterBZ_EB4A_EIB1P_NtNtBa_7convert10InfallibleB31_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8g_12try_for_each4callB2a_B4p_NcNtB4p_5Break0E0B4p_E0E0CsbTP5kh6vDpX_14polars_testing.exit.thread, label %bb.cn, !dbg !1898

bb.cn:                                            ; preds = %bb.cm
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 8 dereferenceable(72) %.val.le)
          to label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3L_B2a_EENCINvMNtB2e_10projectionNtB4G_23AmortizedColumnSelector15select_multipleBZ_INtNtCsgZ49sUHp3tW_5alloc3vec3VecBZ_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5Q_9into_iter8IntoIterBZ_EB4A_EIB1P_NtNtBa_7convert10InfallibleB31_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8g_12try_for_each4callB2a_B4p_NcNtB4p_5Break0E0B4p_E0E0CsbTP5kh6vDpX_14polars_testing.exit.thread unwind label %bb.co, !dbg !1909, !noalias !1905

bb.co:                                            ; preds = %bb.cn
  %i.ep = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.73.0.i, ptr %.val.le, align 8, !dbg !1912, !noalias !1913
  %.sroa.4.sroa.7.7..8.val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 8, !dbg !1912
  store ptr %.sroa.9.0.i, ptr %.sroa.4.sroa.7.7..8.val.sroa_idx.i, align 8, !dbg !1912, !noalias !1913
  %.sroa.4.sroa.8.7..8.val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 16, !dbg !1912
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.sroa.8.7..8.val.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.i.sroa.7.i.i, i64 56, i1 false), !dbg !1912, !noalias !1248
  br label %common.resume.i, !dbg !1914

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3L_B2a_EENCINvMNtB2e_10projectionNtB4G_23AmortizedColumnSelector15select_multipleBZ_INtNtCsgZ49sUHp3tW_5alloc3vec3VecBZ_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5Q_9into_iter8IntoIterBZ_EB4A_EIB1P_NtNtBa_7convert10InfallibleB31_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8g_12try_for_each4callB2a_B4p_NcNtB4p_5Break0E0B4p_E0E0CsbTP5kh6vDpX_14polars_testing.exit.thread: ; preds = %bb.cm, %bb.cn
  store ptr %.sroa.73.0.i, ptr %.val.le, align 8, !dbg !1912, !noalias !1913
  %.sroa.4.sroa.7.7..8.val.sroa_idx5.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 8, !dbg !1912
  store ptr %.sroa.9.0.i, ptr %.sroa.4.sroa.7.7..8.val.sroa_idx5.i, align 8, !dbg !1912, !noalias !1913
  %.sroa.4.sroa.8.7..8.val.sroa_idx7.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 16, !dbg !1912
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.sroa.8.7..8.val.sroa_idx7.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.i.sroa.7.i.i, i64 56, i1 false), !dbg !1912, !noalias !1248
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.7.i.i), !dbg !1915
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i), !dbg !1915
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i), !dbg !1915
  br label %.loopexit, !dbg !1916

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3L_B2a_EENCINvMNtB2e_10projectionNtB4G_23AmortizedColumnSelector15select_multipleBZ_INtNtCsgZ49sUHp3tW_5alloc3vec3VecBZ_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5Q_9into_iter8IntoIterBZ_EB4A_EIB1P_NtNtBa_7convert10InfallibleB31_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8g_12try_for_each4callB2a_B4p_NcNtB4p_5Break0E0B4p_E0E0CsbTP5kh6vDpX_14polars_testing.exit: ; preds = %_RNCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB5_23AmortizedColumnSelector15select_multipleNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1D_EE0CsbTP5kh6vDpX_14polars_testing.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.i.i, i64 7, i1 false), !dbg !1922, !noalias !1923
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.i.sroa.7.i.i, i64 56, i1 false), !dbg !1922, !noalias !1923
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.80..sroa_idx.i, i64 40, i1 false), !dbg !1924, !noalias !1923
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.13, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.8.i.i, i64 24, i1 false), !dbg !1924, !noalias !1923
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.7.i.i), !dbg !1915
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i), !dbg !1915
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i), !dbg !1915
  %.not.i = icmp eq i8 %.sroa.02.0.i, 33, !dbg !1926
  br i1 %.not.i, label %bb.cq, label %.loopexit, !dbg !1916

._crit_edge:                                      ; preds = %bb.cq, %bb.a
  store i8 33, ptr %0, align 16, !dbg !1927, !alias.scope !1930
  br label %bb.cp, !dbg !1933

bb.cp:                                            ; preds = %._crit_edge, %.loopexit
  ret void, !dbg !1934

.loopexit:                                        ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3L_B2a_EENCINvMNtB2e_10projectionNtB4G_23AmortizedColumnSelector15select_multipleBZ_INtNtCsgZ49sUHp3tW_5alloc3vec3VecBZ_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5Q_9into_iter8IntoIterBZ_EB4A_EIB1P_NtNtBa_7convert10InfallibleB31_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8g_12try_for_each4callB2a_B4p_NcNtB4p_5Break0E0B4p_E0E0CsbTP5kh6vDpX_14polars_testing.exit, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3L_B2a_EENCINvMNtB2e_10projectionNtB4G_23AmortizedColumnSelector15select_multipleBZ_INtNtCsgZ49sUHp3tW_5alloc3vec3VecBZ_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5Q_9into_iter8IntoIterBZ_EB4A_EIB1P_NtNtBa_7convert10InfallibleB31_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8g_12try_for_each4callB2a_B4p_NcNtB4p_5Break0E0B4p_E0E0CsbTP5kh6vDpX_14polars_testing.exit.thread
  %.sroa.8.123 = phi ptr [ undef, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3L_B2a_EENCINvMNtB2e_10projectionNtB4G_23AmortizedColumnSelector15select_multipleBZ_INtNtCsgZ49sUHp3tW_5alloc3vec3VecBZ_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5Q_9into_iter8IntoIterBZ_EB4A_EIB1P_NtNtBa_7convert10InfallibleB31_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8g_12try_for_each4callB2a_B4p_NcNtB4p_5Break0E0B4p_E0E0CsbTP5kh6vDpX_14polars_testing.exit.thread ], [ %.sroa.73.0.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3L_B2a_EENCINvMNtB2e_10projectionNtB4G_23AmortizedColumnSelector15select_multipleBZ_INtNtCsgZ49sUHp3tW_5alloc3vec3VecBZ_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5Q_9into_iter8IntoIterBZ_EB4A_EIB1P_NtNtBa_7convert10InfallibleB31_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8g_12try_for_each4callB2a_B4p_NcNtB4p_5Break0E0B4p_E0E0CsbTP5kh6vDpX_14polars_testing.exit ]
  %.sroa.9.121 = phi ptr [ undef, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3L_B2a_EENCINvMNtB2e_10projectionNtB4G_23AmortizedColumnSelector15select_multipleBZ_INtNtCsgZ49sUHp3tW_5alloc3vec3VecBZ_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5Q_9into_iter8IntoIterBZ_EB4A_EIB1P_NtNtBa_7convert10InfallibleB31_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8g_12try_for_each4callB2a_B4p_NcNtB4p_5Break0E0B4p_E0E0CsbTP5kh6vDpX_14polars_testing.exit.thread ], [ %.sroa.9.0.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3L_B2a_EENCINvMNtB2e_10projectionNtB4G_23AmortizedColumnSelector15select_multipleBZ_INtNtCsgZ49sUHp3tW_5alloc3vec3VecBZ_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5Q_9into_iter8IntoIterBZ_EB4A_EIB1P_NtNtBa_7convert10InfallibleB31_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8g_12try_for_each4callB2a_B4p_NcNtB4p_5Break0E0B4p_E0E0CsbTP5kh6vDpX_14polars_testing.exit ]
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !1935
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6, i64 7, i1 false), !dbg !1942
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !1935
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.10, i64 56, i1 false), !dbg !1942
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !1935
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.69.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.11, i64 40, i1 false), !dbg !1942
  %.sroa.811.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !1935
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.811.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.13, i64 24, i1 false), !dbg !1942
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !1944
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10), !dbg !1944
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11), !dbg !1944
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13), !dbg !1944
  store i8 %.sroa.02.0.i, ptr %0, align 16, !dbg !1935, !alias.scope !1945
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1935
  store ptr %.sroa.8.123, ptr %.sroa.3.0..sroa_idx, align 8, !dbg !1935, !alias.scope !1945
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1935
  store ptr %.sroa.9.121, ptr %.sroa.4.0..sroa_idx, align 16, !dbg !1935, !alias.scope !1945
  %.sroa.7.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !1935
  store i64 %.sroa.12.0.i, ptr %.sroa.7.0..sroa_idx10, align 8, !dbg !1935, !alias.scope !1945
  br label %bb.cp, !dbg !1949

bb.cq:                                            ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3L_B2a_EENCINvMNtB2e_10projectionNtB4G_23AmortizedColumnSelector15select_multipleBZ_INtNtCsgZ49sUHp3tW_5alloc3vec3VecBZ_EE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB5Q_9into_iter8IntoIterBZ_EB4A_EIB1P_NtNtBa_7convert10InfallibleB31_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8g_12try_for_each4callB2a_B4p_NcNtB4p_5Break0E0B4p_E0E0CsbTP5kh6vDpX_14polars_testing.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !1944
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10), !dbg !1944
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11), !dbg !1944
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13), !dbg !1944
  %i.eq = load ptr, ptr %i.m, align 8, !dbg !1228, !nonnull !12, !noundef !12
  %.not = icmp eq ptr %i.ab, %i.eq, !dbg !1230
  br i1 %.not, label %._crit_edge, label %bb.b, !dbg !1238
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1950 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1952
  %.val = load ptr, ptr %i.c, align 8, !dbg !1952, !nonnull !12, !noundef !12 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !1952
  %.val1 = load ptr, ptr %i.d, align 8, !dbg !1952, !nonnull !12, !noundef !12 ; 2 uses
  %i.e = ptrtoint ptr %.val1 to i64, !dbg !1954
  %i.f = ptrtoint ptr %.val to i64, !dbg !1954
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !1954
  %i.h = udiv exact i64 %i.g, 24, !dbg !1954      ; 3 uses
  %i.i = icmp eq ptr %.val1, %.val, !dbg !1982
  br i1 %i.i, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit, label %.lr.ph.i, !dbg !1982

.body:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit8.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1985
  %i.j = load ptr, ptr %0, align 8, !dbg !1993, !nonnull !12, !noundef !12
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1994
  %i.l = load i64, ptr %i.k, align 8, !dbg !1994, !noundef !12
  store i64 %i.l, ptr %i.b, align 8, !dbg !1995
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !1995
  store ptr %i.j, ptr %i.m, align 8, !dbg !1995
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.g unwind label %bb.f, !dbg !2003

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit.i
  %.sroa.0.09.i = phi i64 [ %i.o, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.09.i, !dbg !1982 ; 2 uses
  %i.o = add nuw i64 %.sroa.0.09.i, 1, !dbg !1982 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 23, !dbg !2006
  %i.q = load i8, ptr %i.p, align 1, !dbg !2006, !range !1173, !alias.scope !2013, !noundef !12
  %i.r = icmp eq i8 %i.q, -40, !dbg !2024
  br i1 %i.r, label %bb.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit.i, !dbg !2024, !prof !1184

bb.b:                                             ; preds = %.lr.ph.i
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit.i unwind label %bb.c, !dbg !2025

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.s = icmp eq i64 %i.o, %i.h, !dbg !1982
  br i1 %i.s, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit, label %.lr.ph.i, !dbg !1982

bb.c:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = icmp eq i64 %i.o, %i.h, !dbg !1982
  br i1 %i.u, label %.body, label %.lr.ph12.i, !dbg !1982

.lr.ph12.i:                                       ; preds = %bb.c, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.w, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit8.i ], [ %i.o, %bb.c ] ; 2 uses
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.110.i, !dbg !1982 ; 2 uses
  %i.w = add i64 %.sroa.0.110.i, 1, !dbg !1982    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 23, !dbg !2026
  %i.y = load i8, ptr %i.x, align 1, !dbg !2026, !range !1173, !alias.scope !2033, !noundef !12
  %i.z = icmp eq i8 %i.y, -40, !dbg !2042
  br i1 %i.z, label %bb.d, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit8.i, !dbg !2042, !prof !1184

bb.d:                                             ; preds = %.lr.ph12.i
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit8.i unwind label %bb.e, !dbg !2043

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit8.i: ; preds = %bb.d, %.lr.ph12.i
  %i.aa = icmp eq i64 %i.w, %i.h, !dbg !1982
  br i1 %i.aa, label %.body, label %.lr.ph12.i, !dbg !1982

bb.e:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #15, !dbg !1982
  unreachable, !dbg !1982

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeSNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsbTP5kh6vDpX_14polars_testing.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2044
  %i.ac = load ptr, ptr %0, align 8, !dbg !2047, !nonnull !12, !noundef !12
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2048
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !2048, !noundef !12
  store i64 %i.ae, ptr %i.a, align 8, !dbg !2049
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !2049
  store ptr %i.ac, ptr %i.af, align 8, !dbg !2049
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !dbg !2051
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2053
  ret void, !dbg !2054

bb.f:                                             ; preds = %.body
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #15, !dbg !2055
  unreachable, !dbg !2055

bb.g:                                             ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !2056
  resume { ptr, i32 } %i.t, !dbg !2055
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2057 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !2058
  %i.b = load ptr, ptr %0, align 8, !dbg !2064, !nonnull !12, !noundef !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !2065
  %i.d = load i64, ptr %i.c, align 8, !dbg !2065, !noundef !12
  store i64 %i.d, ptr %i.a, align 8, !dbg !2066
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !2066
  store ptr %i.b, ptr %i.e, align 8, !dbg !2066
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsbTP5kh6vDpX_14polars_testing(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !dbg !2071
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !2074
  ret void, !dbg !2075
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !2076 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 4 uses
  %i.b = alloca [48 x i8], align 16               ; 4 uses
  %i.c = alloca [48 x i8], align 16               ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = load i8, ptr %1, align 16, !dbg !2080, !range !725, !noundef !12
  switch i8 %i.e, label %default.unreachable29 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.o
    i8 14, label %bb.p
    i8 15, label %bb.q
    i8 16, label %bb.r
    i8 17, label %bb.s
    i8 18, label %bb.t
    i8 19, label %bb.u
    i8 20, label %bb.v
    i8 21, label %bb.w
    i8 22, label %bb.x
    i8 23, label %bb.z
    i8 24, label %bb.ab
    i8 25, label %bb.ac
    i8 26, label %bb.ad
    i8 27, label %bb.ae
    i8 28, label %bb.af
    i8 29, label %bb.ag
    i8 30, label %bb.ai
  ], !dbg !2080

default.unreachable29:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 16, !dbg !2080
  br label %bb.aj, !dbg !2080

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %0, align 16, !dbg !2080
  br label %bb.aj, !dbg !2080

bb.d:                                             ; preds = %bb.a
  store i8 2, ptr %0, align 16, !dbg !2080
  br label %bb.aj, !dbg !2080

bb.e:                                             ; preds = %bb.a
  store i8 3, ptr %0, align 16, !dbg !2080
  br label %bb.aj, !dbg !2080

bb.f:                                             ; preds = %bb.a
  store i8 4, ptr %0, align 16, !dbg !2080
  br label %bb.aj, !dbg !2080

bb.g:                                             ; preds = %bb.a
  store i8 5, ptr %0, align 16, !dbg !2080
  br label %bb.aj, !dbg !2080

bb.h:                                             ; preds = %bb.a
  store i8 6, ptr %0, align 16, !dbg !2080
  br label %bb.aj, !dbg !2080

bb.i:                                             ; preds = %bb.a
  store i8 7, ptr %0, align 16, !dbg !2080
  br label %bb.aj, !dbg !2080
end_hunk_1
