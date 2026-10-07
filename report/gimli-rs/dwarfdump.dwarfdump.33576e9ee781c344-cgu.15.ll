Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/dwarfdump.dwarfdump.33576e9ee781c344-cgu.15?download=true
inline.NumInlined: 532
inline.NumDeleted: 327
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB1G_3map3MapINtNtB1G_4skip4SkipNtNtCsG258MDvU3F_3std3env4ArgsENCINvMs_CsfcxKEGBgCs2_7getoptsNtB3I_7Options5parseB2M_Es0_0EINtNtB1K_6result6ResultzNtB3I_4FailEEE9from_iterCs4phXRVW1pDQ_9dwarfdump:bb.a
; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB5_9FilterMapIBV_INtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainINtNtB1l_4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtBb_6option6OptionINtNtNtB2m_6thread11join_handle10JoinHandleuEEEEENCINvNtCsC5c7nBIDK1_15crossbeam_utils6thread5scopeNCINvCs4phXRVW1pDQ_9dwarfdump15parallel_outputINtNtNtNtB1l_2io8buffered9bufwriter9BufWriterNtNtNtB2m_2io5stdio6StdoutEINtB1j_3VecINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB78_8relocate14RelocateReaderINtNtB78_12endian_slice11EndianSliceNtNtB7a_9endianity13RunTimeEndianERNtB53_13RelocationMapEjEENCINvB53_9dump_infoB7Q_B5I_E0E0uEs_0ENCB4c_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB53_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.5.i.i.i.i = alloca [16 x i8], align 8    ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !400
  store ptr %i.f, ptr %i.e, align 8, !noalias !401
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !noalias !401
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !402, !noalias !403, !nonnull !5, !noundef !5
  %.promoted.i.i.i = load ptr, ptr %0, align 8, !alias.scope !402, !noalias !403
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2W_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCsC5c7nBIDK1_15crossbeam_utils6thread5scopeNCINvCs4phXRVW1pDQ_9dwarfdump15parallel_outputINtNtNtNtB1j_2io8buffered9bufwriter9BufWriterNtNtNtB1V_2io5stdio6StdoutEINtNtB1j_3vec3VecINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB8t_8relocate14RelocateReaderINtNtB8t_12endian_slice11EndianSliceNtNtB8v_9endianity13RunTimeEndianERNtB6i_13RelocationMapEjEENCINvB6i_9dump_infoB9b_B6X_E0E0uEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2W_B4s_QNCB5r_s0_0E0E0B6i_.exit.i.i.i, %bb.a
  %i.l = phi ptr [ %i.n, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2W_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCsC5c7nBIDK1_15crossbeam_utils6thread5scopeNCINvCs4phXRVW1pDQ_9dwarfdump15parallel_outputINtNtNtNtB1j_2io8buffered9bufwriter9BufWriterNtNtNtB1V_2io5stdio6StdoutEINtNtB1j_3vec3VecINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB8t_8relocate14RelocateReaderINtNtB8t_12endian_slice11EndianSliceNtNtB8v_9endianity13RunTimeEndianERNtB6i_13RelocationMapEjEENCINvB6i_9dump_infoB9b_B6X_E0E0uEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2W_B4s_QNCB5r_s0_0E0E0B6i_.exit.i.i.i ], [ %.promoted.i.i.i, %bb.a ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !404)
  %i.m = icmp eq ptr %i.l, %i.i
  br i1 %i.m, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainINtNtB1c_4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2d_6thread11join_handle10JoinHandleuEEEEENCINvNtCsC5c7nBIDK1_15crossbeam_utils6thread5scopeNCINvCs4phXRVW1pDQ_9dwarfdump15parallel_outputINtNtNtNtB1c_2io8buffered9bufwriter9BufWriterNtNtNtB2d_2io5stdio6StdoutEINtB1a_3VecINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB6Z_8relocate14RelocateReaderINtNtB6Z_12endian_slice11EndianSliceNtNtB71_9endianity13RunTimeEndianERNtB4U_13RelocationMapEjEENCINvB4U_9dump_infoB7H_B5z_E0E0uEs_0ENtNtNtBa_6traits8iterator8Iterator8find_mapINtNtB1c_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EQNCB43_s0_0EB4U_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.n, ptr %0, align 8, !alias.scope !402, !noalias !403
  %i.o = load ptr, ptr %i.l, align 8, !noalias !405, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !406
  store ptr %i.o, ptr %i.d, align 8, !noalias !407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !407
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  %i.q = cmpxchg ptr %i.p, i32 0, i32 1 acquire monotonic, align 4, !noalias !408
  %i.r = extractvalue { i32, i1 } %i.q, 1
  br i1 %i.r, label %.noexc.i.i.i.i.i, label %bb.d, !prof !14

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.p)
          to label %.noexc.i.i.i.i.i unwind label %bb.f, !noalias !409

.noexc.i.i.i.i.i:                                 ; preds = %bb.d, %bb.c
  %i.s = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !410
  %i.t = and i64 %i.s, 9223372036854775807
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit.i.i.i.i.i.i, label %bb.e, !prof !14

bb.e:                                             ; preds = %.noexc.i.i.i.i.i
  %i.v = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #24
          to label %.noexc4.i.i.i.i.i unwind label %bb.f, !noalias !409

.noexc4.i.i.i.i.i:                                ; preds = %bb.e
  %i.w = xor i1 %i.v, true
  %i.x = zext i1 %i.w to i8
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit.i.i.i.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit.i.i.i.i.i.i: ; preds = %.noexc4.i.i.i.i.i, %.noexc.i.i.i.i.i
  %.sroa.01.0.i.i.i.i.i.i.i = phi i8 [ %i.x, %.noexc4.i.i.i.i.i ], [ 0, %.noexc.i.i.i.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.z = load atomic i8, ptr %i.y monotonic, align 1, !noalias !408
  %.not.i.i.i.i.i.i.i = icmp ne i8 %i.z, 0
  invoke void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtB6_6thread11join_handle10JoinHandleuEEENCNvMs9_BZ_BW_3new0ECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i1 noundef zeroext %.not.i.i.i.i.i.i.i, i8 noundef %.sroa.01.0.i.i.i.i.i.i.i, ptr noundef nonnull align 8 %i.p)
          to label %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtBb_6thread11join_handle10JoinHandleuEEE4lockCs4phXRVW1pDQ_9dwarfdump.exit.i.i.i.i.i unwind label %bb.f, !noalias !409

bb.f:                                             ; preds = %bb.p, %bb.n, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit.i.i.i.i.i.i, %bb.e, %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.i, %bb.f
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.aa, %bb.f ], [ %i.aj, %bb.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !411)
  call void @llvm.experimental.noalias.scope.decl(metadata !412)
  %i.ab = load ptr, ptr %i.d, align 8, !alias.scope !413, !noalias !407, !nonnull !5, !noundef !5
  %i.ac = atomicrmw sub ptr %i.ab, i64 1 release, align 8, !noalias !414
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECs4phXRVW1pDQ_9dwarfdump.exit.i.i.i.i.i

bb.g:                                             ; preds = %.body.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEE9drop_slowCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECs4phXRVW1pDQ_9dwarfdump.exit.i.i.i.i.i unwind label %bb.r, !noalias !409

_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtBb_6thread11join_handle10JoinHandleuEEE4lockCs4phXRVW1pDQ_9dwarfdump.exit.i.i.i.i.i: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !415)
  %i.ae = load i64, ptr %i.c, align 8, !range !16, !alias.scope !415, !noalias !407, !noundef !5
  %i.af = trunc nuw i64 %i.ae to i1
  br i1 %i.af, label %bb.h, label %bb.l, !prof !15

bb.h:                                             ; preds = %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtBb_6thread11join_handle10JoinHandleuEEE4lockCs4phXRVW1pDQ_9dwarfdump.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !416
  %i.ag = load ptr, ptr %i.j, align 8, !alias.scope !415, !noalias !407, !nonnull !5, !align !12, !noundef !5
  %i.ah = load i8, ptr %i.k, align 8, !range !13, !alias.scope !415, !noalias !407, !noundef !5
  store ptr %i.ag, ptr %i.b, align 8, !noalias !416
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.ah, ptr %i.ai, align 8, !noalias !416
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #26
          to label %bb.j unwind label %bb.i, !noalias !417

bb.i:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBI_6thread11join_handle10JoinHandleuEEEEECs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #21
          to label %.body.i.i.i.i.i unwind label %bb.k, !noalias !417

bb.j:                                             ; preds = %bb.h
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !417
  unreachable

bb.l:                                             ; preds = %_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtBb_6thread11join_handle10JoinHandleuEEE4lockCs4phXRVW1pDQ_9dwarfdump.exit.i.i.i.i.i
  %i.al = load ptr, ptr %i.j, align 8, !alias.scope !415, !noalias !407, !nonnull !5, !align !12, !noundef !5 ; 5 uses
  %i.am = load i8, ptr %i.k, align 8, !range !13, !alias.scope !415, !noalias !407, !noundef !5
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !407
  %.sroa.0.0.copyload2.i.i.i.i = load ptr, ptr %i.ao, align 8, !noalias !418 ; 2 uses
  %.sroa.5.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx3.i.i.i.i, i64 16, i1 false), !noalias !418
  store ptr null, ptr %i.ao, align 8, !noalias !409
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  br i1 %i.an, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !407
  %i.ar = and i64 %i.aq, 9223372036854775807
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.n, !prof !14

bb.n:                                             ; preds = %bb.m
  %i.at = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #24
          to label %.noexc7.i.i.i.i.i unwind label %bb.f, !noalias !409

.noexc7.i.i.i.i.i:                                ; preds = %bb.n
  br i1 %i.at, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.noexc7.i.i.i.i.i
  store atomic i8 1, ptr %i.ap monotonic, align 4, !noalias !409
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i: ; preds = %bb.o, %.noexc7.i.i.i.i.i, %bb.m, %bb.l
  %i.au = atomicrmw xchg ptr %i.al, i32 0 release, align 4, !noalias !409
  %i.av = icmp eq i32 %i.au, 2
  br i1 %i.av, label %bb.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECs4phXRVW1pDQ_9dwarfdump.exit.i.i.i.i.i, !prof !15

bb.p:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.al)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECs4phXRVW1pDQ_9dwarfdump.exit.i.i.i.i.i unwind label %bb.f, !noalias !409

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECs4phXRVW1pDQ_9dwarfdump.exit.i.i.i.i.i: ; preds = %bb.p, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !419)
  call void @llvm.experimental.noalias.scope.decl(metadata !420)
  %i.aw = load ptr, ptr %i.d, align 8, !alias.scope !421, !noalias !407, !nonnull !5, !noundef !5
  %i.ax = atomicrmw sub ptr %i.aw, i64 1 release, align 8, !noalias !422
  %i.ay = icmp eq i64 %i.ax, 1
  br i1 %i.ay, label %bb.q, label %_RNCINvNtCsC5c7nBIDK1_15crossbeam_utils6thread5scopeNCINvCs4phXRVW1pDQ_9dwarfdump15parallel_outputINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtB1G_3vec3VecINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB3w_8relocate14RelocateReaderINtNtB3w_12endian_slice11EndianSliceNtNtB3y_9endianity13RunTimeEndianERNtBS_13RelocationMapEjEENCINvBS_9dump_infoB4e_B1x_E0E0uEs_0BS_.exit.i.i.i.i

bb.q:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECs4phXRVW1pDQ_9dwarfdump.exit.i.i.i.i.i
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEE9drop_slowCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #24, !noalias !409
  br label %_RNCINvNtCsC5c7nBIDK1_15crossbeam_utils6thread5scopeNCINvCs4phXRVW1pDQ_9dwarfdump15parallel_outputINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtB1G_3vec3VecINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB3w_8relocate14RelocateReaderINtNtB3w_12endian_slice11EndianSliceNtNtB3y_9endianity13RunTimeEndianERNtBS_13RelocationMapEjEENCINvBS_9dump_infoB4e_B1x_E0E0uEs_0BS_.exit.i.i.i.i

bb.r:                                             ; preds = %bb.g
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !409
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECs4phXRVW1pDQ_9dwarfdump.exit.i.i.i.i.i: ; preds = %bb.g, %.body.i.i.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i.i

_RNCINvNtCsC5c7nBIDK1_15crossbeam_utils6thread5scopeNCINvCs4phXRVW1pDQ_9dwarfdump15parallel_outputINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtB1G_3vec3VecINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB3w_8relocate14RelocateReaderINtNtB3w_12endian_slice11EndianSliceNtNtB3y_9endianity13RunTimeEndianERNtBS_13RelocationMapEjEENCINvBS_9dump_infoB4e_B1x_E0E0uEs_0BS_.exit.i.i.i.i: ; preds = %bb.q, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECs4phXRVW1pDQ_9dwarfdump.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !406
  %.not.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload2.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2W_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCsC5c7nBIDK1_15crossbeam_utils6thread5scopeNCINvCs4phXRVW1pDQ_9dwarfdump15parallel_outputINtNtNtNtB1j_2io8buffered9bufwriter9BufWriterNtNtNtB1V_2io5stdio6StdoutEINtNtB1j_3vec3VecINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB8t_8relocate14RelocateReaderINtNtB8t_12endian_slice11EndianSliceNtNtB8v_9endianity13RunTimeEndianERNtB6i_13RelocationMapEjEENCINvB6i_9dump_infoB9b_B6X_E0E0uEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2W_B4s_QNCB5r_s0_0E0E0B6i_.exit.i.i.i, label %bb.s

bb.s:                                             ; preds = %_RNCINvNtCsC5c7nBIDK1_15crossbeam_utils6thread5scopeNCINvCs4phXRVW1pDQ_9dwarfdump15parallel_outputINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtB1G_3vec3VecINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB3w_8relocate14RelocateReaderINtNtB3w_12endian_slice11EndianSliceNtNtB3y_9endianity13RunTimeEndianERNtBS_13RelocationMapEjEENCINvBS_9dump_infoB4e_B1x_E0E0uEs_0BS_.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !423
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.46.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i, i64 16, i1 false), !noalias !406
  store ptr %.sroa.0.0.copyload2.i.i.i.i, ptr %i.a, align 8, !noalias !424
  %i.ba = call { ptr, ptr } @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvNtCsC5c7nBIDK1_15crossbeam_utils6thread5scopeNCINvCs4phXRVW1pDQ_9dwarfdump15parallel_outputINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtB2v_3vec3VecINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB4l_8relocate14RelocateReaderINtNtB4l_12endian_slice11EndianSliceNtNtB4n_9endianity13RunTimeEndianERNtB1H_13RelocationMapEjEENCINvB1H_9dump_infoB53_B2m_E0E0uEs0_0INtB7_5FnMutTINtNtNtB3r_6thread11join_handle10JoinHandleuEEE8call_mutB1H_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !425 ; 2 uses
  %i.bb = extractvalue { ptr, ptr } %i.ba, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !423
  %.not.i.i.i.i.i = icmp eq ptr %i.bb, null
  %i.bc = extractvalue { ptr, ptr } %i.ba, 1
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr undef, ptr %i.bc
  br label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2W_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCsC5c7nBIDK1_15crossbeam_utils6thread5scopeNCINvCs4phXRVW1pDQ_9dwarfdump15parallel_outputINtNtNtNtB1j_2io8buffered9bufwriter9BufWriterNtNtNtB1V_2io5stdio6StdoutEINtNtB1j_3vec3VecINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB8t_8relocate14RelocateReaderINtNtB8t_12endian_slice11EndianSliceNtNtB8v_9endianity13RunTimeEndianERNtB6i_13RelocationMapEjEENCINvB6i_9dump_infoB9b_B6X_E0E0uEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2W_B4s_QNCB5r_s0_0E0E0B6i_.exit.i.i.i

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2W_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCsC5c7nBIDK1_15crossbeam_utils6thread5scopeNCINvCs4phXRVW1pDQ_9dwarfdump15parallel_outputINtNtNtNtB1j_2io8buffered9bufwriter9BufWriterNtNtNtB1V_2io5stdio6StdoutEINtNtB1j_3vec3VecINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB8t_8relocate14RelocateReaderINtNtB8t_12endian_slice11EndianSliceNtNtB8v_9endianity13RunTimeEndianERNtB6i_13RelocationMapEjEENCINvB6i_9dump_infoB9b_B6X_E0E0uEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2W_B4s_QNCB5r_s0_0E0E0B6i_.exit.i.i.i: ; preds = %bb.s, %_RNCINvNtCsC5c7nBIDK1_15crossbeam_utils6thread5scopeNCINvCs4phXRVW1pDQ_9dwarfdump15parallel_outputINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtB1G_3vec3VecINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB3w_8relocate14RelocateReaderINtNtB3w_12endian_slice11EndianSliceNtNtB3y_9endianity13RunTimeEndianERNtBS_13RelocationMapEjEENCINvBS_9dump_infoB4e_B1x_E0E0uEs_0BS_.exit.i.i.i.i
  %.sroa.3.0.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i, %bb.s ], [ undef, %_RNCINvNtCsC5c7nBIDK1_15crossbeam_utils6thread5scopeNCINvCs4phXRVW1pDQ_9dwarfdump15parallel_outputINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtB1G_3vec3VecINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB3w_8relocate14RelocateReaderINtNtB3w_12endian_slice11EndianSliceNtNtB3y_9endianity13RunTimeEndianERNtBS_13RelocationMapEjEENCINvBS_9dump_infoB4e_B1x_E0E0uEs_0BS_.exit.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i8.i.i.i = phi ptr [ %i.bb, %bb.s ], [ null, %_RNCINvNtCsC5c7nBIDK1_15crossbeam_utils6thread5scopeNCINvCs4phXRVW1pDQ_9dwarfdump15parallel_outputINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEINtNtB1G_3vec3VecINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB3w_8relocate14RelocateReaderINtNtB3w_12endian_slice11EndianSliceNtNtB3y_9endianity13RunTimeEndianERNtBS_13RelocationMapEjEENCINvBS_9dump_infoB4e_B1x_E0E0uEs_0BS_.exit.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i)
  %.not.i9.i.i.i = icmp eq ptr %.sroa.0.0.i8.i.i.i, null
  br i1 %.not.i9.i.i.i, label %bb.b, label %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCsC5c7nBIDK1_15crossbeam_utils6thread5scopeNCINvCs4phXRVW1pDQ_9dwarfdump15parallel_outputINtNtNtNtB1i_2io8buffered9bufwriter9BufWriterNtNtNtB2j_2io5stdio6StdoutEINtB1g_3VecINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB75_8relocate14RelocateReaderINtNtB75_12endian_slice11EndianSliceNtNtB77_9endianity13RunTimeEndianERNtB50_13RelocationMapEjEENCINvB50_9dump_infoB7N_B5F_E0E0uEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvBau_8find_map5checkB3k_INtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EQNCB49_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowBbG_EEB50_.exit.i

_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCsC5c7nBIDK1_15crossbeam_utils6thread5scopeNCINvCs4phXRVW1pDQ_9dwarfdump15parallel_outputINtNtNtNtB1i_2io8buffered9bufwriter9BufWriterNtNtNtB2j_2io5stdio6StdoutEINtB1g_3VecINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB75_8relocate14RelocateReaderINtNtB75_12endian_slice11EndianSliceNtNtB77_9endianity13RunTimeEndianERNtB50_13RelocationMapEjEENCINvB50_9dump_infoB7N_B5F_E0E0uEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvBau_8find_map5checkB3k_INtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EQNCB49_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowBbG_EEB50_.exit.i: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2W_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCsC5c7nBIDK1_15crossbeam_utils6thread5scopeNCINvCs4phXRVW1pDQ_9dwarfdump15parallel_outputINtNtNtNtB1j_2io8buffered9bufwriter9BufWriterNtNtNtB1V_2io5stdio6StdoutEINtNtB1j_3vec3VecINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB8t_8relocate14RelocateReaderINtNtB8t_12endian_slice11EndianSliceNtNtB8v_9endianity13RunTimeEndianERNtB6i_13RelocationMapEjEENCINvB6i_9dump_infoB9b_B6X_E0E0uEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2W_B4s_QNCB5r_s0_0E0E0B6i_.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.i.i.i.i) ]
  %i.bd = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i8.i.i.i, 0
  br label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainINtNtB1c_4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2d_6thread11join_handle10JoinHandleuEEEEENCINvNtCsC5c7nBIDK1_15crossbeam_utils6thread5scopeNCINvCs4phXRVW1pDQ_9dwarfdump15parallel_outputINtNtNtNtB1c_2io8buffered9bufwriter9BufWriterNtNtNtB2d_2io5stdio6StdoutEINtB1a_3VecINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB6Z_8relocate14RelocateReaderINtNtB6Z_12endian_slice11EndianSliceNtNtB71_9endianity13RunTimeEndianERNtB4U_13RelocationMapEjEENCINvB4U_9dump_infoB7H_B5z_E0E0uEs_0ENtNtNtBa_6traits8iterator8Iterator8find_mapINtNtB1c_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EQNCB43_s0_0EB4U_.exit

_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainINtNtB1c_4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2d_6thread11join_handle10JoinHandleuEEEEENCINvNtCsC5c7nBIDK1_15crossbeam_utils6thread5scopeNCINvCs4phXRVW1pDQ_9dwarfdump15parallel_outputINtNtNtNtB1c_2io8buffered9bufwriter9BufWriterNtNtNtB2d_2io5stdio6StdoutEINtB1a_3VecINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB6Z_8relocate14RelocateReaderINtNtB6Z_12endian_slice11EndianSliceNtNtB71_9endianity13RunTimeEndianERNtB4U_13RelocationMapEjEENCINvB4U_9dump_infoB7H_B5z_E0E0uEs_0ENtNtNtBa_6traits8iterator8Iterator8find_mapINtNtB1c_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EQNCB43_s0_0EB4U_.exit: ; preds = %bb.b, %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCsC5c7nBIDK1_15crossbeam_utils6thread5scopeNCINvCs4phXRVW1pDQ_9dwarfdump15parallel_outputINtNtNtNtB1i_2io8buffered9bufwriter9BufWriterNtNtNtB2j_2io5stdio6StdoutEINtB1g_3VecINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB75_8relocate14RelocateReaderINtNtB75_12endian_slice11EndianSliceNtNtB77_9endianity13RunTimeEndianERNtB50_13RelocationMapEjEENCINvB50_9dump_infoB7N_B5F_E0E0uEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvBau_8find_map5checkB3k_INtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EQNCB49_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowBbG_EEB50_.exit.i
  %.10.i = phi ptr [ %.sroa.3.0.i.i.i.i, %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCsC5c7nBIDK1_15crossbeam_utils6thread5scopeNCINvCs4phXRVW1pDQ_9dwarfdump15parallel_outputINtNtNtNtB1i_2io8buffered9bufwriter9BufWriterNtNtNtB2j_2io5stdio6StdoutEINtB1g_3VecINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB75_8relocate14RelocateReaderINtNtB75_12endian_slice11EndianSliceNtNtB77_9endianity13RunTimeEndianERNtB50_13RelocationMapEjEENCINvB50_9dump_infoB7N_B5F_E0E0uEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvBau_8find_map5checkB3k_INtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EQNCB49_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowBbG_EEB50_.exit.i ], [ undef, %bb.b ]
  %i.be = phi { ptr, ptr } [ %i.bd, %_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCsC5c7nBIDK1_15crossbeam_utils6thread5scopeNCINvCs4phXRVW1pDQ_9dwarfdump15parallel_outputINtNtNtNtB1i_2io8buffered9bufwriter9BufWriterNtNtNtB2j_2io5stdio6StdoutEINtB1g_3VecINtNtNtCsi68uqYEhoRA_5gimli4read4unit10UnitHeaderINtNtB75_8relocate14RelocateReaderINtNtB75_12endian_slice11EndianSliceNtNtB77_9endianity13RunTimeEndianERNtB50_13RelocationMapEjEENCINvB50_9dump_infoB7N_B5F_E0E0uEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvBau_8find_map5checkB3k_INtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EQNCB49_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowBbG_EEB50_.exit.i ], [ { ptr null, ptr poison }, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !400
  %i.bf = insertvalue { ptr, ptr } %i.be, ptr %.10.i, 1
  ret { ptr, ptr } %i.bf
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i32 @_RNvXs11_NtCskKLDkoKarTP_4core5arrayAhj4_NtNtB8_7default7Default7defaultCs4phXRVW1pDQ_9dwarfdump() unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i16 @_RNvXs13_NtCskKLDkoKarTP_4core5arrayAhj2_NtNtB8_7default7Default7defaultCs4phXRVW1pDQ_9dwarfdump() unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  ret i16 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i8 @_RNvXs14_NtCskKLDkoKarTP_4core5arrayAhj1_NtNtB8_7default7Default7defaultCs4phXRVW1pDQ_9dwarfdump() unnamed_addr #4 {
bb.a:
  ret i8 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXs7_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB11_4sync3ArcIBL_INtNtCskKLDkoKarTP_4core6option6OptionINtNtNtBb_6thread11join_handle10JoinHandleuEEEEEENtNtB1U_7default7Default7defaultCs4phXRVW1pDQ_9dwarfdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 5), (8, 32)) %0) unnamed_addr #5 {
bb.a:
  store i32 0, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.58.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RNvXs7_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCskKLDkoKarTP_4core6option6OptionuEENtNtB11_7default7Default7defaultCs4phXRVW1pDQ_9dwarfdump() unnamed_addr #4 {
bb.a:
  ret i64 0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs8_NtCsexYYUdYSQU6_5alloc5sliceINtNtB7_3vec3VecTyINtNtCskKLDkoKarTP_4core6result6ResultINtNtB7_4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtB1M_5ErrorEEEINtNtNtNtBU_5slice4sort6stable8BufGuardBN_E13with_capacityCs4phXRVW1pDQ_9dwarfdump(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %1, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
  %i.b = load i64, ptr %i.a, align 8, !range !16, !noundef !5
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !17, !noundef !5 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4phXRVW1pDQ_9dwarfdump.exit, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #26
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4phXRVW1pDQ_9dwarfdump.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5
  %i.i = icmp ule i64 %1, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.e, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.k, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvXs8_NtCsexYYUdYSQU6_5alloc5sliceINtNtB7_3vec3VecTyINtNtCskKLDkoKarTP_4core6result6ResultINtNtB7_4sync3ArcNtNtNtCsi68uqYEhoRA_5gimli4read6abbrev13AbbreviationsENtB1M_5ErrorEEEINtNtNtNtBU_5slice4sort6stable8BufGuardBN_E19as_uninit_slice_mutCs4phXRVW1pDQ_9dwarfdump(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.d
  %i.f = load i64, ptr %0, align 8, !range !7, !noundef !5
  %i.g = sub i64 %i.f, %i.d
  %i.h = insertvalue { ptr, i64 } poison, ptr %i.e, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %i.g, 1
  ret { ptr, i64 } %i.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_RNvXsM_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_14AttributeValueINtNtB7_8relocate14RelocateReaderINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianERNtCs4phXRVW1pDQ_9dwarfdump13RelocationMapEjENtNtCskKLDkoKarTP_4core5clone5Clone5cloneB2F_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 16 captures(none) dereferenceable(64) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 16, !range !493, !noundef !5 ; 2 uses
  switch i64 %i.a, label %default.unreachable40 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.h
    i64 7, label %bb.i
    i64 8, label %bb.j
    i64 9, label %bb.k
    i64 10, label %bb.l
    i64 11, label %bb.m
    i64 12, label %bb.n
    i64 13, label %bb.o
    i64 14, label %bb.p
    i64 15, label %bb.q
    i64 16, label %bb.r
    i64 17, label %bb.s
    i64 18, label %bb.t
    i64 19, label %bb.u
    i64 20, label %bb.v
    i64 21, label %bb.w
    i64 22, label %bb.x
    i64 23, label %bb.y
    i64 24, label %bb.z
    i64 25, label %bb.aa
    i64 26, label %bb.ab
    i64 27, label %bb.ac
    i64 28, label %bb.ad
    i64 29, label %bb.ae
    i64 30, label %bb.af
    i64 31, label %bb.ag
    i64 32, label %bb.ah
    i64 33, label %bb.ai
    i64 34, label %bb.aj
    i64 35, label %bb.ak
    i64 36, label %bb.al
    i64 37, label %bb.am
    i64 38, label %bb.an
    i64 39, label %bb.ao
    i64 40, label %bb.ap
    i64 41, label %bb.aq
    i64 42, label %bb.ar
    i64 43, label %bb.as
    i64 44, label %bb.at
    i64 45, label %bb.au
    i64 46, label %bb.av
  ]

default.unreachable40:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.d, align 8
  br label %bb.aw

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !494, !noalias !495, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i = load i8, ptr %i.h, align 16, !range !13, !alias.scope !494, !noalias !495, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !496, !noalias !497, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load i64, ptr %i.k, align 16, !alias.scope !496, !noalias !497, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val.i1.i = load i8, ptr %i.m, align 8, !range !13, !alias.scope !496, !noalias !497, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load <2 x ptr>, ptr %i.e, align 8, !alias.scope !498, !noalias !499
  store <2 x ptr> %i.o, ptr %i.n, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.g, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.val.i.i, ptr %.sroa.6.0..sroa_idx, align 16
  %.sroa.713.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.j, ptr %.sroa.713.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.l, ptr %.sroa.8.0..sroa_idx, align 16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %.val.i1.i, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.aw

bb.d:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i8, ptr %i.p, align 8, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.q, ptr %i.r, align 8
  br label %bb.aw

bb.e:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i16, ptr %i.s, align 8, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.t, ptr %i.u, align 8
  br label %bb.aw

bb.f:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i32, ptr %i.v, align 8, !noundef !5
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.w, ptr %i.x, align 8
end_hunk_0
