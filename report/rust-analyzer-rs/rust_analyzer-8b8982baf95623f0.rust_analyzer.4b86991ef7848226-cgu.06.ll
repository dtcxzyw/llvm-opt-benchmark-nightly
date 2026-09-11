Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/rust_analyzer-8b8982baf95623f0.rust_analyzer.4b86991ef7848226-cgu.06?download=true
inline.NumInlined: 5464
inline.NumDeleted: 2791
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCs8yjYO7b73r2_10serde_json5error5ErrorEECs6u1mgJOKDyY_13rust_analyzer:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45
  unreachable

bb.g:                                             ; preds = %.body
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCs8yjYO7b73r2_10serde_json5value5ValueEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load i64, ptr %0, align 8, !alias.scope !6395 ; 2 uses
  %i.b = icmp eq i64 %.val2.i.i, 0
  br i1 %i.b, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i = load ptr, ptr %i.c, align 8, !alias.scope !6396, !nonnull !7, !noundef !7
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !6397
  br label %.body

bb.d:                                             ; preds = %bb.a
  %.val.i.i = load i64, ptr %0, align 8, !alias.scope !6395 ; 2 uses
  %i.d = icmp eq i64 %.val.i.i, 0
  br i1 %i.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.e, align 8, !alias.scope !6396, !nonnull !7, !noundef !7
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !6398
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit

.body:                                            ; preds = %bb.b, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yjYO7b73r2_10serde_json5value5ValueECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(72) %i.f) #44
          to label %bb.g unwind label %bb.f

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.e, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yjYO7b73r2_10serde_json5value5ValueECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(72) %i.g)
  ret void

bb.f:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45
  unreachable

bb.g:                                             ; preds = %.body
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load i64, ptr %0, align 8, !alias.scope !6409 ; 2 uses
  %i.b = icmp eq i64 %.val2.i.i, 0
  br i1 %i.b, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i = load ptr, ptr %i.c, align 8, !alias.scope !6410, !nonnull !7, !noundef !7
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !6411
  br label %.body

bb.d:                                             ; preds = %bb.a
  %.val.i.i = load i64, ptr %0, align 8, !alias.scope !6409 ; 2 uses
  %i.d = icmp eq i64 %.val.i.i, 0
  br i1 %i.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.e, align 8, !alias.scope !6410, !nonnull !7, !noundef !7
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !6412
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit

.body:                                            ; preds = %bb.b, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.f) #44
          to label %bb.g unwind label %bb.f

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.e, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.g)
  ret void

bb.f:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45
  unreachable

bb.g:                                             ; preds = %.body
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtNtCsjQbM3MYDIrM_10serde_core7private7content7ContentBC_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjQbM3MYDIrM_10serde_core7private7content7ContentECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(32) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjQbM3MYDIrM_10serde_core7private7content7ContentECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b) #44
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsjQbM3MYDIrM_10serde_core7private7content7ContentECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCshzWfHUSfYae_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir16TypeOrConstParamENCNCINvNtNtB2I_11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE00EINtNtB1d_6option6OptionNtNtB1d_7convert10InfallibleEENtB2I_9TypeParamECs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !7
  %i.e = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !noundef !7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6424)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6423
  store ptr %i.g, ptr %i.b, align 8, !noalias !6425
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6425
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !6425, !nonnull !7, !noundef !7
  invoke void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir16TypeOrConstParamENCNCINvNtNtB1N_11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE00ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtB1N_9TypeParamENCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6option6OptionNtNtBc_7convert10InfallibleEEB3S_8try_foldB4z_NCINvNtB12_16in_place_collect24write_in_place_with_dropB5a_E0INtNtBc_6result6ResultB4z_zEE0INtNtNtBc_3ops12control_flow11ControlFlowB82_B4z_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull dereferenceable(1) %i.i)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir16TypeOrConstParamENCNCINvNtNtB2j_11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE00EINtNtB4_6option6OptionNtNtB4_7convert10InfallibleEEECs6u1mgJOKDyY_13rust_analyzer.exit15 unwind label %bb.c

bb.b:                                             ; preds = %bb.c
  %.val11 = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7
  %i.j = shl nuw i64 %.val12, 4
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val11, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 4) #42, !noalias !6426
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir16TypeOrConstParamENCNCINvNtNtB2j_11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE00EINtNtB4_6option6OptionNtNtB4_7convert10InfallibleEEECs6u1mgJOKDyY_13rust_analyzer.exit

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %.val12 = load i64, ptr %i.c, align 8, !alias.scope !6427, !noundef !7 ; 2 uses
  %i.l = icmp eq i64 %.val12, 0
  br i1 %i.l, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir16TypeOrConstParamENCNCINvNtNtB2j_11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE00EINtNtB4_6option6OptionNtNtB4_7convert10InfallibleEEECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir16TypeOrConstParamENCNCINvNtNtB2j_11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE00EINtNtB4_6option6OptionNtNtB4_7convert10InfallibleEEECs6u1mgJOKDyY_13rust_analyzer.exit15: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !noalias !6425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6423
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.e to i64
  %i.q = sub nuw i64 %i.o, %i.p
  %i.r = lshr exact i64 %i.q, 4
  store i64 %i.d, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.r, ptr %i.t, align 8
  ret void

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir16TypeOrConstParamENCNCINvNtNtB2j_11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE00EINtNtB4_6option6OptionNtNtB4_7convert10InfallibleEEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCshzWfHUSfYae_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5ParamENCNCINvNtNtB2I_11term_search7tactics11impl_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs4_0s_0EINtNtB1d_6option6OptionNtNtB1d_7convert10InfallibleEEINtB4_3VecNtNtB3g_4expr4ExprEECs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !7 ; 3 uses
  %i.f = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !noundef !7
  %i.i = mul i64 %i.e, 56                         ; 6 uses
  %i.j = udiv i64 %i.i, 24                        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6439)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6438
  store ptr %i.h, ptr %i.b, align 8, !noalias !6440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6440
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !6440, !nonnull !7, !noundef !7
  invoke void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5ParamENCNCINvNtNtB1N_11term_search7tactics11impl_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs4_0s_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropINtB12_3VecNtNtB2l_4expr4ExprEENCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6option6OptionNtNtBc_7convert10InfallibleEEB3J_8try_foldB4q_NCINvNtB12_16in_place_collect24write_in_place_with_dropB51_E0INtNtBc_6result6ResultB4q_zEE0INtNtNtBc_3ops12control_flow11ControlFlowB87_B4q_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.f, ptr noundef nonnull %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull dereferenceable(1) %i.l)
          to label %bb.f unwind label %bb.d

bb.b:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.o, %bb.d ]
  %.val12 = load i64, ptr %i.d, align 8, !alias.scope !31, !noundef !7 ; 2 uses
  %i.m = icmp eq i64 %.val12, 0
  br i1 %i.m, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5ParamENCNCINvNtNtB2j_11term_search7tactics11impl_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs4_0s_0EINtNtB4_6option6OptionNtNtB4_7convert10InfallibleEEECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val11 = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7
  %i.n = mul nuw i64 %.val12, 56
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val11, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !6441
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5ParamENCNCINvNtNtB2j_11term_search7tactics11impl_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs4_0s_0EINtNtB4_6option6OptionNtNtB4_7convert10InfallibleEEECs6u1mgJOKDyY_13rust_analyzer.exit

bb.d:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.e:                                             ; preds = %bb.k
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtCs8Xq8PKFYOms_3hir5ParamINtBG_3VecNtNtNtB1N_11term_search4expr4ExprEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #44
          to label %bb.b unwind label %bb.m

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !noalias !6440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6438
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.f to i64
  %i.u = sub nuw i64 %i.s, %i.t
  %i.v = udiv exact i64 %i.u, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.v, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.e, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.d, align 8, !alias.scope !6442
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !6442
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8, !alias.scope !6442
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8, !alias.scope !6442
  %.not.i = icmp ne i64 %i.e, 0
  %i.z = mul nuw i64 %i.j, 24                     ; 4 uses
  %i.aa = icmp ne i64 %i.i, %i.z
  %or.cond = select i1 %.not.i, i1 %i.aa, i1 false
  br i1 %or.cond, label %bb.h, label %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtCs8Xq8PKFYOms_3hir5ParamINtB4_3VecNtNtNtB13_11term_search4expr4ExprEECs6u1mgJOKDyY_13rust_analyzer.exit.thread

_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtCs8Xq8PKFYOms_3hir5ParamINtB4_3VecNtNtNtB13_11term_search4expr4ExprEECs6u1mgJOKDyY_13rust_analyzer.exit.thread: ; preds = %bb.i, %bb.f, %bb.j
  %.sroa.03.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.i ], [ %i.ah, %bb.j ], [ %i.f, %bb.f ]
  store i64 %i.j, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.v, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.val10 = load i64, ptr %i.d, align 8, !alias.scope !31, !noundef !7 ; 2 uses
  %i.ad = icmp eq i64 %.val10, 0
  br i1 %i.ad, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5ParamENCNCINvNtNtB2j_11term_search7tactics11impl_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs4_0s_0EINtNtB4_6option6OptionNtNtB4_7convert10InfallibleEEECs6u1mgJOKDyY_13rust_analyzer.exit13, label %bb.g

bb.g:                                             ; preds = %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtCs8Xq8PKFYOms_3hir5ParamINtB4_3VecNtNtNtB13_11term_search4expr4ExprEECs6u1mgJOKDyY_13rust_analyzer.exit.thread
  %.val = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7
  %i.ae = mul nuw i64 %.val10, 56
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !6443
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5ParamENCNCINvNtNtB2j_11term_search7tactics11impl_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs4_0s_0EINtNtB4_6option6OptionNtNtB4_7convert10InfallibleEEECs6u1mgJOKDyY_13rust_analyzer.exit13

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5ParamENCNCINvNtNtB2j_11term_search7tactics11impl_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs4_0s_0EINtNtB4_6option6OptionNtNtB4_7convert10InfallibleEEECs6u1mgJOKDyY_13rust_analyzer.exit13: ; preds = %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtCs8Xq8PKFYOms_3hir5ParamINtB4_3VecNtNtNtB13_11term_search4expr4ExprEECs6u1mgJOKDyY_13rust_analyzer.exit.thread, %bb.g
  ret void

bb.h:                                             ; preds = %bb.f
  %i.af = icmp ult i64 %i.i, 24
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.i, i64 noundef 8) #42
  br label %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtCs8Xq8PKFYOms_3hir5ParamINtB4_3VecNtNtNtB13_11term_search4expr4ExprEECs6u1mgJOKDyY_13rust_analyzer.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.ag = icmp ule i64 %i.z, %i.i
  call void @llvm.assume(i1 %i.ag)
  %i.ah = call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.i, i64 noundef 8, i64 noundef %i.z) #42 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.k, label %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtCs8Xq8PKFYOms_3hir5ParamINtB4_3VecNtNtNtB13_11term_search4expr4ExprEECs6u1mgJOKDyY_13rust_analyzer.exit.thread, !prof !32

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.z) #43
          to label %bb.l unwind label %bb.e

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5ParamENCNCINvNtNtB2j_11term_search7tactics11impl_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs4_0s_0EINtNtB4_6option6OptionNtNtB4_7convert10InfallibleEEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCshzWfHUSfYae_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5ParamENCNCINvNtNtB2I_11term_search7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs5_00EINtNtB1d_6option6OptionNtNtB1d_7convert10InfallibleEEINtB4_3VecNtNtB3g_4expr4ExprEECs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !7 ; 3 uses
  %i.f = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !noundef !7
  %i.i = mul i64 %i.e, 56                         ; 6 uses
  %i.j = udiv i64 %i.i, 24                        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6455)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6454
  store ptr %i.h, ptr %i.b, align 8, !noalias !6456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6456
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !6456, !nonnull !7, !noundef !7
  invoke void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5ParamENCNCINvNtNtB1N_11term_search7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs5_00ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropINtB12_3VecNtNtB2l_4expr4ExprEENCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6option6OptionNtNtBc_7convert10InfallibleEEB3O_8try_foldB4v_NCINvNtB12_16in_place_collect24write_in_place_with_dropB56_E0INtNtBc_6result6ResultB4v_zEE0INtNtNtBc_3ops12control_flow11ControlFlowB8c_B4v_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.f, ptr noundef nonnull %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull dereferenceable(1) %i.l)
          to label %bb.f unwind label %bb.d

bb.b:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.o, %bb.d ]
  %.val12 = load i64, ptr %i.d, align 8, !alias.scope !31, !noundef !7 ; 2 uses
  %i.m = icmp eq i64 %.val12, 0
  br i1 %i.m, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5ParamENCNCINvNtNtB2j_11term_search7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs5_00EINtNtB4_6option6OptionNtNtB4_7convert10InfallibleEEECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val11 = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7
  %i.n = mul nuw i64 %.val12, 56
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val11, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !6457
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5ParamENCNCINvNtNtB2j_11term_search7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs5_00EINtNtB4_6option6OptionNtNtB4_7convert10InfallibleEEECs6u1mgJOKDyY_13rust_analyzer.exit

bb.d:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.e:                                             ; preds = %bb.k
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtCs8Xq8PKFYOms_3hir5ParamINtBG_3VecNtNtNtB1N_11term_search4expr4ExprEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #44
          to label %bb.b unwind label %bb.m

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !noalias !6456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6454
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.f to i64
  %i.u = sub nuw i64 %i.s, %i.t
  %i.v = udiv exact i64 %i.u, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.v, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.e, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.d, align 8, !alias.scope !6458
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !6458
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8, !alias.scope !6458
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8, !alias.scope !6458
  %.not.i = icmp ne i64 %i.e, 0
  %i.z = mul nuw i64 %i.j, 24                     ; 4 uses
  %i.aa = icmp ne i64 %i.i, %i.z
  %or.cond = select i1 %.not.i, i1 %i.aa, i1 false
  br i1 %or.cond, label %bb.h, label %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtCs8Xq8PKFYOms_3hir5ParamINtB4_3VecNtNtNtB13_11term_search4expr4ExprEECs6u1mgJOKDyY_13rust_analyzer.exit.thread

_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtCs8Xq8PKFYOms_3hir5ParamINtB4_3VecNtNtNtB13_11term_search4expr4ExprEECs6u1mgJOKDyY_13rust_analyzer.exit.thread: ; preds = %bb.i, %bb.f, %bb.j
  %.sroa.03.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.i ], [ %i.ah, %bb.j ], [ %i.f, %bb.f ]
  store i64 %i.j, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.v, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.val10 = load i64, ptr %i.d, align 8, !alias.scope !31, !noundef !7 ; 2 uses
  %i.ad = icmp eq i64 %.val10, 0
  br i1 %i.ad, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5ParamENCNCINvNtNtB2j_11term_search7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs5_00EINtNtB4_6option6OptionNtNtB4_7convert10InfallibleEEECs6u1mgJOKDyY_13rust_analyzer.exit13, label %bb.g

bb.g:                                             ; preds = %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtCs8Xq8PKFYOms_3hir5ParamINtB4_3VecNtNtNtB13_11term_search4expr4ExprEECs6u1mgJOKDyY_13rust_analyzer.exit.thread
  %.val = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7
  %i.ae = mul nuw i64 %.val10, 56
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !6459
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5ParamENCNCINvNtNtB2j_11term_search7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs5_00EINtNtB4_6option6OptionNtNtB4_7convert10InfallibleEEECs6u1mgJOKDyY_13rust_analyzer.exit13

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5ParamENCNCINvNtNtB2j_11term_search7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs5_00EINtNtB4_6option6OptionNtNtB4_7convert10InfallibleEEECs6u1mgJOKDyY_13rust_analyzer.exit13: ; preds = %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtCs8Xq8PKFYOms_3hir5ParamINtB4_3VecNtNtNtB13_11term_search4expr4ExprEECs6u1mgJOKDyY_13rust_analyzer.exit.thread, %bb.g
  ret void

bb.h:                                             ; preds = %bb.f
  %i.af = icmp ult i64 %i.i, 24
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.i, i64 noundef 8) #42
  br label %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtCs8Xq8PKFYOms_3hir5ParamINtB4_3VecNtNtNtB13_11term_search4expr4ExprEECs6u1mgJOKDyY_13rust_analyzer.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.ag = icmp ule i64 %i.z, %i.i
  call void @llvm.assume(i1 %i.ag)
  %i.ah = call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.i, i64 noundef 8, i64 noundef %i.z) #42 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.k, label %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtCs8Xq8PKFYOms_3hir5ParamINtB4_3VecNtNtNtB13_11term_search4expr4ExprEECs6u1mgJOKDyY_13rust_analyzer.exit.thread, !prof !32

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.z) #43
          to label %bb.l unwind label %bb.e

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5ParamENCNCINvNtNtB2j_11term_search7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs5_00EINtNtB4_6option6OptionNtNtB4_7convert10InfallibleEEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCshzWfHUSfYae_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5ParamENCNCNCINvNtNtB2I_11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE0s2_0s_0EINtNtB1d_6option6OptionNtNtB1d_7convert10InfallibleEEINtB4_3VecNtNtB3i_4expr4ExprEECs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !7 ; 3 uses
  %i.f = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !noundef !7
  %i.i = mul i64 %i.e, 56                         ; 6 uses
  %i.j = udiv i64 %i.i, 24                        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6470)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6471)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6470
  store ptr %i.h, ptr %i.b, align 8, !noalias !6472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6472
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !6472, !nonnull !7, !noundef !7
  invoke void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5ParamENCNCNCINvNtNtB1N_11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE0s2_0s_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropINtB12_3VecNtNtB2n_4expr4ExprEENCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6option6OptionNtNtBc_7convert10InfallibleEEB3O_8try_foldB4v_NCINvNtB12_16in_place_collect24write_in_place_with_dropB56_E0INtNtBc_6result6ResultB4v_zEE0INtNtNtBc_3ops12control_flow11ControlFlowB8c_B4v_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.f, ptr noundef nonnull %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull dereferenceable(1) %i.l)
          to label %bb.f unwind label %bb.d

bb.b:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.o, %bb.d ]
  %.val12 = load i64, ptr %i.d, align 8, !alias.scope !31, !noundef !7 ; 2 uses
  %i.m = icmp eq i64 %.val12, 0
  br i1 %i.m, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5ParamENCNCNCINvNtNtB2j_11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE0s2_0s_0EINtNtB4_6option6OptionNtNtB4_7convert10InfallibleEEECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val11 = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7
  %i.n = mul nuw i64 %.val12, 56
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val11, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !6473
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5ParamENCNCNCINvNtNtB2j_11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE0s2_0s_0EINtNtB4_6option6OptionNtNtB4_7convert10InfallibleEEECs6u1mgJOKDyY_13rust_analyzer.exit

bb.d:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.e:                                             ; preds = %bb.k
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtCs8Xq8PKFYOms_3hir5ParamINtBG_3VecNtNtNtB1N_11term_search4expr4ExprEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #44
          to label %bb.b unwind label %bb.m

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !noalias !6472
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6472
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6470
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.f to i64
  %i.u = sub nuw i64 %i.s, %i.t
  %i.v = udiv exact i64 %i.u, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.v, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.e, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.d, align 8, !alias.scope !6474
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !6474
  store ptr inttoptr (i64 8 to ptr), ptr %i.y, align 8, !alias.scope !6474
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8, !alias.scope !6474
  %.not.i = icmp ne i64 %i.e, 0
  %i.z = mul nuw i64 %i.j, 24                     ; 4 uses
  %i.aa = icmp ne i64 %i.i, %i.z
  %or.cond = select i1 %.not.i, i1 %i.aa, i1 false
  br i1 %or.cond, label %bb.h, label %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtCs8Xq8PKFYOms_3hir5ParamINtB4_3VecNtNtNtB13_11term_search4expr4ExprEECs6u1mgJOKDyY_13rust_analyzer.exit.thread

_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtCs8Xq8PKFYOms_3hir5ParamINtB4_3VecNtNtNtB13_11term_search4expr4ExprEECs6u1mgJOKDyY_13rust_analyzer.exit.thread: ; preds = %bb.i, %bb.f, %bb.j
  %.sroa.03.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.i ], [ %i.ah, %bb.j ], [ %i.f, %bb.f ]
  store i64 %i.j, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.v, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.val10 = load i64, ptr %i.d, align 8, !alias.scope !31, !noundef !7 ; 2 uses
  %i.ad = icmp eq i64 %.val10, 0
  br i1 %i.ad, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5ParamENCNCNCINvNtNtB2j_11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE0s2_0s_0EINtNtB4_6option6OptionNtNtB4_7convert10InfallibleEEECs6u1mgJOKDyY_13rust_analyzer.exit13, label %bb.g

bb.g:                                             ; preds = %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtCs8Xq8PKFYOms_3hir5ParamINtB4_3VecNtNtNtB13_11term_search4expr4ExprEECs6u1mgJOKDyY_13rust_analyzer.exit.thread
  %.val = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7
  %i.ae = mul nuw i64 %.val10, 56
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !6475
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5ParamENCNCNCINvNtNtB2j_11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE0s2_0s_0EINtNtB4_6option6OptionNtNtB4_7convert10InfallibleEEECs6u1mgJOKDyY_13rust_analyzer.exit13

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5ParamENCNCNCINvNtNtB2j_11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE0s2_0s_0EINtNtB4_6option6OptionNtNtB4_7convert10InfallibleEEECs6u1mgJOKDyY_13rust_analyzer.exit13: ; preds = %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtCs8Xq8PKFYOms_3hir5ParamINtB4_3VecNtNtNtB13_11term_search4expr4ExprEECs6u1mgJOKDyY_13rust_analyzer.exit.thread, %bb.g
  ret void

bb.h:                                             ; preds = %bb.f
  %i.af = icmp ult i64 %i.i, 24
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.i, i64 noundef 8) #42
  br label %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtCs8Xq8PKFYOms_3hir5ParamINtB4_3VecNtNtNtB13_11term_search4expr4ExprEECs6u1mgJOKDyY_13rust_analyzer.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.ag = icmp ule i64 %i.z, %i.i
  call void @llvm.assume(i1 %i.ag)
  %i.ah = call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.i, i64 noundef 8, i64 noundef %i.z) #42 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.k, label %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtCs8Xq8PKFYOms_3hir5ParamINtB4_3VecNtNtNtB13_11term_search4expr4ExprEECs6u1mgJOKDyY_13rust_analyzer.exit.thread, !prof !32

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.z) #43
          to label %bb.l unwind label %bb.e

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5ParamENCNCNCINvNtNtB2j_11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE0s2_0s_0EINtNtB4_6option6OptionNtNtB4_7convert10InfallibleEEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCshzWfHUSfYae_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterNtNtB6_6string6StringENCINvNtNtCsdcPuHeDsw6v_13project_model12project_json4cfg_11deserializeINtNtNtNtCsaUNMb2qFvZy_5serde7private2de7content19ContentDeserializerNtNtCs8yjYO7b73r2_10serde_json5error5ErrorEE0EINtNtB1d_6result6ResultNtNtB1d_7convert10InfallibleB5h_EENtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomECs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !7 ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !noundef !7
  %i.i = mul i64 %i.e, 24                         ; 5 uses
  %i.j = lshr i64 %i.i, 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6494)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6495)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6494
  store ptr %i.h, ptr %i.b, align 8, !noalias !6496
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6496
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !6496, !nonnull !7, !align !13, !noundef !7
  invoke void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtB14_6string6StringENCINvNtNtCsdcPuHeDsw6v_13project_model12project_json4cfg_11deserializeINtNtNtNtCsaUNMb2qFvZy_5serde7private2de7content19ContentDeserializerNtNtCs8yjYO7b73r2_10serde_json5error5ErrorEE0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomENCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleB4n_EEB57_8try_foldB5O_NCINvNtB12_16in_place_collect24write_in_place_with_dropB6p_E0IB7A_B5O_zEE0INtNtNtBc_3ops12control_flow11ControlFlowB9I_B5O_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.f, ptr noundef nonnull %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.e ], [ %i.m, %bb.c ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtB1A_6string6StringENCINvNtNtCsdcPuHeDsw6v_13project_model12project_json4cfg_11deserializeINtNtNtNtCsaUNMb2qFvZy_5serde7private2de7content19ContentDeserializerNtNtCs8yjYO7b73r2_10serde_json5error5ErrorEE0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleB4T_EEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(40) %1) #44
          to label %common.resume unwind label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !noalias !6496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6494
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.f to i64
  %i.r = sub nuw i64 %i.p, %i.q
  %i.s = lshr exact i64 %i.r, 4                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.s, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.e, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val.i = load ptr, ptr %i.v, align 8, !alias.scope !6497, !nonnull !7, !noundef !7 ; 2 uses
  %.val1.i = load ptr, ptr %i.g, align 8, !alias.scope !6497, !nonnull !7, !noundef !7
  %i.w = ptrtoint ptr %.val1.i to i64
  %i.x = ptrtoint ptr %.val.i to i64
  %i.y = sub nuw i64 %i.w, %i.x
  %i.z = udiv exact i64 %i.y, 24
  store i64 0, ptr %i.d, align 8, !alias.scope !6497
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !6497
  store ptr inttoptr (i64 8 to ptr), ptr %i.v, align 8, !alias.scope !6497
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8, !alias.scope !6497
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 %.val.i, i64 noundef %i.z)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.n
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtBI_6string6StringNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #44
          to label %bb.b unwind label %bb.p

bb.f:                                             ; preds = %bb.d
  %i.ab = and i64 %i.i, 8
  %.not = icmp eq i64 %i.ab, 0
  br i1 %.not, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.l, %bb.m, %bb.f
  %.sroa.03.0 = phi ptr [ %i.f, %bb.f ], [ %i.at, %bb.m ], [ inttoptr (i64 8 to ptr), %bb.l ]
  store i64 %i.j, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.s, ptr %i.ad, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !6498)
  call void @llvm.experimental.noalias.scope.decl(metadata !6499)
  call void @llvm.experimental.noalias.scope.decl(metadata !6500)
  call void @llvm.experimental.noalias.scope.decl(metadata !6501)
  %.val.i.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !6502, !nonnull !7, !noundef !7 ; 2 uses
  %.val1.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !6502, !nonnull !7, !noundef !7
  %i.ae = ptrtoint ptr %.val1.i.i.i.i to i64
  %i.af = ptrtoint ptr %.val.i.i.i.i to i64
  %i.ag = sub nuw i64 %i.ae, %i.af
  %i.ah = udiv exact i64 %i.ag, 24
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 %.val.i.i.i.i, i64 noundef %i.ah)
          to label %bb.i unwind label %bb.g, !noalias !6502

bb.g:                                             ; preds = %.thread
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load i64, ptr %i.d, align 8, !alias.scope !6502, !noundef !7 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = load ptr, ptr %1, align 8, !alias.scope !6502, !nonnull !7, !noundef !7
  %i.am = mul nuw i64 %i.aj, 24
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.al, i64 noundef %i.am, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !6503
  br label %common.resume

bb.i:                                             ; preds = %.thread
  %i.an = load i64, ptr %i.d, align 8, !alias.scope !6502, !noundef !7 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtB1A_6string6StringENCINvNtNtCsdcPuHeDsw6v_13project_model12project_json4cfg_11deserializeINtNtNtNtCsaUNMb2qFvZy_5serde7private2de7content19ContentDeserializerNtNtCs8yjYO7b73r2_10serde_json5error5ErrorEE0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleB4T_EEECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = load ptr, ptr %1, align 8, !alias.scope !6502, !nonnull !7, !noundef !7
  %i.aq = mul nuw i64 %i.an, 24
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ap, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !6504
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtB1A_6string6StringENCINvNtNtCsdcPuHeDsw6v_13project_model12project_json4cfg_11deserializeINtNtNtNtCsaUNMb2qFvZy_5serde7private2de7content19ContentDeserializerNtNtCs8yjYO7b73r2_10serde_json5error5ErrorEE0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleB4T_EEECs6u1mgJOKDyY_13rust_analyzer.exit

common.resume:                                    ; preds = %bb.b, %bb.g, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.ai, %bb.g ], [ %i.ai, %bb.h ], [ %.pn, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtB1A_6string6StringENCINvNtNtCsdcPuHeDsw6v_13project_model12project_json4cfg_11deserializeINtNtNtNtCsaUNMb2qFvZy_5serde7private2de7content19ContentDeserializerNtNtCs8yjYO7b73r2_10serde_json5error5ErrorEE0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleB4T_EEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.i, %bb.j
  ret void

bb.k:                                             ; preds = %bb.f
  %i.ar = and i64 %i.i, -16                       ; 3 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.i, i64 noundef 8) #42
  br label %.thread

bb.m:                                             ; preds = %bb.k
  %i.at = call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.i, i64 noundef 8, i64 noundef %i.ar) #42 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.n, label %.thread, !prof !33

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.ar) #43
          to label %bb.o unwind label %bb.e

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.e, %bb.b
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCshzWfHUSfYae_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterNtNtB6_6string6StringENCINvNtNtCsdcPuHeDsw6v_13project_model12project_json4cfg_11deserializeINtNtNtNtCsaUNMb2qFvZy_5serde7private2de7content22ContentRefDeserializerNtNtCs8yjYO7b73r2_10serde_json5error5ErrorEE0EINtNtB1d_6result6ResultNtNtB1d_7convert10InfallibleB5k_EENtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomECs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !7 ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !noundef !7
  %i.i = mul i64 %i.e, 24                         ; 5 uses
  %i.j = lshr i64 %i.i, 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6524)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6523
  store ptr %i.h, ptr %i.b, align 8, !noalias !6525
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6525
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !6525, !nonnull !7, !align !13, !noundef !7
end_hunk_0
begin_hunk_1_@_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCshzWfHUSfYae_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterNtNtB6_6string6StringENCINvNtNtCsdcPuHeDsw6v_13project_model12project_json4cfg_11deserializeINtNtNtNtCsaUNMb2qFvZy_5serde7private2de7content22ContentRefDeserializerNtNtCs8yjYO7b73r2_10serde_json5error5ErrorEE0EINtNtB1d_6result6ResultNtNtB1d_7convert10InfallibleB5k_EENtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomECs6u1mgJOKDyY_13rust_analyzer:bb.a
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtB1A_6string6StringENCINvNtNtCsdcPuHeDsw6v_13project_model12project_json4cfg_11deserializeINtNtNtNtCsaUNMb2qFvZy_5serde7private2de7content22ContentRefDeserializerNtNtCs8yjYO7b73r2_10serde_json5error5ErrorEE0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleB4W_EEECs6u1mgJOKDyY_13rust_analyzer.exit

common.resume:                                    ; preds = %bb.b, %bb.g, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.ai, %bb.g ], [ %i.ai, %bb.h ], [ %.pn, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtB1A_6string6StringENCINvNtNtCsdcPuHeDsw6v_13project_model12project_json4cfg_11deserializeINtNtNtNtCsaUNMb2qFvZy_5serde7private2de7content22ContentRefDeserializerNtNtCs8yjYO7b73r2_10serde_json5error5ErrorEE0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleB4W_EEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.i, %bb.j
  ret void

bb.k:                                             ; preds = %bb.f
  %i.ar = and i64 %i.i, -16                       ; 3 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.i, i64 noundef 8) #42
  br label %.thread

bb.m:                                             ; preds = %bb.k
  %i.at = call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.i, i64 noundef 8, i64 noundef %i.ar) #42 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.n, label %.thread, !prof !33

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.ar) #43
          to label %bb.o unwind label %bb.e

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.e, %bb.b
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCshzWfHUSfYae_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterNtNtB6_6string6StringENCINvNtNtCsdcPuHeDsw6v_13project_model12project_json4cfg_11deserializeINtNtNtNtCsaUNMb2qFvZy_5serde7private2de7content22ContentRefDeserializerNtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorEE0EINtNtB1d_6result6ResultNtNtB1d_7convert10InfallibleB5k_EENtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomECs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !7 ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !noundef !7
  %i.i = mul i64 %i.e, 24                         ; 5 uses
  %i.j = lshr i64 %i.i, 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6552)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6553)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6552
  store ptr %i.h, ptr %i.b, align 8, !noalias !6554
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6554
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !6554, !nonnull !7, !align !13, !noundef !7
  invoke void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtB14_6string6StringENCINvNtNtCsdcPuHeDsw6v_13project_model12project_json4cfg_11deserializeINtNtNtNtCsaUNMb2qFvZy_5serde7private2de7content22ContentRefDeserializerNtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorEE0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomENCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleB4q_EEB58_8try_foldB5P_NCINvNtB12_16in_place_collect24write_in_place_with_dropB6q_E0IB7B_B5P_zEE0INtNtNtBc_3ops12control_flow11ControlFlowB9J_B5P_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.f, ptr noundef nonnull %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.l)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.e ], [ %i.m, %bb.c ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtB1A_6string6StringENCINvNtNtCsdcPuHeDsw6v_13project_model12project_json4cfg_11deserializeINtNtNtNtCsaUNMb2qFvZy_5serde7private2de7content22ContentRefDeserializerNtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorEE0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleB4W_EEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(40) %1) #44
          to label %common.resume unwind label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !noalias !6554
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6554
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6552
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.f to i64
  %i.r = sub nuw i64 %i.p, %i.q
  %i.s = lshr exact i64 %i.r, 4                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.s, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.e, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val.i = load ptr, ptr %i.v, align 8, !alias.scope !6555, !nonnull !7, !noundef !7 ; 2 uses
  %.val1.i = load ptr, ptr %i.g, align 8, !alias.scope !6555, !nonnull !7, !noundef !7
  %i.w = ptrtoint ptr %.val1.i to i64
  %i.x = ptrtoint ptr %.val.i to i64
  %i.y = sub nuw i64 %i.w, %i.x
  %i.z = udiv exact i64 %i.y, 24
  store i64 0, ptr %i.d, align 8, !alias.scope !6555
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !6555
  store ptr inttoptr (i64 8 to ptr), ptr %i.v, align 8, !alias.scope !6555
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8, !alias.scope !6555
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 %.val.i, i64 noundef %i.z)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.n
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtBI_6string6StringNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #44
          to label %bb.b unwind label %bb.p

bb.f:                                             ; preds = %bb.d
  %i.ab = and i64 %i.i, 8
  %.not = icmp eq i64 %i.ab, 0
  br i1 %.not, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.l, %bb.m, %bb.f
  %.sroa.03.0 = phi ptr [ %i.f, %bb.f ], [ %i.at, %bb.m ], [ inttoptr (i64 8 to ptr), %bb.l ]
  store i64 %i.j, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.s, ptr %i.ad, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !6556)
  call void @llvm.experimental.noalias.scope.decl(metadata !6557)
  call void @llvm.experimental.noalias.scope.decl(metadata !6558)
  call void @llvm.experimental.noalias.scope.decl(metadata !6559)
  %.val.i.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !6560, !nonnull !7, !noundef !7 ; 2 uses
  %.val1.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !6560, !nonnull !7, !noundef !7
  %i.ae = ptrtoint ptr %.val1.i.i.i.i to i64
  %i.af = ptrtoint ptr %.val.i.i.i.i to i64
  %i.ag = sub nuw i64 %i.ae, %i.af
  %i.ah = udiv exact i64 %i.ag, 24
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 %.val.i.i.i.i, i64 noundef %i.ah)
          to label %bb.i unwind label %bb.g, !noalias !6560

bb.g:                                             ; preds = %.thread
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load i64, ptr %i.d, align 8, !alias.scope !6560, !noundef !7 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = load ptr, ptr %1, align 8, !alias.scope !6560, !nonnull !7, !noundef !7
  %i.am = mul nuw i64 %i.aj, 24
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.al, i64 noundef %i.am, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !6561
  br label %common.resume

bb.i:                                             ; preds = %.thread
  %i.an = load i64, ptr %i.d, align 8, !alias.scope !6560, !noundef !7 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtB1A_6string6StringENCINvNtNtCsdcPuHeDsw6v_13project_model12project_json4cfg_11deserializeINtNtNtNtCsaUNMb2qFvZy_5serde7private2de7content22ContentRefDeserializerNtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorEE0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleB4W_EEECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = load ptr, ptr %1, align 8, !alias.scope !6560, !nonnull !7, !noundef !7
  %i.aq = mul nuw i64 %i.an, 24
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ap, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !6562
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtB1A_6string6StringENCINvNtNtCsdcPuHeDsw6v_13project_model12project_json4cfg_11deserializeINtNtNtNtCsaUNMb2qFvZy_5serde7private2de7content22ContentRefDeserializerNtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorEE0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleB4W_EEECs6u1mgJOKDyY_13rust_analyzer.exit

common.resume:                                    ; preds = %bb.b, %bb.g, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.ai, %bb.g ], [ %i.ai, %bb.h ], [ %.pn, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtB1A_6string6StringENCINvNtNtCsdcPuHeDsw6v_13project_model12project_json4cfg_11deserializeINtNtNtNtCsaUNMb2qFvZy_5serde7private2de7content22ContentRefDeserializerNtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorEE0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleB4W_EEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.i, %bb.j
  ret void

bb.k:                                             ; preds = %bb.f
  %i.ar = and i64 %i.i, -16                       ; 3 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.i, i64 noundef 8) #42
  br label %.thread

bb.m:                                             ; preds = %bb.k
  %i.at = call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.i, i64 noundef 8, i64 noundef %i.ar) #42 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.n, label %.thread, !prof !33

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.ar) #43
          to label %bb.o unwind label %bb.e

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.e, %bb.b
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapIB17_INtNtB1b_3map3MapIB17_INtNtB4_9into_iter8IntoIterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures15WorkspaceFolderENCNCNvNtCs6u1mgJOKDyY_13rust_analyzer7session11run_sessions2_00ENvB4j_17patch_path_prefixENCB4f_s_0ENCB4f_s0_0ENtCs9R0CJ7nmiec_5paths10AbsPathBufEB4l_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !7 ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !noundef !7
  %i.h = mul i64 %i.d, 112                        ; 6 uses
  %i.i = udiv i64 %i.h, 24                        ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6572
  store ptr %i.j, ptr %i.a, align 8, !noalias !6572
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %i.k, align 8, !noalias !6572
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.g, ptr %i.l, align 8, !noalias !6572
  %i.m = invoke { ptr, ptr } @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures15WorkspaceFolderENCNCNvNtCs6u1mgJOKDyY_13rust_analyzer7session11run_sessions2_00ENvB3y_17patch_path_prefixENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB1w_13in_place_drop11InPlaceDropNtCs9R0CJ7nmiec_5paths10AbsPathBufENCINvB10_19filter_map_try_foldNtNtCscAsMj0W7j8b_3std4path7PathBufNtCs9p4rgIae0RV_6camino11Utf8PathBufB5B_INtNtBc_6result6ResultB5B_zENCB3u_s_0NCIB6O_B7O_B6c_B5B_B8s_NCB3u_s0_0NCINvNtB1w_16in_place_collect24write_in_place_with_dropB6c_E0E0E0B8s_EB3A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.n, %bb.c ]
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures15WorkspaceFolderENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %1)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapIBC_INtNtBG_3map3MapIBC_INtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures15WorkspaceFolderENCNCNvNtCs6u1mgJOKDyY_13rust_analyzer7session11run_sessions2_00ENvB3S_17patch_path_prefixENCB3O_s_0ENCB3O_s0_0EEB3U_.exit unwind label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6572
  %i.o = extractvalue { ptr, ptr } %i.m, 1
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.e to i64
  %i.r = sub nuw i64 %i.p, %i.q
  %i.s = udiv exact i64 %i.r, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.s, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.u, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6573)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %i.v, align 8, !alias.scope !6573, !nonnull !7, !noundef !7 ; 4 uses
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !6573, !nonnull !7, !noundef !7 ; 2 uses
  %i.w = ptrtoint ptr %.val1.i to i64
  %i.x = ptrtoint ptr %.val.i to i64
  %i.y = sub nuw i64 %i.w, %i.x
  %i.z = udiv exact i64 %i.y, 112                 ; 3 uses
  store i64 0, ptr %i.c, align 8, !alias.scope !6573
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !6573
  store ptr inttoptr (i64 8 to ptr), ptr %i.v, align 8, !alias.scope !6573
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8, !alias.scope !6573
  %i.aa = icmp eq ptr %.val1.i, %.val.i
  br i1 %i.aa, label %_RNvMs0_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures15WorkspaceFolderE32forget_allocation_drop_remainingCs6u1mgJOKDyY_13rust_analyzer.exit, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.ab = icmp eq i64 %i.ad, %i.z
  br i1 %i.ab, label %_RNvMs0_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures15WorkspaceFolderE32forget_allocation_drop_remainingCs6u1mgJOKDyY_13rust_analyzer.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.sroa.0.0.i.i18 = phi i64 [ %i.ad, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [112 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i18
  %i.ad = add nuw nsw i64 %.sroa.0.0.i.i18, 1     ; 4 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures15WorkspaceFolderECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(112) %i.ac)
          to label %bb.e unwind label %bb.g, !noalias !6573

bb.f:                                             ; preds = %.lr.ph20
  %i.ae = add i64 %.sroa.0.1.i.i19, 1             ; 2 uses
  %i.af = icmp eq i64 %i.ae, %i.z
  br i1 %i.af, label %.body, label %.lr.ph20

bb.g:                                             ; preds = %.lr.ph
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = icmp eq i64 %i.ad, %i.z
  br i1 %i.ah, label %.body, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.g, %bb.f
  %.sroa.0.1.i.i19 = phi i64 [ %i.ae, %bb.f ], [ %i.ad, %bb.g ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [112 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i19
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures15WorkspaceFolderECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(112) %i.ai) #44
          to label %bb.f unwind label %bb.h, !noalias !6573

bb.h:                                             ; preds = %.lr.ph20
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45, !noalias !6573
  unreachable

bb.i:                                             ; preds = %bb.m
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.g, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ak, %bb.i ], [ %i.ag, %bb.g ], [ %i.ag, %bb.f ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures15WorkspaceFolderNtCs9R0CJ7nmiec_5paths10AbsPathBufEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #44
          to label %bb.b unwind label %bb.o

_RNvMs0_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures15WorkspaceFolderE32forget_allocation_drop_remainingCs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.e, %bb.d
  %.not.i = icmp ne i64 %i.d, 0
  %i.al = mul nuw i64 %i.i, 24                    ; 4 uses
  %i.am = icmp ne i64 %i.h, %i.al
  %or.cond = select i1 %.not.i, i1 %i.am, i1 false
  br i1 %or.cond, label %bb.j, label %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures15WorkspaceFolderNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit.thread

_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures15WorkspaceFolderNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit.thread: ; preds = %bb.k, %_RNvMs0_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures15WorkspaceFolderE32forget_allocation_drop_remainingCs6u1mgJOKDyY_13rust_analyzer.exit, %bb.l
  %.sroa.03.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.k ], [ %i.ar, %bb.l ], [ %i.e, %_RNvMs0_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures15WorkspaceFolderE32forget_allocation_drop_remainingCs6u1mgJOKDyY_13rust_analyzer.exit ]
  store i64 %i.i, ptr %0, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.s, ptr %i.ao, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  tail call void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures15WorkspaceFolderENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %1)
  ret void

bb.j:                                             ; preds = %_RNvMs0_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures15WorkspaceFolderE32forget_allocation_drop_remainingCs6u1mgJOKDyY_13rust_analyzer.exit
  %i.ap = icmp ult i64 %i.h, 24
  br i1 %i.ap, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.h, i64 noundef 8) #42
  br label %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures15WorkspaceFolderNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit.thread

bb.l:                                             ; preds = %bb.j
  %i.aq = icmp ule i64 %i.al, %i.h
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.h, i64 noundef 8, i64 noundef %i.al) #42 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.m, label %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures15WorkspaceFolderNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit.thread, !prof !32

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.al) #43
          to label %bb.n unwind label %bb.i

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.b, %.body
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapIBC_INtNtBG_3map3MapIBC_INtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures15WorkspaceFolderENCNCNvNtCs6u1mgJOKDyY_13rust_analyzer7session11run_sessions2_00ENvB3S_17patch_path_prefixENCB3O_s_0ENCB3O_s0_0EEB3U_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapIB17_INtNtB4_9into_iter8IntoIterTNtNtB6_6string6StringNtNtCs8yjYO7b73r2_10serde_json5error5ErrorEENCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB3C_6Config22apply_change_with_sinks0_0ENvMs4_NtCs50pZefIA5Ye_8triomphe3arcINtB50_3ArcNtB3C_16ConfigErrorInnerE3newEB5t_EB3E_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !7 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !noundef !7
  %i.g = shl nuw i64 %i.c, 2
  %i.h = invoke { ptr, ptr } @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtB18_6string6StringNtNtCs8yjYO7b73r2_10serde_json5error5ErrorEENCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB32_6Config22apply_change_with_sinks0_0ENvMs4_NtCs50pZefIA5Ye_8triomphe3arcINtB4q_3ArcNtB32_16ConfigErrorInnerE3newENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB16_13in_place_drop11InPlaceDropB4T_ENCINvNtB16_16in_place_collect24write_in_place_with_dropB4T_E0INtNtBc_6result6ResultB6f_zEEB34_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.v, %bb.e ], [ %i.i, %bb.c ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapIBC_INtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtB1k_6string6StringNtNtCs8yjYO7b73r2_10serde_json5error5ErrorEENCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB3e_6Config22apply_change_with_sinks0_0ENvMs4_NtCs50pZefIA5Ye_8triomphe3arcINtB4C_3ArcNtB3e_16ConfigErrorInnerE3newEEB3g_(ptr noalias nofree noundef align 8 dereferenceable(32) %1) #44
          to label %common.resume unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.d to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val.i = load ptr, ptr %i.q, align 8, !alias.scope !6588, !nonnull !7, !noundef !7 ; 2 uses
  %.val1.i = load ptr, ptr %i.e, align 8, !alias.scope !6588, !nonnull !7, !noundef !7
  %i.r = ptrtoint ptr %.val1.i to i64
  %i.s = ptrtoint ptr %.val.i to i64
  %i.t = sub nuw i64 %i.r, %i.s
  %i.u = lshr exact i64 %i.t, 5
  store i64 0, ptr %i.b, align 8, !alias.scope !6588
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !6588
  store ptr inttoptr (i64 8 to ptr), ptr %i.q, align 8, !alias.scope !6588
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !alias.scope !6588
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCs8yjYO7b73r2_10serde_json5error5ErrorEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 %.val.i, i64 noundef %i.u)
          to label %_RNvMs0_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringNtNtCs8yjYO7b73r2_10serde_json5error5ErrorEE32forget_allocation_drop_remainingCs6u1mgJOKDyY_13rust_analyzer.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTNtNtBI_6string6StringNtNtCs8yjYO7b73r2_10serde_json5error5ErrorEINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs6u1mgJOKDyY_13rust_analyzer6config16ConfigErrorInnerEEEB3s_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #44
          to label %bb.b unwind label %bb.j

_RNvMs0_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringNtNtCs8yjYO7b73r2_10serde_json5error5ErrorEE32forget_allocation_drop_remainingCs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.d
  store i64 %i.g, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.x, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6589)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6590)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6591)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6592)
  %.val.i.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !6593, !nonnull !7, !noundef !7 ; 2 uses
  %.val1.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !6593, !nonnull !7, !noundef !7
  %i.y = ptrtoint ptr %.val1.i.i.i.i to i64
  %i.z = ptrtoint ptr %.val.i.i.i.i to i64
  %i.aa = sub nuw i64 %i.y, %i.z
  %i.ab = lshr exact i64 %i.aa, 5
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCs8yjYO7b73r2_10serde_json5error5ErrorEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 %.val.i.i.i.i, i64 noundef %i.ab)
          to label %bb.h unwind label %bb.f, !noalias !6593

bb.f:                                             ; preds = %_RNvMs0_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringNtNtCs8yjYO7b73r2_10serde_json5error5ErrorEE32forget_allocation_drop_remainingCs6u1mgJOKDyY_13rust_analyzer.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load i64, ptr %i.b, align 8, !alias.scope !6593, !noundef !7 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = load ptr, ptr %1, align 8, !alias.scope !6593, !nonnull !7, !noundef !7
  %i.ag = shl nuw i64 %i.ad, 5
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !6594
  br label %common.resume

bb.h:                                             ; preds = %_RNvMs0_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringNtNtCs8yjYO7b73r2_10serde_json5error5ErrorEE32forget_allocation_drop_remainingCs6u1mgJOKDyY_13rust_analyzer.exit
  %i.ah = load i64, ptr %i.b, align 8, !alias.scope !6593, !noundef !7 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapIBC_INtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtB1k_6string6StringNtNtCs8yjYO7b73r2_10serde_json5error5ErrorEENCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB3e_6Config22apply_change_with_sinks0_0ENvMs4_NtCs50pZefIA5Ye_8triomphe3arcINtB4C_3ArcNtB3e_16ConfigErrorInnerE3newEEB3g_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = load ptr, ptr %1, align 8, !alias.scope !6593, !nonnull !7, !noundef !7
  %i.ak = shl nuw i64 %i.ah, 5
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.ak, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !6595
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapIBC_INtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtB1k_6string6StringNtNtCs8yjYO7b73r2_10serde_json5error5ErrorEENCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB3e_6Config22apply_change_with_sinks0_0ENvMs4_NtCs50pZefIA5Ye_8triomphe3arcINtB4C_3ArcNtB3e_16ConfigErrorInnerE3newEEB3g_.exit

common.resume:                                    ; preds = %bb.b, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.ac, %bb.f ], [ %i.ac, %bb.g ], [ %.pn, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapIBC_INtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtB1k_6string6StringNtNtCs8yjYO7b73r2_10serde_json5error5ErrorEENCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB3e_6Config22apply_change_with_sinks0_0ENvMs4_NtCs50pZefIA5Ye_8triomphe3arcINtB4C_3ArcNtB3e_16ConfigErrorInnerE3newEEB3g_.exit: ; preds = %bb.h, %bb.i
  ret void

bb.j:                                             ; preds = %bb.e, %bb.b
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapIB17_INtNtB4_9into_iter8IntoIterTNtNtB6_6string6StringNtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorEENCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB3A_6Config22apply_change_with_sink0ENvMs4_NtCs50pZefIA5Ye_8triomphe3arcINtB4V_3ArcNtB3A_16ConfigErrorInnerE3newEB5o_EB3C_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !7 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !noundef !7
  %i.g = mul nuw i64 %i.c, 14
  %i.h = invoke { ptr, ptr } @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtB18_6string6StringNtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorEENCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB30_6Config22apply_change_with_sink0ENvMs4_NtCs50pZefIA5Ye_8triomphe3arcINtB4l_3ArcNtB30_16ConfigErrorInnerE3newENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB16_13in_place_drop11InPlaceDropB4O_ENCINvNtB16_16in_place_collect24write_in_place_with_dropB4O_E0INtNtBc_6result6ResultB6a_zEEB32_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.v, %bb.e ], [ %i.i, %bb.c ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapIBC_INtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtB1k_6string6StringNtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorEENCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB3c_6Config22apply_change_with_sink0ENvMs4_NtCs50pZefIA5Ye_8triomphe3arcINtB4x_3ArcNtB3c_16ConfigErrorInnerE3newEEB3e_(ptr noalias nofree noundef align 8 dereferenceable(32) %1) #44
          to label %common.resume unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.d to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val.i = load ptr, ptr %i.q, align 8, !alias.scope !6610, !nonnull !7, !noundef !7 ; 2 uses
  %.val1.i = load ptr, ptr %i.e, align 8, !alias.scope !6610, !nonnull !7, !noundef !7
  %i.r = ptrtoint ptr %.val1.i to i64
  %i.s = ptrtoint ptr %.val.i to i64
  %i.t = sub nuw i64 %i.r, %i.s
  %i.u = udiv exact i64 %i.t, 112
  store i64 0, ptr %i.b, align 8, !alias.scope !6610
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !6610
  store ptr inttoptr (i64 8 to ptr), ptr %i.q, align 8, !alias.scope !6610
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !alias.scope !6610
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 %.val.i, i64 noundef %i.u)
          to label %_RNvMs0_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringNtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorEE32forget_allocation_drop_remainingCs6u1mgJOKDyY_13rust_analyzer.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTNtNtBI_6string6StringNtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorEINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs6u1mgJOKDyY_13rust_analyzer6config16ConfigErrorInnerEEEB3q_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #44
          to label %bb.b unwind label %bb.j

_RNvMs0_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringNtNtNtCsiS54oC2UhYT_4toml2de5error5ErrorEE32forget_allocation_drop_remainingCs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.d
  store i64 %i.g, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_1
