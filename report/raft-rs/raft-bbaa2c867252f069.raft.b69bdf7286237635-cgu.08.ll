Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raft-rs/original/raft-bbaa2c867252f069.raft.b69bdf7286237635-cgu.08?download=true
inline.NumInlined: 95
inline.NumDeleted: 57
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfG1pxJcRFT5_4raft:bb.a
; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazy7destroyINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCsexYYUdYSQU6_5alloc6string6StringEECsfG1pxJcRFT5_4raft(ptr noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !4, !noundef !5
  store i8 2, ptr %i.a, align 1
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCsexYYUdYSQU6_5alloc6string6StringEE0ECsfG1pxJcRFT5_4raft.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellNtNtCsexYYUdYSQU6_5alloc6string6StringEECsfG1pxJcRFT5_4raft.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellNtNtCsexYYUdYSQU6_5alloc6string6StringEECsfG1pxJcRFT5_4raft.exit.i.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCsexYYUdYSQU6_5alloc6string6StringEE0ECsfG1pxJcRFT5_4raft.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellNtNtCsexYYUdYSQU6_5alloc6string6StringEECsfG1pxJcRFT5_4raft.exit.i.i
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.c
  invoke fastcc void @_RNvXNvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop() #19
          to label %.noexc1.i unwind label %bb.f

.noexc1.i:                                        ; preds = %.body.i
  unreachable

bb.f:                                             ; preds = %.body.i
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCskKLDkoKarTP_4core4cell7RefCellNtNtCsexYYUdYSQU6_5alloc6string6StringEE0ECsfG1pxJcRFT5_4raft.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellNtNtCsexYYUdYSQU6_5alloc6string6StringEECsfG1pxJcRFT5_4raft.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6cloned6ClonedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4IteryEENCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB2m_7HashSetyINtNtBc_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEINtNtNtBa_6traits7collect6ExtendyE6extendBX_E0ENtNtB4g_8iterator8Iterator4folduNCINvNvB4W_8for_each4callTyuENCINvXs1i_NtB2o_3mapINtB65_7HashMapyuB36_EIB4c_B5R_E6extendBN_E0E0ECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4IteryEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldyTyuEuNCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB3c_7HashSetyINtNtBb_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEINtNtB20_7collect6ExtendyE6extendBP_E0NCINvNvB1W_8for_each4callB2Y_NCINvXs1i_NtB3e_3mapINtB6g_7HashMapyuB3W_EIB52_B2Y_E6extendINtB2F_3MapBP_B33_EE0E0E0ECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCsG258MDvU3F_3std11collections4hash3set5DrainyENCINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB20_7HashSetyINtNtBc_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEINtNtNtBa_6traits7collect6ExtendyE6extendBX_E0ENtNtB3U_8iterator8Iterator4folduNCINvNvB4A_8for_each4callTyuENCINvXs1i_NtB22_3mapINtB5J_7HashMapyuB2K_EIB3Q_B5v_E6extendBN_E0E0ECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvXsw_NtCsjqcU1oJFKXj_9hashbrown3setINtB6_5DrainyENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtBU_8adapters3map8map_foldyTyuEuNCINvXs8_B6_INtB6_7HashSetyINtNtBW_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEINtNtBS_7collect6ExtendyE6extendINtNtNtNtCsG258MDvU3F_3std11collections4hash3set5DrainyEE0NCINvNvBO_8for_each4callB2o_NCINvXs1i_NtB8_3mapINtB63_7HashMapyuB2U_EIB40_B2o_E6extendINtB1U_3MapB4v_B2t_EE0E0E0ECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB5_5ChainINtNtNtNtCsG258MDvU3F_3std11collections4hash3set10DifferenceyINtNtBb_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEB10_ENtNtNtB9_6traits8iterator8Iterator4foldjNCNvYINtB13_19SymmetricDifferenceyB1Z_EB39_5count0ECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !noundef !5
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.a, ptr %i.b, align 8, !noalias !42
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !39, !noalias !44, !nonnull !5, !align !14, !noundef !5
  %i.f = call noundef i64 @_RINvXsU_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_4KeysyuENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvXsF_NtNtNtCsG258MDvU3F_3std11collections4hash3setINtB1Y_10DifferenceyINtNtBW_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEBO_4foldjQNCNvYINtB1Y_19SymmetricDifferenceyB31_EBO_5count0E0ECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i64 [ %i.f, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !noundef !5
  %.not7 = icmp eq ptr %i.h, null
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  %i.i = call noundef i64 @_RINvXsU_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_4KeysyuENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldjNCINvXsF_NtNtNtCsG258MDvU3F_3std11collections4hash3setINtB1Y_10DifferenceyINtNtBW_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEBO_4foldjNCNvYINtB1Y_19SymmetricDifferenceyB31_EBO_5count0E0ECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.g, i64 noundef %.sroa.0.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.3.0.copyload, ptr noalias nofree noundef nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.04.0 = phi i64 [ %i.i, %bb.d ], [ %.sroa.0.0, %bb.c ]
  ret i64 %.sroa.04.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNSNvYNvCseia3OTXDmOe_9slog_term15timestamp_localINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQDNtNtNtBS_2io5write5WriteEL_EE9call_once6vtableCsfG1pxJcRFT5_4raft(ptr nofree readnone captures(none) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %2) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef ptr @_RNvCseia3OTXDmOe_9slog_term15timestamp_local(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %2)
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNvCseia3OTXDmOe_9slog_term16print_msg_headerINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRDNtB6_21ThreadSafeTimestampFnp6OutputINtNtBT_6result6ResultuNtNtNtBT_2io5error5ErrorEEL_QDNtB6_15RecordDecoratorEL_RNtCsdBFbsshtEF1_4slog6RecordbEE9call_once6vtableCsfG1pxJcRFT5_4raft(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr nofree readnone captures(none) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, ptr noundef nonnull %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %6, i1 noundef zeroext %7) unnamed_addr #3 {
bb.a:
  tail call void @_RNvCseia3OTXDmOe_9slog_term16print_msg_header(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, ptr noundef nonnull %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %6, i1 noundef zeroext %7)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs6_Cseia3OTXDmOe_9slog_termINtB5_13CompactFormatNtB5_13TermDecoratorE3newCsfG1pxJcRFT5_4raft(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 72)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @12, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @13, ptr %i.d, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtCsfG1pxJcRFT5_4raft7storage14MemStorageCoreE3newB1c_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load atomic i8, ptr %i.a monotonic, align 8
  %.not = icmp ne i8 %i.b, 0
  tail call void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultuINtNtB2_6rwlock15RwLockReadGuardNtNtCsfG1pxJcRFT5_4raft7storage14MemStorageCoreENCNvMsd_BP_BM_3new0EB1m_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %.not, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCsfG1pxJcRFT5_4raft7tracker5stateNtB2_13ProgressStateNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !4, !noundef !5
  %i.b = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !align !14, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !5, !nonnull !5 ; 3 uses
  switch i8 %i.a, label %default.unreachable36 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.e
  ]

default.unreachable36:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 10) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.b ], [ %i.i, %bb.e ], [ %i.h, %bb.d ]
  ret i1 %.sroa.0.0.in

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 14) #19
  br label %bb.c

bb.e:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 13) #19
  br label %bb.c
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNvXNvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop() unnamed_addr #5 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = call fastcc noundef ptr @_RNvYNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull %i.a, ptr noundef nonnull @24, ptr noundef nonnull inttoptr (i64 123 to ptr))
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfG1pxJcRFT5_4raft(ptr %i.b)
  call void @_RNvNtCsG258MDvU3F_3std7process5abort() #20
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXsb_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_6RwLockNtNtCsfG1pxJcRFT5_4raft7storage14MemStorageCoreENtNtCskKLDkoKarTP_4core7default7Default7defaultB12_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([280 x i8]) align 8 captures(none) dereferenceable(280) initializes((0, 9), (16, 129), (136, 241), (248, 249), (272, 274)) %0) unnamed_addr #6 {
bb.a:
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.511.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.713.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.713.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.915.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.915.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.1117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.1117.0..sroa_idx, i8 0, i64 25, i1 false)
  %.sroa.1420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %.sroa.1420.0..sroa_idx, i8 0, i64 49, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %0, i8 0, i64 9, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.612.0..sroa_idx, align 8
  %.sroa.814.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.814.0..sroa_idx, align 8
  %.sroa.1016.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.1016.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i8 0, i64 48, i1 false)
  %.sroa.1319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.1319.0..sroa_idx, align 8
  %.sroa.1622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i8 -1, ptr %.sroa.1622.0..sroa_idx, align 8
  %.sroa.1824.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i8 0, ptr %.sroa.1824.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 273
  store i8 0, ptr %.sroa.19.0..sroa_idx, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsh_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtCsfG1pxJcRFT5_4raft7storage14MemStorageCoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1c_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !45, !noundef !5 ; 2 uses
  %i.c = atomicrmw sub ptr %i.b, i32 1 release, align 4
  %i.d = add i32 %i.c, -1                         ; 2 uses
  %i.e = and i32 %i.d, -1073741825
  %or.cond = icmp eq i32 %i.e, -2147483648
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !46

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.b, i32 noundef %i.d)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsi_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardNtNtCsfG1pxJcRFT5_4raft7storage14MemStorageCoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1d_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !14, !noundef !5 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i8, ptr %i.c, align 8, !range !25, !noundef !5
  %i.d = trunc nuw i8 %.val to i1
  br i1 %i.d, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.f = and i64 %i.e, 9223372036854775807
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #21
  br i1 %i.h, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.b monotonic, align 8
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.i = atomicrmw sub ptr %i.a, i32 1073741823 release, align 4
  %i.j = add i32 %i.i, -1073741823                ; 2 uses
  %or.cond.not = icmp ult i32 %i.j, 1073741824
  br i1 %or.cond.not, label %bb.f, label %bb.e, !prof !47

bb.e:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.a, i32 noundef %i.j)
  br label %bb.f

bb.f:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_RNvYNtCseia3OTXDmOe_9slog_term10SerializerNtCsdBFbsshtEF1_4slog10Serializer10emit_bytesCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4, i8 noundef range(i8 0, 3) %5) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %3, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %4, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i8 %5, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsK_CsdBFbsshtEF1_4slogNtB5_10BytesAsFmtNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  store ptr @25, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.a, ptr %i.f, align 8
  %i.g = call { i64, ptr } @_RNvXs9_Cseia3OTXDmOe_9slog_termNtB5_10SerializerNtCsdBFbsshtEF1_4slog10Serializer14emit_arguments(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret { i64, ptr } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_RNvYNtCseia3OTXDmOe_9slog_term10SerializerNtCsdBFbsshtEF1_4slog10Serializer10emit_errorCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noundef nonnull %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %3, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %4, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsL_CsdBFbsshtEF1_4slogNtB5_10ErrorAsFmtNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  store ptr @25, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.a, ptr %i.e, align 8
  %i.f = call { i64, ptr } @_RNvXs9_Cseia3OTXDmOe_9slog_termNtB5_10SerializerNtCsdBFbsshtEF1_4slog10Serializer14emit_arguments(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret { i64, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_RNvYNtCseia3OTXDmOe_9slog_term10SerializerNtCsdBFbsshtEF1_4slog10Serializer10emit_serdeCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noundef nonnull %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !5, !nonnull !5
  %i.d = call { i64, ptr } %i.c(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(208) @26) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_RNvYNtCseia3OTXDmOe_9slog_term10SerializerNtCsdBFbsshtEF1_4slog10Serializer9emit_i128CsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i128 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 16               ; 2 uses
  store i128 %3, ptr %i.c, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs_NtNtCskKLDkoKarTP_4core3fmt3numnNtB6_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  store ptr @25, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.a, ptr %i.d, align 8
  %i.e = call { i64, ptr } @_RNvXs9_Cseia3OTXDmOe_9slog_termNtB5_10SerializerNtCsdBFbsshtEF1_4slog10Serializer14emit_arguments(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, ptr } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_RNvYNtCseia3OTXDmOe_9slog_term10SerializerNtCsdBFbsshtEF1_4slog10Serializer9emit_u128CsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i128 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 16               ; 2 uses
  store i128 %3, ptr %i.c, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXNtNtCskKLDkoKarTP_4core3fmt3numoNtB4_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  store ptr @25, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.a, ptr %i.d, align 8
  %i.e = call { i64, ptr } @_RNvXs9_Cseia3OTXDmOe_9slog_termNtB5_10SerializerNtCsdBFbsshtEF1_4slog10Serializer14emit_arguments(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, ptr } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal noundef ptr @_RNvYNtCseia3OTXDmOe_9slog_term19TermRecordDecoratorNtB4_15RecordDecorator11start_commaCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef ptr @_RNvXsy_Cseia3OTXDmOe_9slog_termNtB5_19TermRecordDecoratorNtB5_15RecordDecorator5reset(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef ptr @_RNvYNtCseia3OTXDmOe_9slog_term19TermRecordDecoratorNtB4_15RecordDecorator11start_valueCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef ptr @_RNvXsy_Cseia3OTXDmOe_9slog_termNtB5_19TermRecordDecoratorNtB5_15RecordDecorator5reset(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef ptr @_RNvYNtCseia3OTXDmOe_9slog_term19TermRecordDecoratorNtB4_15RecordDecorator14start_locationCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
end_hunk_0
