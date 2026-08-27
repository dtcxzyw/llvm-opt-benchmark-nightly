Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.01?download=true
inline.NumInlined: 8879
inline.NumDeleted: 4283
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement29StarrableMatchSequenceElementNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsEhZmuQNqkz_11ruff_linter:bb.a
  store i8 %.sroa.523.sroa.11.0, ptr %.sroa.433.sroa.10.0..sroa.433.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.523.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.523.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.523.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.523.sroa.13)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.cf = icmp eq i64 %i.y, 0
  br i1 %i.cf, label %.thread, label %bb.c

bb.ab:                                            ; preds = %bb.ac
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.ac:                                            ; preds = %.loopexit, %bb.n, %bb.g, %bb.y
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i, %bb.n ], [ %i.cc, %bb.y ], [ %i.al, %bb.g ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7.073, ptr %i.t, align 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement29StarrableMatchSequenceElementEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.j) #30
          to label %bb.ad unwind label %bb.ab

bb.ad:                                            ; preds = %bb.ac
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtNtCscdodAO9FK5_5alloc3vec3VecNtCsaaRuwTSDeTG_9pep508_rs11RequirementENtB8_11Deserialize11deserializeINtNtB8_5value17UsizeDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEECsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvYINtNvXsh_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtNtCscdodAO9FK5_5alloc3vec3VecpENtBe_11Deserialize11deserialize10VecVisitorNtCsaaRuwTSDeTG_9pep508_rs11RequirementENtBe_7Visitor9visit_u64NtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, i64 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtNtCscdodAO9FK5_5alloc3vec3VecNtCsaaRuwTSDeTG_9pep508_rs11RequirementENtB8_11Deserialize11deserializeINtNtB8_5value18StringDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEECsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8197
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !8201
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8202)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !8202, !noalias !8205, !nonnull !8, !noundef !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !8202, !noalias !8205, !noundef !8
  invoke void @_RINvYINtNvXsh_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtNtCscdodAO9FK5_5alloc3vec3VecpENtBe_11Deserialize11deserialize10VecVisitorNtCsaaRuwTSDeTG_9pep508_rs11RequirementENtBe_7Visitor9visit_strNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e)
          to label %_RINvXss_NtNtCs6nZeqdiIoCH_10serde_core2de5valueINtB6_18StringDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtB8_12Deserializer15deserialize_seqINtNvXsh_NtB8_5implsINtNtCscdodAO9FK5_5alloc3vec3VecpENtB8_11Deserialize11deserialize10VecVisitorNtCsaaRuwTSDeTG_9pep508_rs11RequirementEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.b, !noalias !8207

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i unwind label %bb.c, !noalias !8205

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29, !noalias !8205
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.f

_RINvXss_NtNtCs6nZeqdiIoCH_10serde_core2de5valueINtB6_18StringDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtB8_12Deserializer15deserialize_seqINtNvXsh_NtB8_5implsINtNtCscdodAO9FK5_5alloc3vec3VecpENtB8_11Deserialize11deserialize10VecVisitorNtCsaaRuwTSDeTG_9pep508_rs11RequirementEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.a
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !8205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8197
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtNtCscdodAO9FK5_5alloc3vec3VecNtCsaaRuwTSDeTG_9pep508_rs11RequirementENtB8_11Deserialize11deserializeNtNtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5value17ValueDeserializerECsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs0_NtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5valueNtB6_17ValueDeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyINtNvXsh_NtB1i_5implsINtNtCscdodAO9FK5_5alloc3vec3VecpENtB1i_11Deserialize11deserialize10VecVisitorNtCsaaRuwTSDeTG_9pep508_rs11RequirementEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtNtCscdodAO9FK5_5alloc3vec3VecNtCsb8j7kd9PmgY_14pyproject_toml24DependencyGroupSpecifierENtB8_11Deserialize11deserializeINtNtB8_5value18StringDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorEECsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !8212
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8213)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !8213, !noalias !8216, !nonnull !8, !noundef !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !8213, !noalias !8216, !noundef !8
  invoke void @_RINvYINtNvXsh_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtNtCscdodAO9FK5_5alloc3vec3VecpENtBe_11Deserialize11deserialize10VecVisitorNtCsb8j7kd9PmgY_14pyproject_toml24DependencyGroupSpecifierENtBe_7Visitor9visit_strNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e)
          to label %_RINvXss_NtNtCs6nZeqdiIoCH_10serde_core2de5valueINtB6_18StringDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtB8_12Deserializer15deserialize_seqINtNvXsh_NtB8_5implsINtNtCscdodAO9FK5_5alloc3vec3VecpENtB8_11Deserialize11deserialize10VecVisitorNtCsb8j7kd9PmgY_14pyproject_toml24DependencyGroupSpecifierEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.b, !noalias !8218

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i unwind label %bb.c, !noalias !8216

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29, !noalias !8216
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.f

_RINvXss_NtNtCs6nZeqdiIoCH_10serde_core2de5valueINtB6_18StringDeserializerNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorENtB8_12Deserializer15deserialize_seqINtNvXsh_NtB8_5implsINtNtCscdodAO9FK5_5alloc3vec3VecpENtB8_11Deserialize11deserialize10VecVisitorNtCsb8j7kd9PmgY_14pyproject_toml24DependencyGroupSpecifierEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.a
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !8216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8208
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtNtCscdodAO9FK5_5alloc3vec3VecNtCsb8j7kd9PmgY_14pyproject_toml24DependencyGroupSpecifierENtB8_11Deserialize11deserializeNtNtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5value17ValueDeserializerECsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs0_NtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5valueNtB6_17ValueDeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyINtNvXsh_NtB1i_5implsINtNtCscdodAO9FK5_5alloc3vec3VecpENtB1i_11Deserialize11deserialize10VecVisitorNtCsb8j7kd9PmgY_14pyproject_toml24DependencyGroupSpecifierEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtNtCscdodAO9FK5_5alloc3vec3VecNtCsb8j7kd9PmgY_14pyproject_toml7ContactENtB8_11Deserialize11deserializeNtNtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5value17ValueDeserializerECsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs0_NtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5valueNtB6_17ValueDeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyINtNvXsh_NtB1i_5implsINtNtCscdodAO9FK5_5alloc3vec3VecpENtB1i_11Deserialize11deserialize10VecVisitorNtCsb8j7kd9PmgY_14pyproject_toml7ContactEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBO_6string6StringENtB8_11Deserialize11deserializeNtNtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5value17ValueDeserializerECsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs0_NtNtNtCsd1Od0hvlDsw_4toml2de12deserializer5valueNtB6_17ValueDeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer15deserialize_anyINtNvXsh_NtB1i_5implsINtNtCscdodAO9FK5_5alloc3vec3VecpENtB1i_11Deserialize11deserialize10VecVisitorNtNtB2I_6string6StringEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtCscdodAO9FK5_5alloc3vecINtB5_3VecbE11extend_withCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = zext i1 %2 to i8                         ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !8219, !noundef !8 ; 3 uses
  %i.d = load i64, ptr %0, align 8, !range !403, !alias.scope !8219, !noundef !8
  %i.e = sub i64 %i.d, %i.c
  %i.f = icmp ugt i64 %1, %i.e
  br i1 %i.f, label %bb.b, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecbE7reserveCsEhZmuQNqkz_11ruff_linter.exit, !prof !39

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.c, i64 noundef %1, i64 noundef 1, i64 noundef 1)
  %.pre = load i64, ptr %i.b, align 8
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecbE7reserveCsEhZmuQNqkz_11ruff_linter.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecbE7reserveCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %i.c, %bb.a ], [ %.pre, %bb.b ] ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.j = icmp sgt i64 %i.g, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr i8, ptr %i.i, i64 %i.g     ; 2 uses
  %i.l = icmp ugt i64 %1, 1
  br i1 %i.l, label %._crit_edge.thread, label %._crit_edge

._crit_edge.thread:                               ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecbE7reserveCsEhZmuQNqkz_11ruff_linter.exit
  %i.m = add i64 %1, -1
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.k, i8 %i.a, i64 %i.m, i1 false)
  %i.n = add i64 %i.g, %1
  %i.o = add i64 %i.n, -1                         ; 2 uses
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.o
  br label %bb.c

._crit_edge:                                      ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecbE7reserveCsEhZmuQNqkz_11ruff_linter.exit
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.sroa.0.0.lcssa28 = phi ptr [ %scevgep, %._crit_edge.thread ], [ %i.k, %._crit_edge ]
  %storemerge.lcssa27 = phi i64 [ %i.o, %._crit_edge.thread ], [ %i.g, %._crit_edge ]
  store i8 %i.a, ptr %.sroa.0.0.lcssa28, align 1
  %i.p = add i64 %storemerge.lcssa27, 1
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %storemerge18 = phi i64 [ %i.p, %bb.c ], [ %i.g, %._crit_edge ]
  store i64 %storemerge18, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditE6removeCsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8222)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !8222, !noalias !8225, !noundef !8 ; 5 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp ult i64 %2, %i.b
  br i1 %.not.i, label %bb.b, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditE10try_removeCsEhZmuQNqkz_11ruff_linter.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !8222, !noalias !8225, !nonnull !8, !noundef !8
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %2 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = xor i64 %2, -1
  %i.i = add nsw i64 %i.b, %i.h
  %i.j = mul nuw nsw i64 %i.i, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.g, i64 %i.j, i1 false), !noalias !8227
  %i.k = add nsw i64 %i.b, -1
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !8222, !noalias !8225
  ret void

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditE10try_removeCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.a
  tail call void @_RNvNvMs_NtCscdodAO9FK5_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %2, i64 noundef %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditE7reserveCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !8 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !403, !noundef !8
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !39

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 24)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsEhZmuQNqkz_11ruff_linter11suppression25PendingSuppressionCommentE6removeBH_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 {
bb.a:
  %.sroa.0 = alloca [64 x i8], align 8            ; 4 uses
  %.sroa.6 = alloca [7 x i8], align 1             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8228)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !8228, !noalias !8231, !noundef !8 ; 5 uses
  %i.c = icmp ult i64 %i.b, 128102389400760776
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp ult i64 %2, %i.b
  br i1 %.not.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsEhZmuQNqkz_11ruff_linter11suppression25PendingSuppressionCommentE10try_removeBH_.exit, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsEhZmuQNqkz_11ruff_linter11suppression25PendingSuppressionCommentE10try_removeBH_.exit.thread

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsEhZmuQNqkz_11ruff_linter11suppression25PendingSuppressionCommentE10try_removeBH_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !8228, !noalias !8231, !nonnull !8, !noundef !8
  %i.f = getelementptr inbounds nuw [72 x i8], ptr %i.e, i64 %2 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false), !noalias !8228
  %.sroa.4.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.sroa.4.0.copyload2 = load i8, ptr %.sroa.4.0..sroa_idx1, align 8, !noalias !8228 ; 2 uses
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.f, i64 65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx3, i64 7, i1 false), !noalias !8228
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.h = xor i64 %2, -1
  %i.i = add nsw i64 %i.b, %i.h
  %i.j = mul nuw nsw i64 %i.i, 72
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.g, i64 %i.j, i1 false), !noalias !8233
  %i.k = add nsw i64 %i.b, -1                     ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !8228, !noalias !8231
  %.not = icmp eq i8 %.sroa.4.0.copyload2, -1
  br i1 %.not, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsEhZmuQNqkz_11ruff_linter11suppression25PendingSuppressionCommentE10try_removeBH_.exit.thread, label %bb.b, !prof !8234

bb.b:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsEhZmuQNqkz_11ruff_linter11suppression25PendingSuppressionCommentE10try_removeBH_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0, i64 64, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %.sroa.4.0.copyload2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsEhZmuQNqkz_11ruff_linter11suppression25PendingSuppressionCommentE10try_removeBH_.exit.thread: ; preds = %bb.a, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsEhZmuQNqkz_11ruff_linter11suppression25PendingSuppressionCommentE10try_removeBH_.exit
  %i.l = phi i64 [ %i.b, %bb.a ], [ %i.k, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsEhZmuQNqkz_11ruff_linter11suppression25PendingSuppressionCommentE10try_removeBH_.exit ] ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 128102389400760776
  tail call void @llvm.assume(i1 %i.m)
  tail call void @_RNvNvMs_NtCscdodAO9FK5_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %2, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE6removeCsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 {
bb.a:
  %.sroa.6 = alloca [32 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8235)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !8235, !noalias !8238, !noundef !8 ; 5 uses
  %i.c = icmp ult i64 %i.b, 230584300921369396
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp ult i64 %2, %i.b
  br i1 %.not.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE10try_removeCsEhZmuQNqkz_11ruff_linter.exit, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE10try_removeCsEhZmuQNqkz_11ruff_linter.exit.thread

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE10try_removeCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !8235, !noalias !8238, !nonnull !8, !noundef !8
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %2 ; 4 uses
  %.sroa.0.0.copyload1 = load i64, ptr %i.f, align 8, !noalias !8235 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx2, i64 32, i1 false), !noalias !8235
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = xor i64 %2, -1
  %i.i = add nsw i64 %i.b, %i.h
  %i.j = mul nuw nsw i64 %i.i, 40
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.g, i64 %i.j, i1 false), !noalias !8240
  %i.k = add nsw i64 %i.b, -1                     ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !8235, !noalias !8238
  %.not = icmp eq i64 %.sroa.0.0.copyload1, -1
  br i1 %.not, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE10try_removeCsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.b, !prof !8234

bb.b:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE10try_removeCsEhZmuQNqkz_11ruff_linter.exit
  store i64 %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE10try_removeCsEhZmuQNqkz_11ruff_linter.exit.thread: ; preds = %bb.a, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE10try_removeCsEhZmuQNqkz_11ruff_linter.exit
  %i.l = phi i64 [ %i.b, %bb.a ], [ %i.k, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE10try_removeCsEhZmuQNqkz_11ruff_linter.exit ] ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 230584300921369396
  tail call void @llvm.assume(i1 %i.m)
  tail call void @_RNvNvMs_NtCscdodAO9FK5_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %2, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpE16into_boxed_sliceCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !403, !noundef !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 1, i64 noundef 1)
          to label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.d ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsEhZmuQNqkz_11ruff_linter.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsEhZmuQNqkz_11ruff_linter.exit._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !nonnull !8, !noundef !8
  %i.f = icmp sgt i64 %.sroa.511.0.copyload, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1
  ret { ptr, i64 } %i.h

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.g

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.j, -1
  br i1 %.not, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsEhZmuQNqkz_11ruff_linter.exit._crit_edge, label %bb.e, !prof !335

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsEhZmuQNqkz_11ruff_linter.exit._crit_edge: ; preds = %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8
  br label %bb.c

bb.e:                                             ; preds = %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsEhZmuQNqkz_11ruff_linter.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #31
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE16into_boxed_sliceCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !403, !noundef !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 8, i64 noundef 72)
          to label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.d ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsEhZmuQNqkz_11ruff_linter.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsEhZmuQNqkz_11ruff_linter.exit._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !nonnull !8, !noundef !8
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 128102389400760776
  tail call void @llvm.assume(i1 %i.f)
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1
  ret { ptr, i64 } %i.h

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %0) #30
          to label %bb.h unwind label %bb.g

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.j, -1
  br i1 %.not, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsEhZmuQNqkz_11ruff_linter.exit._crit_edge, label %bb.e, !prof !335

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsEhZmuQNqkz_11ruff_linter.exit._crit_edge: ; preds = %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8
  br label %bb.c

bb.e:                                             ; preds = %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsEhZmuQNqkz_11ruff_linter.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #31
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.h:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameE16into_boxed_sliceCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !403, !noundef !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 8, i64 noundef 24)
          to label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.d ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsEhZmuQNqkz_11ruff_linter.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsEhZmuQNqkz_11ruff_linter.exit._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !nonnull !8, !noundef !8
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 384307168202282326
  tail call void @llvm.assume(i1 %i.f)
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1
  ret { ptr, i64 } %i.h

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.g

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.j, -1
  br i1 %.not, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsEhZmuQNqkz_11ruff_linter.exit._crit_edge, label %bb.e, !prof !335

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsEhZmuQNqkz_11ruff_linter.exit._crit_edge: ; preds = %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8
  br label %bb.c

bb.e:                                             ; preds = %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsEhZmuQNqkz_11ruff_linter.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #31
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic5model3all13DunderAllNameEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement8WithItemE7reserveCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !8 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !403, !noundef !8
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !39

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 448)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 17) i8 @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsdjW2DEjcQy2_12clap_builder5error7context11ContextKindE6removeCsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8241)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !8241, !noundef !8 ; 5 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp ult i64 %1, %i.b
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !8241, !nonnull !8, !noundef !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %1 ; 3 uses
  %i.g = load i8, ptr %i.f, align 1, !range !8244, !noalias !8241, !noundef !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.i = xor i64 %1, -1
  %i.j = add nsw i64 %i.b, %i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull align 1 %i.h, i64 %i.j, i1 false), !noalias !8241
  %i.k = add nsw i64 %i.b, -1
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !8241
  ret i8 %i.g

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNvMs_NtCscdodAO9FK5_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %1, i64 noundef %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsdjW2DEjcQy2_12clap_builder5error7context12ContextValueE6removeCsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 {
bb.a:
  %.sroa.6 = alloca [31 x i8], align 1            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8245)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !8245, !noalias !8248, !noundef !8 ; 5 uses
  %i.c = icmp ult i64 %i.b, 288230376151711744
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp ult i64 %2, %i.b
  br i1 %.not.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsdjW2DEjcQy2_12clap_builder5error7context12ContextValueE10try_removeCsEhZmuQNqkz_11ruff_linter.exit, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsdjW2DEjcQy2_12clap_builder5error7context12ContextValueE10try_removeCsEhZmuQNqkz_11ruff_linter.exit.thread

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsdjW2DEjcQy2_12clap_builder5error7context12ContextValueE10try_removeCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !8245, !noalias !8248, !nonnull !8, !noundef !8
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %2 ; 4 uses
  %.sroa.0.0.copyload1 = load i8, ptr %i.f, align 8, !noalias !8245 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6.0..sroa_idx2, i64 31, i1 false), !noalias !8245
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = xor i64 %2, -1
  %i.i = add nsw i64 %i.b, %i.h
  %i.j = shl nuw nsw i64 %i.i, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.g, i64 %i.j, i1 false), !noalias !8250
  %i.k = add nsw i64 %i.b, -1                     ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !8245, !noalias !8248
  %.not = icmp eq i8 %.sroa.0.0.copyload1, -1
  br i1 %.not, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsdjW2DEjcQy2_12clap_builder5error7context12ContextValueE10try_removeCsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.b, !prof !8234

bb.b:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsdjW2DEjcQy2_12clap_builder5error7context12ContextValueE10try_removeCsEhZmuQNqkz_11ruff_linter.exit
  store i8 %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsdjW2DEjcQy2_12clap_builder5error7context12ContextValueE10try_removeCsEhZmuQNqkz_11ruff_linter.exit.thread: ; preds = %bb.a, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsdjW2DEjcQy2_12clap_builder5error7context12ContextValueE10try_removeCsEhZmuQNqkz_11ruff_linter.exit
  %i.l = phi i64 [ %i.b, %bb.a ], [ %i.k, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsdjW2DEjcQy2_12clap_builder5error7context12ContextValueE10try_removeCsEhZmuQNqkz_11ruff_linter.exit ] ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 288230376151711744
  tail call void @llvm.assume(i1 %i.m)
  tail call void @_RNvNvMs_NtCscdodAO9FK5_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %2, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers8FileOpenE6removeBL_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 {
bb.a:
  %.sroa.6 = alloca [56 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8251)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !8251, !noalias !8254, !noundef !8 ; 5 uses
  %i.c = icmp ult i64 %i.b, 144115188075855872
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp ult i64 %2, %i.b
  br i1 %.not.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers8FileOpenE10try_removeBL_.exit, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers8FileOpenE10try_removeBL_.exit.thread

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers8FileOpenE10try_removeBL_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !8251, !noalias !8254, !nonnull !8, !noundef !8
  %i.f = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %2 ; 4 uses
  %.sroa.0.0.copyload1 = load i64, ptr %i.f, align 8, !noalias !8251 ; 2 uses
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa_idx2, i64 56, i1 false), !noalias !8251
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = xor i64 %2, -1
  %i.i = add nsw i64 %i.b, %i.h
  %i.j = shl nuw nsw i64 %i.i, 6
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.g, i64 %i.j, i1 false), !noalias !8256
  %i.k = add nsw i64 %i.b, -1                     ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !8251, !noalias !8254
  %.not = icmp eq i64 %.sroa.0.0.copyload1, 2
  br i1 %.not, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers8FileOpenE10try_removeBL_.exit.thread, label %bb.b, !prof !8234

bb.b:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers8FileOpenE10try_removeBL_.exit
  store i64 %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers8FileOpenE10try_removeBL_.exit.thread: ; preds = %bb.a, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers8FileOpenE10try_removeBL_.exit
  %i.l = phi i64 [ %i.b, %bb.a ], [ %i.k, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb7helpers8FileOpenE10try_removeBL_.exit ] ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 144115188075855872
  tail call void @llvm.assume(i1 %i.m)
  tail call void @_RNvNvMs_NtCscdodAO9FK5_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %2, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecReE7reserveCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !8 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !403, !noundef !8
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !39

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 16)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtCsdxG2AMukdbL_3log11LevelFilterEE6removeCsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 {
bb.a:
  %.sroa.0 = alloca [24 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8257)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !8257, !noalias !8260, !noundef !8 ; 5 uses
  %i.c = icmp ult i64 %i.b, 288230376151711744
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp ult i64 %2, %i.b
  br i1 %.not.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtCsdxG2AMukdbL_3log11LevelFilterEE10try_removeCsEhZmuQNqkz_11ruff_linter.exit, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtCsdxG2AMukdbL_3log11LevelFilterEE10try_removeCsEhZmuQNqkz_11ruff_linter.exit.thread

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtCsdxG2AMukdbL_3log11LevelFilterEE10try_removeCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !8257, !noalias !8260, !nonnull !8, !noundef !8
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %2 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !8257
  %.sroa.4.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.4.0.copyload2 = load i64, ptr %.sroa.4.0..sroa_idx1, align 8, !noalias !8257 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = xor i64 %2, -1
  %i.i = add nsw i64 %i.b, %i.h
  %i.j = shl nuw nsw i64 %i.i, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %i.g, i64 %i.j, i1 false), !noalias !8262
  %i.k = add nsw i64 %i.b, -1                     ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !8257, !noalias !8260
  %.not = icmp eq i64 %.sroa.4.0.copyload2, -1
  br i1 %.not, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtCsdxG2AMukdbL_3log11LevelFilterEE10try_removeCsEhZmuQNqkz_11ruff_linter.exit.thread, label %bb.b, !prof !8234

bb.b:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtCsdxG2AMukdbL_3log11LevelFilterEE10try_removeCsEhZmuQNqkz_11ruff_linter.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.4.0.copyload2, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret void

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtCsdxG2AMukdbL_3log11LevelFilterEE10try_removeCsEhZmuQNqkz_11ruff_linter.exit.thread: ; preds = %bb.a, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtCsdxG2AMukdbL_3log11LevelFilterEE10try_removeCsEhZmuQNqkz_11ruff_linter.exit
  %i.l = phi i64 [ %i.b, %bb.a ], [ %i.k, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtCsdxG2AMukdbL_3log11LevelFilterEE10try_removeCsEhZmuQNqkz_11ruff_linter.exit ] ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 288230376151711744
  tail call void @llvm.assume(i1 %i.m)
  tail call void @_RNvNvMs_NtCscdodAO9FK5_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %2, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #31
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecThcEE8truncateCsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !8
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %1, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VeccE8truncateCsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !8
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %1, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE16into_boxed_sliceCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !403, !noundef !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 1, i64 noundef 1)
          to label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.d ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsEhZmuQNqkz_11ruff_linter.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsEhZmuQNqkz_11ruff_linter.exit._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !nonnull !8, !noundef !8
  %i.f = icmp sgt i64 %.sroa.511.0.copyload, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1
  ret { ptr, i64 } %i.h

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.g

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.j, -1
  br i1 %.not, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsEhZmuQNqkz_11ruff_linter.exit._crit_edge, label %bb.e, !prof !335

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsEhZmuQNqkz_11ruff_linter.exit._crit_edge: ; preds = %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsEhZmuQNqkz_11ruff_linter.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8
  br label %bb.c

bb.e:                                             ; preds = %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsEhZmuQNqkz_11ruff_linter.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #31
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !8 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !403, !noundef !8
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !39

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 1, i64 noundef 1)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !range !7888, !noundef !8
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.val = load ptr, ptr %i.e, align 8, !nonnull !8, !noundef !8 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1 = load i64, ptr %i.f, align 8, !noundef !8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8266)
  %i.g = load i64, ptr %0, align 8, !range !352, !alias.scope !8266, !noalias !8263, !noundef !8
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.h, label %bb.l, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.k = load i8, ptr %i.j, align 2, !range !7888, !alias.scope !8268, !noalias !8271, !noundef !8
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.promoted.i = load i64, ptr %i.i, align 8, !alias.scope !8266, !noalias !8263 ; 13 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %.promoted26.i = load i8, ptr %i.m, align 8, !alias.scope !8268, !noalias !8271 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8273)
  %i.n = trunc nuw i8 %.promoted26.i to i1        ; 2 uses
  %i.o = icmp eq i64 %.promoted.i, 0
  br i1 %i.o, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i.i.i.peel = icmp ult i64 %.promoted.i, %.val1
  br i1 %.not.i.i.i.peel, label %bb.d, label %.split.i.i.i.peel

.split.i.i.i.peel:                                ; preds = %bb.c
  %i.p = icmp eq i64 %.promoted.i, %.val1
  br i1 %i.p, label %bb.e, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 %.promoted.i
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !8275, !noalias !8278, !noundef !8
  %i.s = icmp sgt i8 %i.r, -65
  br i1 %i.s, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d, %.split.i.i.i.peel, %.lr.ph.i
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 %.promoted.i ; 4 uses
  %i.u = icmp samesign eq i64 %.promoted.i, %.val1
  br i1 %i.u, label %.loopexit19, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.t, align 1, !noalias !8279, !noundef !8 ; 5 uses
  %i.w = icmp sgt i8 %i.v, -1
  br i1 %i.w, label %bb.g, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.peel

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.peel: ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.y = and i8 %i.v, 31
  %i.z = zext nneg i8 %i.y to i32                 ; 3 uses
  %i.aa = add nuw nsw i64 %.promoted.i, 1
  %i.ab = icmp samesign ne i64 %i.aa, %.val1
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = load i8, ptr %i.x, align 1, !noalias !8279, !noundef !8
  %i.ad = shl nuw nsw i32 %i.z, 6
  %i.ae = and i8 %i.ac, 63
  %i.af = zext nneg i8 %i.ae to i32               ; 2 uses
  %i.ag = or disjoint i32 %i.ad, %i.af
end_hunk_0
