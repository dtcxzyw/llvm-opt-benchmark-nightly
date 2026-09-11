Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_diagnostics-c91ff1076cc5b64d.ide_diagnostics.928d5d43bb5779f5-cgu.13?download=true
inline.NumInlined: 1160
inline.NumDeleted: 496
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscA5P7HRgTCP_15ide_diagnostics:bb.a
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECscA5P7HRgTCP_15ide_diagnostics.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECscA5P7HRgTCP_15ide_diagnostics.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECscA5P7HRgTCP_15ide_diagnostics.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECscA5P7HRgTCP_15ide_diagnostics.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11AnyHasAttrsECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !noundef !4
  %i.c = add i32 %i.b, -1                         ; 2 uses
  store i32 %i.c, ptr %i.a, align 4
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECscA5P7HRgTCP_15ide_diagnostics.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val) #30
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECscA5P7HRgTCP_15ide_diagnostics.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECscA5P7HRgTCP_15ide_diagnostics.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtCs4sl5YdnrCxp_3vfs6FileIdNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditEECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditECscA5P7HRgTCP_15ide_diagnostics.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelEECscA5P7HRgTCP_15ide_diagnostics.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditECscA5P7HRgTCP_15ide_diagnostics.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBE_4AttrEECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val3, i64 48 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !noundef !4
  %i.d = add i32 %i.c, -1                         ; 2 uses
  store i32 %i.d, ptr %i.b, align 4
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10UnsafeMetaECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaECscA5P7HRgTCP_15ide_diagnostics.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10UnsafeMetaECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i: ; preds = %bb.a
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val3) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaECscA5P7HRgTCP_15ide_diagnostics.exit unwind label %bb.b

bb.b:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10UnsafeMetaECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val1, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !noundef !4
  %i.j = add i32 %i.i, -1                         ; 2 uses
  store i32 %i.j, ptr %i.h, align 4
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrECscA5P7HRgTCP_15ide_diagnostics.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val1) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrECscA5P7HRgTCP_15ide_diagnostics.exit unwind label %bb.e

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaECscA5P7HRgTCP_15ide_diagnostics.exit: ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10UnsafeMetaECscA5P7HRgTCP_15ide_diagnostics.exit.sink.split.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !noundef !4
  %i.o = add i32 %i.n, -1                         ; 2 uses
  store i32 %i.o, ptr %i.m, align 4
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrECscA5P7HRgTCP_15ide_diagnostics.exit5

bb.d:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaECscA5P7HRgTCP_15ide_diagnostics.exit
  tail call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val) #30
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrECscA5P7HRgTCP_15ide_diagnostics.exit5

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrECscA5P7HRgTCP_15ide_diagnostics.exit5: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaECscA5P7HRgTCP_15ide_diagnostics.exit, %bb.d
  ret void

bb.e:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrECscA5P7HRgTCP_15ide_diagnostics.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCshzWfHUSfYae_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir16TypeOrConstParamENCNCINvNtNtB2I_11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE00EINtNtB1d_6option6OptionNtNtB1d_7convert10InfallibleEENtB2I_9TypeParamECscA5P7HRgTCP_15ide_diagnostics(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !4
  %i.g = invoke { ptr, ptr } @_RINvXNtNtCshzWfHUSfYae_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir16TypeOrConstParamENCNCINvNtNtB24_11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE00EINtNtB7_6option6OptionNtNtB7_7convert10InfallibleEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropNtB24_9TypeParamENCINvNtB1j_16in_place_collect24write_in_place_with_dropB6g_E0INtNtB7_6result6ResultB5F_zEECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtCs8Xq8PKFYOms_3hir16TypeOrConstParamNtB1N_9TypeParamEECscA5P7HRgTCP_15ide_diagnostics.exit, %bb.c
  %.pn = phi { ptr, i32 } [ %i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtCs8Xq8PKFYOms_3hir16TypeOrConstParamNtB1N_9TypeParamEECscA5P7HRgTCP_15ide_diagnostics.exit ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir16TypeOrConstParamENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir16TypeOrConstParamENCNCINvNtNtB2j_11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE00EINtNtB4_6option6OptionNtNtB4_7convert10InfallibleEEECscA5P7HRgTCP_15ide_diagnostics.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  invoke void @_RNvMs0_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir16TypeOrConstParamE32forget_allocation_drop_remainingCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %i.j, align 8
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs8Xq8PKFYOms_3hir16TypeOrConstParamENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtCs8Xq8PKFYOms_3hir16TypeOrConstParamNtB1N_9TypeParamEECscA5P7HRgTCP_15ide_diagnostics.exit unwind label %bb.g

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtCs8Xq8PKFYOms_3hir16TypeOrConstParamNtB1N_9TypeParamEECscA5P7HRgTCP_15ide_diagnostics.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.f:                                             ; preds = %bb.d
  %i.k = extractvalue { ptr, ptr } %i.g, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = lshr exact i64 %i.n, 4
  store i64 %i.c, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.q, align 8
  tail call void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir16TypeOrConstParamENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
  ret void

bb.g:                                             ; preds = %bb.e, %bb.b
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir16TypeOrConstParamENCNCINvNtNtB2j_11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE00EINtNtB4_6option6OptionNtNtB4_7convert10InfallibleEEECscA5P7HRgTCP_15ide_diagnostics.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCshzWfHUSfYae_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5ParamENCNCINvNtNtB2I_11term_search7tactics11impl_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs4_0s_0EINtNtB1d_6option6OptionNtNtB1d_7convert10InfallibleEEINtB4_3VecNtNtB3g_4expr4ExprEECscA5P7HRgTCP_15ide_diagnostics(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !4
  %i.g = mul i64 %i.c, 56                         ; 7 uses
  %i.h = udiv i64 %i.g, 24                        ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXNtNtCshzWfHUSfYae_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5ParamENCNCINvNtNtB24_11term_search7tactics11impl_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs4_0s_0EINtNtB7_6option6OptionNtNtB7_7convert10InfallibleEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropINtB1j_3VecNtNtB2C_4expr4ExprEENCINvNtB1j_16in_place_collect24write_in_place_with_dropB67_E0INtNtB7_6result6ResultB5w_zEECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir5ParamENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5ParamENCNCINvNtNtB2j_11term_search7tactics11impl_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs4_0s_0EINtNtB4_6option6OptionNtNtB4_7convert10InfallibleEEECscA5P7HRgTCP_15ide_diagnostics.exit unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.q, align 8
  invoke void @_RNvMs0_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir5ParamE32forget_allocation_drop_remainingCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtCs8Xq8PKFYOms_3hir5ParamINtBG_3VecNtNtNtB1N_11term_search4expr4ExprEEECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #32
          to label %bb.b unwind label %bb.l

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.s = mul nuw i64 %i.h, 24                     ; 4 uses
  %i.t = icmp ne i64 %i.g, %i.s
  %or.cond = select i1 %.not.i, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.g, label %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtCs8Xq8PKFYOms_3hir5ParamINtB4_3VecNtNtNtB13_11term_search4expr4ExprEECscA5P7HRgTCP_15ide_diagnostics.exit.thread

_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtCs8Xq8PKFYOms_3hir5ParamINtB4_3VecNtNtNtB13_11term_search4expr4ExprEECscA5P7HRgTCP_15ide_diagnostics.exit.thread: ; preds = %bb.h, %2, %bb.f, %bb.i
  %.sroa.03.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.h ], [ %i.y, %bb.i ], [ %i.d, %bb.f ], [ inttoptr (i64 8 to ptr), %2 ]
  store i64 %i.h, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir5ParamENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.g, 24
  br i1 %i.w, label %2, label %bb.i

2:                                                ; preds = %bb.g
  %3 = icmp eq i64 %i.g, 0
  br i1 %3, label %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtCs8Xq8PKFYOms_3hir5ParamINtB4_3VecNtNtNtB13_11term_search4expr4ExprEECscA5P7HRgTCP_15ide_diagnostics.exit.thread, label %bb.h

bb.h:                                             ; preds = %2
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8) #33
  br label %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtCs8Xq8PKFYOms_3hir5ParamINtB4_3VecNtNtNtB13_11term_search4expr4ExprEECscA5P7HRgTCP_15ide_diagnostics.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.x = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.x)
  %i.y = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef range(i64 0, -15) %i.s) #33 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.j, label %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtCs8Xq8PKFYOms_3hir5ParamINtB4_3VecNtNtNtB13_11term_search4expr4ExprEECscA5P7HRgTCP_15ide_diagnostics.exit.thread, !prof !15

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #29
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.b, %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5ParamENCNCINvNtNtB2j_11term_search7tactics11impl_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs4_0s_0EINtNtB4_6option6OptionNtNtB4_7convert10InfallibleEEECscA5P7HRgTCP_15ide_diagnostics.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCshzWfHUSfYae_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5ParamENCNCINvNtNtB2I_11term_search7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs5_00EINtNtB1d_6option6OptionNtNtB1d_7convert10InfallibleEEINtB4_3VecNtNtB3g_4expr4ExprEECscA5P7HRgTCP_15ide_diagnostics(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !4
  %i.g = mul i64 %i.c, 56                         ; 7 uses
  %i.h = udiv i64 %i.g, 24                        ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXNtNtCshzWfHUSfYae_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5ParamENCNCINvNtNtB24_11term_search7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs5_00EINtNtB7_6option6OptionNtNtB7_7convert10InfallibleEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropINtB1j_3VecNtNtB2C_4expr4ExprEENCINvNtB1j_16in_place_collect24write_in_place_with_dropB6c_E0INtNtB7_6result6ResultB5B_zEECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir5ParamENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5ParamENCNCINvNtNtB2j_11term_search7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs5_00EINtNtB4_6option6OptionNtNtB4_7convert10InfallibleEEECscA5P7HRgTCP_15ide_diagnostics.exit unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.q, align 8
  invoke void @_RNvMs0_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir5ParamE32forget_allocation_drop_remainingCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtCs8Xq8PKFYOms_3hir5ParamINtBG_3VecNtNtNtB1N_11term_search4expr4ExprEEECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #32
          to label %bb.b unwind label %bb.l

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.s = mul nuw i64 %i.h, 24                     ; 4 uses
  %i.t = icmp ne i64 %i.g, %i.s
  %or.cond = select i1 %.not.i, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.g, label %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtCs8Xq8PKFYOms_3hir5ParamINtB4_3VecNtNtNtB13_11term_search4expr4ExprEECscA5P7HRgTCP_15ide_diagnostics.exit.thread

_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtCs8Xq8PKFYOms_3hir5ParamINtB4_3VecNtNtNtB13_11term_search4expr4ExprEECscA5P7HRgTCP_15ide_diagnostics.exit.thread: ; preds = %bb.h, %2, %bb.f, %bb.i
  %.sroa.03.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.h ], [ %i.y, %bb.i ], [ %i.d, %bb.f ], [ inttoptr (i64 8 to ptr), %2 ]
  store i64 %i.h, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir5ParamENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.g, 24
  br i1 %i.w, label %2, label %bb.i

2:                                                ; preds = %bb.g
  %3 = icmp eq i64 %i.g, 0
  br i1 %3, label %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtCs8Xq8PKFYOms_3hir5ParamINtB4_3VecNtNtNtB13_11term_search4expr4ExprEECscA5P7HRgTCP_15ide_diagnostics.exit.thread, label %bb.h

bb.h:                                             ; preds = %2
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8) #33
  br label %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtCs8Xq8PKFYOms_3hir5ParamINtB4_3VecNtNtNtB13_11term_search4expr4ExprEECscA5P7HRgTCP_15ide_diagnostics.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.x = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.x)
  %i.y = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef range(i64 0, -15) %i.s) #33 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.j, label %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtCs8Xq8PKFYOms_3hir5ParamINtB4_3VecNtNtNtB13_11term_search4expr4ExprEECscA5P7HRgTCP_15ide_diagnostics.exit.thread, !prof !15

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #29
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.b, %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5ParamENCNCINvNtNtB2j_11term_search7tactics18impl_static_methodNtCs6oosyzwIepl_6ide_db12RootDatabaseEs5_00EINtNtB4_6option6OptionNtNtB4_7convert10InfallibleEEECscA5P7HRgTCP_15ide_diagnostics.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCshzWfHUSfYae_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5ParamENCNCNCINvNtNtB2I_11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE0s2_0s_0EINtNtB1d_6option6OptionNtNtB1d_7convert10InfallibleEEINtB4_3VecNtNtB3i_4expr4ExprEECscA5P7HRgTCP_15ide_diagnostics(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !4
  %i.g = mul i64 %i.c, 56                         ; 7 uses
  %i.h = udiv i64 %i.g, 24                        ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXNtNtCshzWfHUSfYae_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5ParamENCNCNCINvNtNtB24_11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE0s2_0s_0EINtNtB7_6option6OptionNtNtB7_7convert10InfallibleEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropINtB1j_3VecNtNtB2E_4expr4ExprEENCINvNtB1j_16in_place_collect24write_in_place_with_dropB6c_E0INtNtB7_6result6ResultB5B_zEECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir5ParamENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5ParamENCNCNCINvNtNtB2j_11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE0s2_0s_0EINtNtB4_6option6OptionNtNtB4_7convert10InfallibleEEECscA5P7HRgTCP_15ide_diagnostics.exit unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.q, align 8
  invoke void @_RNvMs0_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir5ParamE32forget_allocation_drop_remainingCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtCs8Xq8PKFYOms_3hir5ParamINtBG_3VecNtNtNtB1N_11term_search4expr4ExprEEECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #32
          to label %bb.b unwind label %bb.l

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.s = mul nuw i64 %i.h, 24                     ; 4 uses
  %i.t = icmp ne i64 %i.g, %i.s
  %or.cond = select i1 %.not.i, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.g, label %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtCs8Xq8PKFYOms_3hir5ParamINtB4_3VecNtNtNtB13_11term_search4expr4ExprEECscA5P7HRgTCP_15ide_diagnostics.exit.thread

_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtCs8Xq8PKFYOms_3hir5ParamINtB4_3VecNtNtNtB13_11term_search4expr4ExprEECscA5P7HRgTCP_15ide_diagnostics.exit.thread: ; preds = %bb.h, %2, %bb.f, %bb.i
  %.sroa.03.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.h ], [ %i.y, %bb.i ], [ %i.d, %bb.f ], [ inttoptr (i64 8 to ptr), %2 ]
  store i64 %i.h, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir5ParamENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.g, 24
  br i1 %i.w, label %2, label %bb.i

2:                                                ; preds = %bb.g
  %3 = icmp eq i64 %i.g, 0
  br i1 %3, label %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtCs8Xq8PKFYOms_3hir5ParamINtB4_3VecNtNtNtB13_11term_search4expr4ExprEECscA5P7HRgTCP_15ide_diagnostics.exit.thread, label %bb.h

bb.h:                                             ; preds = %2
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8) #33
  br label %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtCs8Xq8PKFYOms_3hir5ParamINtB4_3VecNtNtNtB13_11term_search4expr4ExprEECscA5P7HRgTCP_15ide_diagnostics.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.x = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.x)
  %i.y = tail call noundef align 8 ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef range(i64 0, -15) %i.s) #33 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.j, label %_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect13needs_reallocNtCs8Xq8PKFYOms_3hir5ParamINtB4_3VecNtNtNtB13_11term_search4expr4ExprEECscA5P7HRgTCP_15ide_diagnostics.exit.thread, !prof !15

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #29
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.b, %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5ParamENCNCNCINvNtNtB2j_11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE0s2_0s_0EINtNtB4_6option6OptionNtNtB4_7convert10InfallibleEEECscA5P7HRgTCP_15ide_diagnostics.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes4ExprECscA5P7HRgTCP_15ide_diagnostics(ptr %.0.val) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !noundef !4 ; 2 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.b, label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #29
  unreachable

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit: ; preds = %bb.a
  %i.e = add nuw i32 %i.c, 1
  store i32 %i.e, ptr %i.b, align 4
  %i.f = tail call noundef ptr @_RNvMsi_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18SyntaxNodeChildren3new(ptr noundef nonnull %.0.val)
  store ptr %i.f, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %.noexc8, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit
  %i.g = invoke noundef ptr @_RNvXsj_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18SyntaxNodeChildrenNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %bb.c
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEECscA5P7HRgTCP_15ide_diagnostics.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  %i.h = invoke fastcc { i64, ptr } @_RNvXsmZ_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_4ExprNtBa_7AstNode4cast(ptr noundef nonnull %i.g) #34
          to label %.noexc8 unwind label %bb.e    ; 3 uses

.noexc8:                                          ; preds = %bb.d
  %i.i = extractvalue { i64, ptr } %i.h, 0
  %.not7.i = icmp eq i64 %i.i, -1
  br i1 %.not7.i, label %bb.c, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  %.val4 = load ptr, ptr %i.a, align 8, !noundef !4 ; 3 uses
  %i.k = icmp eq ptr %.val4, null
  br i1 %i.k, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECscA5P7HRgTCP_15ide_diagnostics.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.val4, i64 48 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !noundef !4
  %i.n = add i32 %i.m, -1                         ; 2 uses
  store i32 %i.n, ptr %i.l, align 4
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECscA5P7HRgTCP_15ide_diagnostics.exit

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val4) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECscA5P7HRgTCP_15ide_diagnostics.exit unwind label %bb.k

bb.h:                                             ; preds = %.noexc8
  %i.p = extractvalue { i64, ptr } %i.h, 1
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEECscA5P7HRgTCP_15ide_diagnostics.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEECscA5P7HRgTCP_15ide_diagnostics.exit: ; preds = %.noexc, %bb.h
  %.7 = phi ptr [ %i.p, %bb.h ], [ undef, %.noexc ]
  %i.q = phi { i64, ptr } [ %i.h, %bb.h ], [ { i64 -1, ptr poison }, %.noexc ]
  %.val = load ptr, ptr %i.a, align 8, !noundef !4 ; 3 uses
  %i.r = icmp eq ptr %.val, null
  br i1 %i.r, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECscA5P7HRgTCP_15ide_diagnostics.exit10, label %bb.i

bb.i:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEECscA5P7HRgTCP_15ide_diagnostics.exit
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !noundef !4
  %i.u = add i32 %i.t, -1                         ; 2 uses
  store i32 %i.u, ptr %i.s, align 4
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.j, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECscA5P7HRgTCP_15ide_diagnostics.exit10

bb.j:                                             ; preds = %bb.i
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val) #30
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECscA5P7HRgTCP_15ide_diagnostics.exit10

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECscA5P7HRgTCP_15ide_diagnostics.exit10: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEECscA5P7HRgTCP_15ide_diagnostics.exit, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.w = insertvalue { i64, ptr } %i.q, ptr %.7, 1
  ret { i64, ptr } %i.w

bb.k:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECscA5P7HRgTCP_15ide_diagnostics.exit: ; preds = %bb.f, %bb.e, %bb.g
  resume { ptr, i32 } %i.j
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes4MetaECscA5P7HRgTCP_15ide_diagnostics(ptr %.0.val) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !noundef !4 ; 2 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.b, label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #29
  unreachable

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit: ; preds = %bb.a
  %i.e = add nuw i32 %i.c, 1
  store i32 %i.e, ptr %i.b, align 4
  %i.f = tail call noundef ptr @_RNvMsi_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18SyntaxNodeChildren3new(ptr noundef nonnull %.0.val)
  store ptr %i.f, ptr %i.a, align 8
  %i.g = invoke noundef ptr @_RNvXsj_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18SyntaxNodeChildrenNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc unwind label %.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit
  %.not17.i = icmp eq ptr %i.g, null
  br i1 %.not17.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaEECscA5P7HRgTCP_15ide_diagnostics.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc, %.noexc9
  %i.h = phi ptr [ %i.x, %.noexc9 ], [ %i.g, %.noexc ] ; 7 uses
  %i.i = load i64, ptr %i.h, align 8, !range !5, !noalias !171, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !171, !nonnull !4, !noundef !4
  %i.l = shl nuw nsw i64 %i.i, 2
  %.sroa.0.0.in.idx.i.i.i.i.i = xor i64 %i.l, 4
  %.sroa.0.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.0.0.in.idx.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i = load i16, ptr %.sroa.0.0.in.i.i.i.i.i, align 4, !noalias !171, !noundef !4
  %i.m = invoke noundef range(i16 0, 329) i16 @_RNvXNtCsjJXvCMGntp8_6syntax11syntax_nodeNtB2_12RustLanguageNtNtCs9GitHPCrz2Q_5rowan3api8Language13kind_from_raw(i16 noundef %.sroa.0.0.i.i.i.i.i)
          to label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !noundef !4
  %i.q = add i32 %i.p, -1                         ; 2 uses
  store i32 %i.q, ptr %i.o, align 4
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.d, label %.body

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.h) #30
          to label %.body unwind label %bb.g

_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i.i: ; preds = %.lr.ph.i
  switch i16 %i.m, label %bb.e [
    i16 186, label %.thread.loopexit32
    i16 188, label %.thread.loopexit41
    i16 222, label %.thread
    i16 262, label %.thread.loopexit
    i16 295, label %.thread.loopexit12
    i16 313, label %.thread.loopexit23
  ]

bb.e:                                             ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !noundef !4
  %i.u = add i32 %i.t, -1                         ; 2 uses
  store i32 %i.u, ptr %i.s, align 8
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.f, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes4MetaNvYB2M_NtB2S_7AstNode4castE0CscA5P7HRgTCP_15ide_diagnostics.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.h) #30
          to label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes4MetaNvYB2M_NtB2S_7AstNode4castE0CscA5P7HRgTCP_15ide_diagnostics.exit.i unwind label %.loopexit

bb.g:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
end_hunk_0
