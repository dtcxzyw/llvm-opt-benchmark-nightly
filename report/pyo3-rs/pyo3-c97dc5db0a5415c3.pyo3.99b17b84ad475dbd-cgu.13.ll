Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pyo3-rs/original/pyo3-c97dc5db0a5415c3.pyo3.99b17b84ad475dbd-cgu.13?download=true
inline.NumInlined: 182
inline.NumDeleted: 99
begin_hunk_0_@_RNvMs0_NtNtNtCsdc6yCHiM2ZJ_4pyo35impl_7pyclass16lazy_type_objectNtB5_19LazyTypeObjectInner15get_or_try_init:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fd, ptr noundef nonnull align 8 dereferenceable(48) %i.fc, i64 48, i1 false), !noalias !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !48
  br label %bb.bb

.sink.split.sink.split.i:                         ; preds = %bb.ay, %bb.q, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !56
  br label %_RNCNvMs0_NtNtNtCsdc6yCHiM2ZJ_4pyo35impl_7pyclass16lazy_type_objectNtB7_19LazyTypeObjectInner15get_or_try_init0Bd_.exit

_RNCNvMs0_NtNtNtCsdc6yCHiM2ZJ_4pyo35impl_7pyclass16lazy_type_objectNtB7_19LazyTypeObjectInner15get_or_try_init0Bd_.exit: ; preds = %_RINvMs1_NtCsdc6yCHiM2ZJ_4pyo34syncINtB6_11GILOnceCellNtNtNtB8_7pyclass18create_type_object17PyClassTypeObjectE15get_or_try_initNCNCNvMs0_NtNtNtB8_5impl_7pyclass16lazy_type_objectNtB2b_19LazyTypeObjectInner15get_or_try_init00NtNtB8_3err5PyErrEB8_.exit.thread.i, %.sink.split.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !48
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ai, ptr %i.fe, align 8, !alias.scope !45, !noalias !55
  store i64 0, ptr %0, align 8, !alias.scope !45, !noalias !55
  br label %bb.bc

bb.bb:                                            ; preds = %bb.b, %_RNvMs0_NtNtNtCsdc6yCHiM2ZJ_4pyo35impl_7pyclass16lazy_type_objectNtB5_19LazyTypeObjectInner11ensure_init.exit.i
  store i64 1, ptr %0, align 8, !alias.scope !45, !noalias !55
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call fastcc void @_RNCNvMs0_NtNtNtCsdc6yCHiM2ZJ_4pyo35impl_7pyclass16lazy_type_objectNtB7_19LazyTypeObjectInner15get_or_try_inits_0Bd_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.x, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %i.ff) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ff, ptr noundef nonnull align 8 dereferenceable(48) %i.w, i64 48, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.bc

bb.bc:                                            ; preds = %_RNCNvMs0_NtNtNtCsdc6yCHiM2ZJ_4pyo35impl_7pyclass16lazy_type_objectNtB7_19LazyTypeObjectInner15get_or_try_init0Bd_.exit, %bb.bb
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMs3_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB5_13SuspendAttach3new() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CelliEE4withNCNvMs3_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB1H_13SuspendAttach3new0iEB1L_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @6)
  %i.b = tail call noundef ptr @PyEval_SaveThread() #22
  %i.c = insertvalue { i64, ptr } poison, i64 %i.a, 0
  %i.d = insertvalue { i64, ptr } %i.c, ptr %i.b, 1
  ret { i64, ptr } %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvMs5_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB5_15ForbidAttaching15during_traverse() unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 -1, ptr %i.a, align 8
  %i.b = call noundef i64 @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CelliEE4withNCNvMs5_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB1H_15ForbidAttaching3new0iEB1L_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.b
}

; Function Attrs: cold noreturn nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB5_15ForbidAttaching4bail(i64 noundef range(i64 -9223372036854775808, 0) %0) unnamed_addr #5 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = icmp eq i64 %0, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @8, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsdc6yCHiM2ZJ_4pyo3, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull inttoptr (i64 125 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #26
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef nonnull ptr @_RNvMs_NtNtCsdc6yCHiM2ZJ_4pyo33err10cast_errorNtB4_13CastIntoError10into_inner(ptr nofree noundef nonnull readnone returned captures(ret: address, provenance) %0, ptr noundef nonnull %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !noundef !5   ; 2 uses
  %i.b = and i64 %i.a, 2147483648
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %i.a, -1                         ; 2 uses
  store i64 %i.c, ptr %1, align 8
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_Py_Dealloc(ptr noundef nonnull %1) #22
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance5BoundNtNtNtBG_5types3any5PyAnyEEBG_.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMsb_NtNtCsdc6yCHiM2ZJ_4pyo35impl_7pyclassNtB5_17ThreadCheckerImpl5check(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call noundef nonnull ptr @_RNvNtNtCsG258MDvU3F_3std6thread7current7current() ; 3 uses
  store ptr %i.b, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !range !63, !noundef !5
  %i.e = load i64, ptr %0, align 8, !range !63, !noundef !5
  %i.f = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !103
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsdc6yCHiM2ZJ_4pyo3.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #24
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsdc6yCHiM2ZJ_4pyo3.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsdc6yCHiM2ZJ_4pyo3.exit: ; preds = %bb.a, %bb.b
  %i.h = icmp eq i64 %i.d, %i.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsb_NtNtCsdc6yCHiM2ZJ_4pyo35impl_7pyclassNtB5_17ThreadCheckerImpl6ensure(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %2, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = tail call noundef nonnull ptr @_RNvNtNtCsG258MDvU3F_3std6thread7current7current() ; 3 uses
  store ptr %i.f, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !63, !noundef !5 ; 2 uses
  store i64 %i.h, ptr %i.c, align 8
  %i.i = load i64, ptr %0, align 8, !range !63, !noundef !5
  %i.j = icmp eq i64 %i.h, %i.i
  br i1 %i.j, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsdc6yCHiM2ZJ_4pyo3, ptr %.sroa.42.0..sroa_idx, align 8
  invoke void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedNtNtNtCsG258MDvU3F_3std6thread2id8ThreadIdBM_ECsdc6yCHiM2ZJ_4pyo3(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noundef nonnull @22, ptr nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #27
          to label %bb.g unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.k = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !112
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsdc6yCHiM2ZJ_4pyo3.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #24
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsdc6yCHiM2ZJ_4pyo3.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsdc6yCHiM2ZJ_4pyo3.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !121)
  call void @llvm.experimental.noalias.scope.decl(metadata !124)
  call void @llvm.experimental.noalias.scope.decl(metadata !127)
  call void @llvm.experimental.noalias.scope.decl(metadata !130)
  %i.n = load ptr, ptr %i.b, align 8, !alias.scope !133, !nonnull !5, !noundef !5
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !133
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsdc6yCHiM2ZJ_4pyo3.exit5

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsdc6yCHiM2ZJ_4pyo3.exit5 unwind label %bb.h

bb.g:                                             ; preds = %bb.b
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsdc6yCHiM2ZJ_4pyo3.exit5: ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.m
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMsb_NtNtCsdc6yCHiM2ZJ_4pyo35impl_7pyclassNtB5_17ThreadCheckerImpl8can_drop(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %2, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = tail call noundef nonnull ptr @_RNvNtNtCsG258MDvU3F_3std6thread7current7current() ; 3 uses
  store ptr %i.g, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !63, !noundef !5
  %i.j = load i64, ptr %0, align 8, !range !63, !noundef !5
  %.not = icmp eq i64 %i.i, %i.j                  ; 2 uses
  %i.k = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !5
  %i.l = icmp eq i64 %i.k, 1                      ; 2 uses
  br i1 %.not, label %bb.b, label %.split

bb.b:                                             ; preds = %bb.a
  br i1 %i.l, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsdc6yCHiM2ZJ_4pyo3.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #24
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsdc6yCHiM2ZJ_4pyo3.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsdc6yCHiM2ZJ_4pyo3.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.i

.split:                                           ; preds = %bb.a
  br i1 %i.l, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsdc6yCHiM2ZJ_4pyo3.exit27

bb.d:                                             ; preds = %.split
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #24
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsdc6yCHiM2ZJ_4pyo3.exit27

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsdc6yCHiM2ZJ_4pyo3.exit27: ; preds = %.split, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsdc6yCHiM2ZJ_4pyo3, ptr %.sroa.43.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull @25, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !134
  %i.m = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #22, !noalias !134 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtBM_5PyErr3newNtNtBO_10exceptions14PyRuntimeErrorNtNtB4_6string6StringE0E3newBO_.exit, !prof !11

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsdc6yCHiM2ZJ_4pyo3.exit27
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #27
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtBJ_5PyErr3newNtNtBL_10exceptions14PyRuntimeErrorNtNtCsexYYUdYSQU6_5alloc6string6StringE0EBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #25
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.h:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.o

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtBM_5PyErr3newNtNtBO_10exceptions14PyRuntimeErrorNtNtB4_6string6StringE0E3newBO_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsdc6yCHiM2ZJ_4pyo3.exit27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 3, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.r, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.m, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @26, ptr %.sroa.517.0..sroa_idx, align 8
  call void @_RNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo33err9err_stateNtB5_10PyErrState7restore(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b)
  call void @PyErr_WriteUnraisable(ptr noundef null) #22
  br label %bb.i

bb.i:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtBM_5PyErr3newNtNtBO_10exceptions14PyRuntimeErrorNtNtB4_6string6StringE0E3newBO_.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsdc6yCHiM2ZJ_4pyo3.exit
  ret i1 %.not
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef ptr @_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_7pyclass30get_sequence_item_from_mapping(ptr noundef %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef ptr @PyLong_FromSsize_t(i64 noundef %1) #22 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @PyObject_GetItem(ptr noundef %0, ptr noundef nonnull %i.a) #22 ; 3 uses
  %i.d = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.e = and i64 %i.d, 2147483648
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %i.d, -1                         ; 2 uses
  store i64 %i.f, ptr %i.a, align 8
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.b, %bb.c
  %.sroa.0.0 = phi ptr [ %i.c, %bb.b ], [ %i.c, %bb.d ], [ %i.c, %bb.c ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef i32 @_RNvNtNtCsdc6yCHiM2ZJ_4pyo35impl_7pyclass33assign_sequence_item_from_mapping(ptr noundef %0, i64 noundef %1, ptr noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef ptr @PyLong_FromSsize_t(i64 noundef %1) #22 ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %2, null
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef i32 @PyObject_SetItem(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %2) #22
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = tail call noundef i32 @PyObject_DelItem(ptr noundef %0, ptr noundef nonnull %i.a) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0 = phi i32 [ %i.e, %bb.d ], [ %i.d, %bb.c ] ; 3 uses
  %i.f = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.g = and i64 %i.f, 2147483648
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.h = add i64 %i.f, -1                         ; 2 uses
  store i64 %i.h, ptr %i.a, align 8
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #22
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g, %bb.e, %bb.f
  %.sroa.0.1 = phi i32 [ %.sroa.0.0, %bb.e ], [ %.sroa.0.0, %bb.g ], [ %.sroa.0.0, %bb.f ], [ -1, %bb.a ]
  ret i32 %.sroa.0.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state18is_in_gc_traversal() unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i = load i64, ptr %i.a, align 8, !noundef !5
  %i.b = icmp eq i64 %.val.i, -1
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state8get_pool() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state4POOL, i64 32) acquire, align 8
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %_RINvMNtNtCsG258MDvU3F_3std4sync9once_lockINtB3_8OnceLockNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state13ReferencePoolE15get_or_try_initNCINvB2_11get_or_initNvMs0_BU_BS_3newE0zEBY_.exit, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMNtNtCsG258MDvU3F_3std4sync9once_lockINtB3_8OnceLockNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state13ReferencePoolE10initializeNCINvB2_11get_or_initNvMs0_BU_BS_3newE0zEBY_(ptr noundef nonnull align 8 @_RNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state4POOL)
  br label %_RINvMNtNtCsG258MDvU3F_3std4sync9once_lockINtB3_8OnceLockNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state13ReferencePoolE15get_or_try_initNCINvB2_11get_or_initNvMs0_BU_BS_3newE0zEBY_.exit

_RINvMNtNtCsG258MDvU3F_3std4sync9once_lockINtB3_8OnceLockNtNtNtCsdc6yCHiM2ZJ_4pyo38internal5state13ReferencePoolE15get_or_try_initNCINvB2_11get_or_initNvMs0_BU_BS_3newE0zEBY_.exit: ; preds = %bb.a, %bb.b
  ret ptr @_RNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state4POOL
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCsdc6yCHiM2ZJ_4pyo35impl_7pyclass16lazy_type_object18initialize_tp_dict(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.f = load i64, ptr %2, align 8, !range !22, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !5 ; 3 uses
  %i.i = icmp ult i64 %i.h, 384307168202282326
  tail call void @llvm.assume(i1 %i.i)
  %.idx = mul nuw nsw i64 %i.h, 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.f, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store ptr %i.j, ptr %.sroa.7.0..sroa_idx, align 8
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB1H_5types3any5PyAnyEEENtNtNtNtB14_4iter6traits8iterator8Iterator4nextB1H_.exit.thread, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB1H_5types3any5PyAnyEEENtNtNtNtB14_4iter6traits8iterator8Iterator4nextB1H_.exit.lr.ph

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB1H_5types3any5PyAnyEEENtNtNtNtB14_4iter6traits8iterator8Iterator4nextB1H_.exit.lr.ph: ; preds = %bb.a
  %i.l = tail call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL) ; 2 uses
  br label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB1H_5types3any5PyAnyEEENtNtNtNtB14_4iter6traits8iterator8Iterator4nextB1H_.exit

bb.b:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.h
  %.pn = phi { ptr, i32 } [ %i.s, %bb.h ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB1H_5types3any5PyAnyEEENtNtNtB14_3ops4drop4Drop4dropB1H_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTRNtNtNtB4_3ffi5c_str4CStrINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB1U_5types3any5PyAnyEEEEB1U_.exit unwind label %bb.r

.loopexit:                                        ; preds = %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB1H_5types3any5PyAnyEEENtNtNtNtB14_4iter6traits8iterator8Iterator4nextB1H_.exit: ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB1H_5types3any5PyAnyEEENtNtNtNtB14_4iter6traits8iterator8Iterator4nextB1H_.exit.lr.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEEBG_.exit12
  %i.m = phi ptr [ %i.e, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB1H_5types3any5PyAnyEEENtNtNtNtB14_4iter6traits8iterator8Iterator4nextB1H_.exit.lr.ph ], [ %i.af, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEEBG_.exit12 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.n, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !137, !noalias !140
  %.sroa.0.0.copyload = load ptr, ptr %i.m, align 8, !noalias !137 ; 2 uses
  %.sroa.714.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.714.0.copyload = load ptr, ptr %.sroa.714.0..sroa_idx, align 8, !noalias !137 ; 11 uses
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB1H_5types3any5PyAnyEEENtNtNtNtB14_4iter6traits8iterator8Iterator4nextB1H_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB1H_5types3any5PyAnyEEENtNtNtNtB14_4iter6traits8iterator8Iterator4nextB1H_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.714.0.copyload) ]
  %i.o = tail call noundef i32 @PyObject_SetAttrString(ptr noundef %1, ptr noundef nonnull %.sroa.0.0.copyload, ptr noundef nonnull %.sroa.714.0.copyload) #22
  %.not.i = icmp eq i32 %i.o, -1
  br i1 %.not.i, label %bb.d, label %_RINvNtCsdc6yCHiM2ZJ_4pyo33err17error_on_minusonelEB4_.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !142
  invoke void @_RNvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB4_5PyErr4take(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  %i.p = load i64, ptr %i.a, align 8, !range !4, !noalias !142, !noundef !5
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !10

bb.e:                                             ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.r, i64 48, i1 false), !noalias !142
  br label %bb.i

bb.f:                                             ; preds = %.noexc
  invoke void @_RNvNtCsdc6yCHiM2ZJ_4pyo33err15failed_to_fetch(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b)
          to label %bb.i unwind label %bb.h

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB1H_5types3any5PyAnyEEENtNtNtNtB14_4iter6traits8iterator8Iterator4nextB1H_.exit.thread: ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB1H_5types3any5PyAnyEEENtNtNtNtB14_4iter6traits8iterator8Iterator4nextB1H_.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEEBG_.exit12, %bb.a
  call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB1H_5types3any5PyAnyEEENtNtNtB14_3ops4drop4Drop4dropB1H_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 0, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtBG_5types3any5PyAnyEEBG_.exit, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtNtCskKLDkoKarTP_4core3ffi5c_str4CStrINtNtCsdc6yCHiM2ZJ_4pyo38instance2PyNtNtNtB1H_5types3any5PyAnyEEENtNtNtNtB14_4iter6traits8iterator8Iterator4nextB1H_.exit.thread
  ret void

bb.h:                                             ; preds = %bb.f, %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
end_hunk_0
