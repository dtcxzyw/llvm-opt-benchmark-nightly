Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/native_ping.native_ping.ca6b3006c5f3e94f-cgu.08?download=true
inline.NumInlined: 2541
inline.NumDeleted: 1083
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RINvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime2io6driverNtB6_6Handle17deregister_sourceNtNtNtNtCsc2nZRnW43Xw_3mio3sys4unix8sourcefd8SourceFdECshnt8FRa5Rut_11native_ping:bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEECshnt8FRa5Rut_11native_ping.exit

bb.c:                                             ; preds = %bb.a
  %i.g = invoke noundef zeroext i1 @_RNvMs1_NtCsbNxlIVSzhBv_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.c, i64 undef, i32 noundef -1)
          to label %bb.d unwind label %bb.b       ; 0 uses

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = invoke noundef zeroext i1 @_RNvMNtNtNtCsc13h7DQFCSE_5tokio7runtime2io16registration_setNtB2_15RegistrationSet10deregister(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.l = extractvalue { i8, i1 } %i.k, 1
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEECshnt8FRa5Rut_11native_ping.exit, label %bb.f, !prof !18

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs1_NtCsbNxlIVSzhBv_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEECshnt8FRa5Rut_11native_ping.exit unwind label %bb.l

bb.g:                                             ; preds = %bb.d
  %i.m = cmpxchg ptr %i.c, i8 1, i8 0 release monotonic, align 1
  %i.n = extractvalue { i8, i1 } %i.m, 1          ; 2 uses
  br i1 %i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEECshnt8FRa5Rut_11native_ping.exit6, label %bb.i, !prof !18

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs1_NtCsbNxlIVSzhBv_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEECshnt8FRa5Rut_11native_ping.exit6 unwind label %bb.b

bb.j:                                             ; preds = %bb.g
  br i1 %i.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEECshnt8FRa5Rut_11native_ping.exit8, label %bb.k, !prof !18

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs1_NtCsbNxlIVSzhBv_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.c, i1 noundef zeroext false)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEECshnt8FRa5Rut_11native_ping.exit8 unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEECshnt8FRa5Rut_11native_ping.exit6: ; preds = %bb.i, %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEECshnt8FRa5Rut_11native_ping.exit8
  ret ptr %i.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEECshnt8FRa5Rut_11native_ping.exit8: ; preds = %bb.j, %bb.k
  invoke void @_RNvMs0_NtNtNtCsc13h7DQFCSE_5tokio7runtime2io6driverNtB5_6Handle6unpark(ptr noundef nonnull align 8 %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEECshnt8FRa5Rut_11native_ping.exit6 unwind label %bb.b

bb.l:                                             ; preds = %bb.f, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEECshnt8FRa5Rut_11native_ping.exit
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsc13h7DQFCSE_5tokio4loom3std11parking_lot10MutexGuardNtNtNtNtBK_7runtime2io16registration_set6SyncedEECshnt8FRa5Rut_11native_ping.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvMs2_NtCsjlQi1lXaxay_9once_cell3impINtB6_8OnceCellNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr11record_data5RDataE10initializeNCINvMs4_NtB8_4syncINtB26_8OnceCellBP_E11get_or_initNCNvMs9_B26_INtB26_4LazyBP_E5force0E0NtNvMs4_B26_IB2h_pE11get_or_init4VoidECshnt8FRa5Rut_11native_ping(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.g, align 8
  call void @_RNvNtCsjlQi1lXaxay_9once_cell3imp18initialize_or_wait(ptr noundef nonnull align 8 %0, ptr noundef nonnull %i.b, ptr nonnull @4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvMs2_NtCsjlQi1lXaxay_9once_cell3impINtB6_8OnceCellNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain5usage9ZoneUsageE10initializeNCINvMs4_NtB8_4syncINtB2c_8OnceCellBP_E11get_or_initNCNvMs9_B2c_INtB2c_4LazyBP_E5force0E0NtNvMs4_B2c_IB2n_pE11get_or_init4VoidECshnt8FRa5Rut_11native_ping(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.g, align 8
  call void @_RNvNtCsjlQi1lXaxay_9once_cell3imp18initialize_or_wait(ptr noundef nonnull align 8 %0, ptr noundef nonnull %i.b, ptr nonnull @5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvMs5_NtCs4LZN9PPmi2I_11hickory_net5errorNtB6_9NoRecords3newINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsbTgMbcnmcyu_13hickory_proto2op5query5QueryEECshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 4), (8, 32), (40, 48), (56, 60)) %0, ptr noalias noundef nonnull align 8 %1, i16 noundef range(i16 0, 21) %2, i16 %3) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store i16 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i16 %3, ptr %i.d, align 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.e, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs5_NtCs4LZN9PPmi2I_11hickory_net5errorNtB6_9NoRecords3newNtNtNtCsbTgMbcnmcyu_13hickory_proto2op5query5QueryECshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 4), (8, 32), (40, 48), (56, 60)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96) %1, i16 noundef range(i16 0, 21) %2, i16 %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvXNtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB4_3BoxNtNtNtCsbTgMbcnmcyu_13hickory_proto2op5query5QueryEINtNtCskKLDkoKarTP_4core7convert4FromBO_E4fromCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store i16 %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i16 %3, ptr %i.e, align 2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.f, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscIBp6mpAwK8_3log13___private_api3loguNtB2_12GlobalLoggerECshnt8FRa5Rut_11native_ping(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef range(i64 1, 6) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [96 x i8], align 8                ; 16 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !102, !nonnull !16, !align !19, !noundef !16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !102, !noundef !16
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !102, !nonnull !16, !noundef !16
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !102, !noundef !16
  %i.k = load ptr, ptr %3, align 8, !alias.scope !102, !nonnull !16, !noundef !16
  %i.l = load ptr, ptr %i.d, align 8, !noalias !102, !nonnull !16, !noundef !16
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noalias !102, !noundef !16
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.p = load i32, ptr %i.o, align 8, !noalias !102, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !102
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %2, ptr %i.q, align 8, !noalias !102
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.k, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !102
  %.sroa.523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %i.j, ptr %.sroa.523.0..sroa_idx.i, align 8, !noalias !102
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %0, ptr %i.r, align 8, !noalias !102
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %1, ptr %i.s, align 8, !noalias !102
  store i64 0, ptr %i.b, align 8, !noalias !102
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %.sroa.428.0..sroa_idx.i, align 8, !noalias !102
  %.sroa.529.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.f, ptr %.sroa.529.0..sroa_idx.i, align 8, !noalias !102
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.t, align 8, !noalias !102
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.l, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !102
  %.sroa.535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.n, ptr %.sroa.535.0..sroa_idx.i, align 8, !noalias !102
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 1, ptr %i.u, align 8, !noalias !102
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 %i.p, ptr %i.v, align 4, !noalias !102
  call void @_RNvXs0_NtCscIBp6mpAwK8_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b), !noalias !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !102
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueANtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6Recordj1_ECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(280) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4name4NameECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(280) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordECshnt8FRa5Rut_11native_ping.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr11record_data5RDataECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.b) #26
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordECshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.a
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr11record_data5RDataECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs9jG2ha9joJM_10libp2p_dns5ErrorNtNtNtB4_2io5error5ErrorEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i32, ptr %0, align 8, !range !113, !noundef !16 ; 3 uses
  %i.c = icmp ne i32 %i.b, 14
  tail call void @llvm.assume(i1 %i.c)
  %i.d = add nsw i32 %i.b, -13
  %i.e = icmp samesign ugt i32 %i.b, 12
  %narrow = select i1 %i.e, i32 %i.d, i32 1
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.e
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCs9jG2ha9joJM_10libp2p_dns5ErrorNtNtNtCskKLDkoKarTP_4core2io5error5ErrorEENtNtNtB1k_3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtCs9jG2ha9joJM_10libp2p_dns5ErrorNtNtNtB4_2io5error5ErrorEEECshnt8FRa5Rut_11native_ping.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtCs9jG2ha9joJM_10libp2p_dns5ErrorNtNtNtCskKLDkoKarTP_4core2io5error5ErrorEENtNtNtB1r_3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtCs9jG2ha9joJM_10libp2p_dns5ErrorNtNtNtB4_2io5error5ErrorEEECshnt8FRa5Rut_11native_ping.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtCs9jG2ha9joJM_10libp2p_dns5ErrorNtNtNtB4_2io5error5ErrorEEECshnt8FRa5Rut_11native_ping.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtCs9jG2ha9joJM_10libp2p_dns5ErrorNtNtNtB4_2io5error5ErrorEEECshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtCs9jG2ha9joJM_10libp2p_dns5ErrorNtNtNtCskKLDkoKarTP_4core2io5error5ErrorEENtNtNtB1r_3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %.val.i = load ptr, ptr %i.i, align 8, !alias.scope !114, !nonnull !16, !noundef !16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !114
  %i.j = ptrtoint ptr %.val.i to i64              ; 2 uses
  %i.k = and i64 %i.j, 3
  switch i64 %i.k, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit
    i64 3, label %bb.f
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit
    i64 1, label %bb.g
  ], !prof !20

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.l = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %i.m = and i64 %i.j, 1095216660480
  %i.n = icmp ne i64 %i.m, 1095216660480
  tail call void @llvm.assume(i1 %i.l)
  tail call void @llvm.assume(i1 %i.n)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit

bb.g:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %.val.i, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !alias.scope !115, !noalias !114
  store i8 3, ptr %i.a, align 8, !alias.scope !115, !noalias !114
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p), !noalias !114
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.e, %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !114
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs4LZN9PPmi2I_11hickory_net5error8NetErrorECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(64) %0)
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !119, !noundef !16
  %i.t = load ptr, ptr %i.q, align 8, !alias.scope !119, !nonnull !16, !align !19, !noundef !16
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !119, !nonnull !16, !noundef !16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !119, !noundef !16
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !119, !noundef !16
  tail call void %i.v(ptr noundef %i.s, ptr noundef %i.x, i64 noundef %i.z), !noalias !119, !inline_history !0
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshnt8FRa5Rut_11native_ping.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtCs9jG2ha9joJM_10libp2p_dns5ErrorNtNtNtB4_2io5error5ErrorEEECshnt8FRa5Rut_11native_ping.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCsgtKVDLJNbYN_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCsknXHD0xsxtc_16libp2p_websocket6framed8IncomingNtNtCs4wN8za6y8UK_7soketto10connection5ErrorENtNtB4_6marker4SendEL_EEECshnt8FRa5Rut_11native_ping(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !16 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !21, !invariant.load !16 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCsgtKVDLJNbYN_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCsknXHD0xsxtc_16libp2p_websocket6framed8IncomingNtNtCs4wN8za6y8UK_7soketto10connection5ErrorENtNtB4_6marker4SendEL_EECshnt8FRa5Rut_11native_ping.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !22, !invariant.load !16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #29
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCsgtKVDLJNbYN_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCsknXHD0xsxtc_16libp2p_websocket6framed8IncomingNtNtCs4wN8za6y8UK_7soketto10connection5ErrorENtNtB4_6marker4SendEL_EECshnt8FRa5Rut_11native_ping.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !21, !invariant.load !16 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCsgtKVDLJNbYN_12futures_core6stream6Streamp4ItemINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsknXHD0xsxtc_16libp2p_websocket6framed8IncomingNtNtCs4wN8za6y8UK_7soketto10connection5ErrorENtNtB1D_6marker4SendEL_ENtNtNtB1D_3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !22, !invariant.load !16
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #29
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCsgtKVDLJNbYN_12futures_core6stream6Streamp4ItemINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsknXHD0xsxtc_16libp2p_websocket6framed8IncomingNtNtCs4wN8za6y8UK_7soketto10connection5ErrorENtNtB1D_6marker4SendEL_ENtNtNtB1D_3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping.exit4.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCsgtKVDLJNbYN_12futures_core6stream6Streamp4ItemINtNtCskKLDkoKarTP_4core6result6ResultNtNtCsknXHD0xsxtc_16libp2p_websocket6framed8IncomingNtNtCs4wN8za6y8UK_7soketto10connection5ErrorENtNtB1D_6marker4SendEL_ENtNtNtB1D_3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCsgtKVDLJNbYN_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCsknXHD0xsxtc_16libp2p_websocket6framed8IncomingNtNtCs4wN8za6y8UK_7soketto10connection5ErrorENtNtB4_6marker4SendEL_EECshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsa9Jrx9KOzzM_16hickory_resolver6lookup6LookupNtNtCs4LZN9PPmi2I_11hickory_net5error8NetErrorENtNtB4_6marker4SendEL_EEECshnt8FRa5Rut_11native_ping(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !16 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !21, !invariant.load !16 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsa9Jrx9KOzzM_16hickory_resolver6lookup6LookupNtNtCs4LZN9PPmi2I_11hickory_net5error8NetErrorENtNtB4_6marker4SendEL_EECshnt8FRa5Rut_11native_ping.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !22, !invariant.load !16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #29
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsa9Jrx9KOzzM_16hickory_resolver6lookup6LookupNtNtCs4LZN9PPmi2I_11hickory_net5error8NetErrorENtNtB4_6marker4SendEL_EECshnt8FRa5Rut_11native_ping.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !21, !invariant.load !16 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtCskKLDkoKarTP_4core6future6future6Futurep6OutputINtNtBO_6result6ResultNtNtCsa9Jrx9KOzzM_16hickory_resolver6lookup6LookupNtNtCs4LZN9PPmi2I_11hickory_net5error8NetErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !22, !invariant.load !16
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #29
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtCskKLDkoKarTP_4core6future6future6Futurep6OutputINtNtBO_6result6ResultNtNtCsa9Jrx9KOzzM_16hickory_resolver6lookup6LookupNtNtCs4LZN9PPmi2I_11hickory_net5error8NetErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping.exit4.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtCskKLDkoKarTP_4core6future6future6Futurep6OutputINtNtBO_6result6ResultNtNtCsa9Jrx9KOzzM_16hickory_resolver6lookup6LookupNtNtCs4LZN9PPmi2I_11hickory_net5error8NetErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCshnt8FRa5Rut_11native_ping.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsa9Jrx9KOzzM_16hickory_resolver6lookup6LookupNtNtCs4LZN9PPmi2I_11hickory_net5error8NetErrorENtNtB4_6marker4SendEL_EECshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.c, %bb.d
  ret void
}

end_hunk_0
begin_hunk_1_@_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsa9Jrx9KOzzM_16hickory_resolver11name_server10NameServerNtNtNtCs4LZN9PPmi2I_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderEEEENtNtNtB8_6traits8iterator8Iterator9size_hintCshnt8FRa5Rut_11native_ping:bb.a
; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEENtNtNtB8_6traits8iterator8Iterator4nextCshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !alias.scope !4138, !nonnull !16, !noundef !16 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !4138, !nonnull !16, !noundef !16
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.e, ptr %1, align 8, !alias.scope !4138
  %i.f = load ptr, ptr %i.a, align 8, !noalias !4139, !nonnull !16, !align !19, !noundef !16
  %i.g = load ptr, ptr %i.f, align 8, !noalias !4139, !nonnull !16, !noundef !16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !noalias !4139, !noundef !16
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noalias !4139, !noundef !16
  tail call void %i.g(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noundef nonnull align 8 %i.h, ptr noundef %i.j, i64 noundef %i.l)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEENtNtNtB8_6traits8iterator8Iterator9size_hintCshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #7 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !16, !noundef !16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !16, !noundef !16
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 5                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !4142
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !4142
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !4142
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordEENtNtNtB8_6traits8iterator8Iterator4nextCshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([280 x i8]) align 8 captures(none) dereferenceable(280) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !alias.scope !4145, !nonnull !16, !noundef !16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !4145, !nonnull !16, !noundef !16
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  store ptr %i.e, ptr %1, align 8, !alias.scope !4145
  tail call fastcc void @_RNvXsd_NtNtCsbTgMbcnmcyu_13hickory_proto2rr6recordNtB5_6RecordNtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 captures(none) dereferenceable(280) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(280) %i.a) #32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i16 2, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i1, i8 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !4150, !nonnull !16, !noundef !16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !4150, !nonnull !16, !noundef !16
  %i.d = icmp ne ptr %i.a, %i.c                   ; 2 uses
  br i1 %i.d, label %bb.b, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshnt8FRa5Rut_11native_ping.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.e, ptr %0, align 8, !alias.scope !4150
  %i.f = load i8, ptr %i.a, align 1, !alias.scope !4151, !noundef !16
  br label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshnt8FRa5Rut_11native_ping.exit

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i8 [ %i.f, %bb.b ], [ undef, %bb.a ]
  %i.g = insertvalue { i1, i8 } poison, i1 %i.d, 0
  %i.h = insertvalue { i1, i8 } %i.g, i8 %.sroa.3.0, 1
  ret { i1, i8 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB1U_4pool21EstablishedConnectionINtCscu2bAJ62uie_6either6EitherzNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventEEEENtNtNtB8_6traits8iterator8Iterator4nextCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtBM_4pool21EstablishedConnectionINtCscu2bAJ62uie_6either6EitherzNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
  %i.b = extractvalue { ptr, ptr } %i.a, 0        ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i64, ptr %i.b, align 8, !noundef !16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %.val, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.c = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.d = insertvalue { i64, i64 } %i.c, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB1U_4pool21EstablishedConnectionINtCscu2bAJ62uie_6either6EitherzNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventEEEENtNtNtB8_6traits8iterator8Iterator9size_hintCshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  store i64 %.val, ptr %0, align 8, !alias.scope !4154
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.b, align 8, !alias.scope !4154
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val, ptr %i.c, align 8, !alias.scope !4154
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB1U_4pool21EstablishedConnectionINtCscu2bAJ62uie_6either6EitherzNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventEEEENtNtNtB8_6traits8iterator8Iterator4nextCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtBM_4pool21EstablishedConnectionINtCscu2bAJ62uie_6either6EitherzNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
  %i.b = extractvalue { ptr, ptr } %i.a, 0        ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.b, align 8, !noundef !16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.c, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.d = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.e = insertvalue { i64, i64 } %i.d, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeysNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB1U_4pool21EstablishedConnectionINtCscu2bAJ62uie_6either6EitherzNtNtCsfY02lUNHLPc_15libp2p_identify7handler7InEventEEEENtNtNtB8_6traits8iterator8Iterator9size_hintCshnt8FRa5Rut_11native_ping(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  store i64 %.val, ptr %0, align 8, !alias.scope !4157
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.b, align 8, !alias.scope !4157
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val, ptr %i.c, align 8, !alias.scope !4157
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordEj1_NtB4_11PartialDrop12partial_dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(280) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, %1
  br i1 %i.a, label %_RNvXNtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordENtB2_11PartialDrop12partial_dropCshnt8FRa5Rut_11native_ping.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = sub nuw i64 %2, %1                       ; 3 uses
  %i.c = getelementptr inbounds nuw [280 x i8], ptr %0, i64 %1 ; 2 uses
  br label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordECshnt8FRa5Rut_11native_ping.exit.i.i: ; preds = %bb.d
  %i.d = icmp eq i64 %i.f, %i.b
  br i1 %i.d, label %_RNvXNtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordENtB2_11PartialDrop12partial_dropCshnt8FRa5Rut_11native_ping.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordECshnt8FRa5Rut_11native_ping.exit.i.i
  %.sroa.0.0.i.i15 = phi i64 [ 0, %.lr.ph ], [ %i.f, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordECshnt8FRa5Rut_11native_ping.exit.i.i ] ; 2 uses
  %i.e = getelementptr inbounds nuw [280 x i8], ptr %i.c, i64 %.sroa.0.0.i.i15 ; 3 uses
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i15, 1      ; 4 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4name4NameECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(280) %i.e)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr11record_data5RDataECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.h) #26
          to label %.body.i.i unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr11record_data5RDataECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordECshnt8FRa5Rut_11native_ping.exit.i.i unwind label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.f:                                             ; preds = %.lr.ph17
  %i.k = add nuw nsw i64 %.sroa.0.1.i.i16, 1      ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.b
  br i1 %i.l, label %._crit_edge, label %.lr.ph17

bb.g:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.g, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.g, %bb.c ]
  %i.n = icmp eq i64 %i.f, %i.b
  br i1 %i.n, label %._crit_edge, label %.lr.ph17

.lr.ph17:                                         ; preds = %.body.i.i, %bb.f
  %.sroa.0.1.i.i16 = phi i64 [ %i.k, %bb.f ], [ %i.f, %.body.i.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw [280 x i8], ptr %i.c, i64 %.sroa.0.1.i.i16
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(280) %i.o) #26
          to label %bb.f unwind label %bb.h

._crit_edge:                                      ; preds = %bb.f, %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

bb.h:                                             ; preds = %.lr.ph17
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RNvXNtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordENtB2_11PartialDrop12partial_dropCshnt8FRa5Rut_11native_ping.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6record6RecordECshnt8FRa5Rut_11native_ping.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitTNtNtCs4LZN9PPmi2I_11hickory_net4xfer8ProtocolINtNtB1z_12dns_exchange11DnsExchangeNtNtNtB1B_7runtime13tokio_runtime20TokioRuntimeProviderEEEj0_NtB4_11PartialDrop12partial_dropCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, %1
  br i1 %i.a, label %_RNvXNtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitTNtNtCs4LZN9PPmi2I_11hickory_net4xfer8ProtocolINtNtB1x_12dns_exchange11DnsExchangeNtNtNtB1z_7runtime13tokio_runtime20TokioRuntimeProviderEEENtB2_11PartialDrop12partial_dropCshnt8FRa5Rut_11native_ping.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = sub nuw i64 %2, %1                       ; 3 uses
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.d = icmp eq i64 %i.f, %i.b
  br i1 %i.d, label %_RNvXNtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitTNtNtCs4LZN9PPmi2I_11hickory_net4xfer8ProtocolINtNtB1x_12dns_exchange11DnsExchangeNtNtNtB1z_7runtime13tokio_runtime20TokioRuntimeProviderEEENtB2_11PartialDrop12partial_dropCshnt8FRa5Rut_11native_ping.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.i.i3 = phi i64 [ 0, %.lr.ph ], [ %i.f, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %.sroa.0.0.i.i3
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i3, 1       ; 4 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs4LZN9PPmi2I_11hickory_net4xfer8ProtocolINtNtBE_12dns_exchange11DnsExchangeNtNtNtBG_7runtime13tokio_runtime20TokioRuntimeProviderEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(32) %i.e)
          to label %bb.b unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph5
  %i.g = add nuw nsw i64 %.sroa.0.1.i.i4, 1       ; 2 uses
  %i.h = icmp eq i64 %i.g, %i.b
  br i1 %i.h, label %._crit_edge, label %.lr.ph5

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %i.b
  br i1 %i.j, label %._crit_edge, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i4 = phi i64 [ %i.g, %bb.d ], [ %i.f, %bb.e ] ; 2 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %.sroa.0.1.i.i4
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs4LZN9PPmi2I_11hickory_net4xfer8ProtocolINtNtBE_12dns_exchange11DnsExchangeNtNtNtBG_7runtime13tokio_runtime20TokioRuntimeProviderEEECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(32) %i.k) #26
          to label %bb.d unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.i

bb.f:                                             ; preds = %.lr.ph5
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RNvXNtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitTNtNtCs4LZN9PPmi2I_11hickory_net4xfer8ProtocolINtNtB1x_12dns_exchange11DnsExchangeNtNtNtB1z_7runtime13tokio_runtime20TokioRuntimeProviderEEENtB2_11PartialDrop12partial_dropCshnt8FRa5Rut_11native_ping.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsa_NtNtCsbTgMbcnmcyu_13hickory_proto2rr11record_dataNtB5_5RDataNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(184) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.sroa.4.i84 = alloca [28 x i8], align 4 ; 3 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.sroa.4.i75 = alloca [28 x i8], align 4 ; 3 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.sroa.4.i66 = alloca [28 x i8], align 4 ; 3 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.sroa.4.i.i = alloca [28 x i8], align 4 ; 3 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.sroa.4.i55 = alloca [28 x i8], align 4 ; 3 uses
  %i.j = alloca [40 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [16 x i8], align 8          ; 2 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.sroa.4.i44 = alloca [28 x i8], align 4 ; 3 uses
  %i.n = alloca [40 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.sroa.4.i = alloca [28 x i8], align 4   ; 3 uses
  %i.r = alloca [40 x i8], align 8                ; 8 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [144 x i8], align 8               ; 4 uses
  %.sroa.022 = alloca [24 x i8], align 8          ; 4 uses
  %i.u = alloca [112 x i8], align 8               ; 4 uses
  %.sroa.016 = alloca [24 x i8], align 8          ; 4 uses
  %i.v = alloca [184 x i8], align 8               ; 4 uses
  %.sroa.036 = alloca [24 x i8], align 8          ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [112 x i8], align 8               ; 4 uses
  %.sroa.02 = alloca [24 x i8], align 8           ; 4 uses
  %.sroa.0 = alloca [48 x i8], align 8            ; 5 uses
  %i.aa = load i16, ptr %1, align 8, !range !63, !noundef !16 ; 3 uses
  %i.ab = icmp ne i16 %i.aa, 19
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = add nsw i16 %i.aa, -2
  %i.ad = icmp samesign ugt i16 %i.aa, 1
  %narrow = select i1 %i.ad, i16 %i.ac, i16 17
  switch i16 %narrow, label %bb.b [
    i16 0, label %bb.c
    i16 1, label %bb.d
    i16 2, label %bb.e
    i16 3, label %bb.n
    i16 4, label %bb.q
    i16 5, label %bb.r
    i16 6, label %bb.aa
    i16 7, label %bb.af
    i16 8, label %bb.ai
    i16 9, label %bb.aj
    i16 10, label %bb.as
    i16 11, label %bb.bi
    i16 12, label %bb.bj
    i16 13, label %bb.bs
    i16 14, label %bb.bt
    i16 15, label %bb.bu
    i16 16, label %bb.cd
    i16 17, label %bb.ce
    i16 18, label %bb.cf
    i16 19, label %bb.co
    i16 20, label %bb.cp
    i16 21, label %bb.cq
    i16 22, label %bb.cr
    i16 23, label %bb.cs
    i16 24, label %bb.ct
    i16 25, label %bb.cu
    i16 26, label %bb.cv
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.sroa.0.0.copyload = load i32, ptr %i.ae, align 2
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i32 %.sroa.0.0.copyload, ptr %i.af, align 2
  store i16 2, ptr %0, align 8
  br label %bb.cw

bb.d:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.ah, ptr noundef nonnull align 2 dereferenceable(16) %i.ag, i64 16, i1 false)
  store i16 3, ptr %0, align 8
  br label %bb.cw

bb.e:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4190)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ak = load i8, ptr %i.aj, align 8, !range !15, !alias.scope !4190, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !4191
  %i.al = load i16, ptr %i.ai, align 8, !range !17, !alias.scope !4190, !noundef !16
  %i.am = trunc nuw i16 %i.al to i1
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.an), !noalias !4192
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.aq, i64 32, i1 false), !noalias !4192
  %i.ar = load i16, ptr %i.ap, align 2, !alias.scope !4190, !noundef !16
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  store i16 %i.ar, ptr %i.as, align 2, !noalias !4191
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i = phi i16 [ 1, %bb.f ], [ 0, %bb.g ]
  store i16 %.sink.i, ptr %i.r, align 8, !noalias !4191
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.au = load i16, ptr %i.at, align 8, !range !17, !alias.scope !4190, !noundef !16
  %i.av = trunc nuw i16 %i.au to i1
  br i1 %i.av, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !4191
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aw)
          to label %bb.l unwind label %bb.k, !noalias !4192

bb.j:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 50
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.5.sroa.4.i, ptr noundef nonnull readonly align 4 dereferenceable(24) %i.ay, i64 24, i1 false)
  %i.az = load i16, ptr %i.ax, align 2, !alias.scope !4190, !noundef !16
  br label %_RNvXsl_NtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.k:                                             ; preds = %bb.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs1oStim3y6Gv_7tinyvec7tinyvec7TinyVecAhj20_EECshnt8FRa5Rut_11native_ping(ptr noalias nofree noundef align 8 dereferenceable(40) %i.r) #26
          to label %common.resume unwind label %bb.m, !noalias !4192

bb.l:                                             ; preds = %bb.i
  %.sroa.5.sroa.4.6..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.4.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.5.sroa.4.6..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !4191
  br label %_RNvXsl_NtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.m:                                             ; preds = %bb.k
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !4192
  unreachable

common.resume:                                    ; preds = %bb.cl, %bb.ca, %bb.bp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECshnt8FRa5Rut_11native_ping.exit8.i, %bb.at, %bb.ap, %bb.ag, %bb.ah, %bb.ac, %bb.x, %bb.o, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.hx, %bb.ca ], [ %i.ba, %bb.k ], [ %i.bj, %bb.o ], [ %i.co, %bb.x ], [ %i.dc, %bb.ac ], [ %i.dl, %bb.ag ], [ %i.em, %bb.ap ], [ %.pn.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECshnt8FRa5Rut_11native_ping.exit8.i ], [ %i.gy, %bb.bp ], [ %i.dl, %bb.ah ], [ %.pn.pn.i, %bb.at ], [ %i.je, %bb.cl ]
  resume { ptr, i32 } %common.resume.op

_RNvXsl_NtNtNtCsbTgMbcnmcyu_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit: ; preds = %bb.j, %bb.l
  %.sroa.5.sroa.0.0.i = phi i16 [ undef, %bb.l ], [ %i.az, %bb.j ]
  %.sroa.0.0.i = phi i16 [ 1, %bb.l ], [ 0, %bb.j ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bc, ptr noundef nonnull align 8 dereferenceable(40) %i.r, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !4191
  %.sroa.4166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
end_hunk_1
