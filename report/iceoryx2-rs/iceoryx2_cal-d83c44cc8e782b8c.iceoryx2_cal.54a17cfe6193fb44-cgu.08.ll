Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_cal-d83c44cc8e782b8c.iceoryx2_cal.54a17cfe6193fb44-cgu.08?download=true
inline.NumInlined: 84
inline.NumDeleted: 41
begin_hunk_0_@_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_localNtB5_9ConnectorINtB7_29CommunicationChannelConnectoryNtB5_7ChannelE11open_sender:.split
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1056) %i.a, ptr noundef nonnull align 8 dereferenceable(1056) %1, i64 1056, i1 false)
  call void @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_localNtB5_9ConnectorINtB7_29CommunicationChannelConnectoryNtB5_7ChannelE15try_open_sender(ptr noalias nofree noundef nonnull sret([1072 x i8]) align 8 captures(none) dereferenceable(1072) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(1056) %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.m = load i8, ptr %i.l, align 8, !range !10, !noundef !5
  %i.n = icmp eq i8 %i.m, 2
  br i1 %i.n, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.split
  %i.o = load i8, ptr %0, align 8, !range !10, !noundef !5 ; 2 uses
  %i.p = icmp eq i8 %i.o, 2
  br i1 %i.p, label %bb.c, label %bb.d

bb.b:                                             ; preds = %.split, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs7gufeB8TUC6_12iceoryx2_cal(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #10
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs7gufeB8TUC6_12iceoryx2_cal(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.i, ptr %i.f, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXsr_NtCsbqH9stoieM8_5alloc6stringNtB5_6StringNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.j, ptr %i.e, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs7gufeB8TUC6_12iceoryx2_cal, ptr %.sroa.415.0..sroa_idx, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.g, ptr %i.q, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsm_NtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_nameNtB5_8FileNameNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.419.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.f, ptr noundef nonnull @42, ptr noundef nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.o, ptr %i.d, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.i, ptr %i.c, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsr_NtCsbqH9stoieM8_5alloc6stringNtB5_6StringNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.j, ptr %i.b, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs7gufeB8TUC6_12iceoryx2_cal, ptr %.sroa.423.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.r, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsu_NtCs7gufeB8TUC6_12iceoryx2_cal21communication_channelNtB5_29CommunicationChannelOpenErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.427.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.c, ptr noundef nonnull @43, ptr noundef nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.b
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_localNtB5_9ConnectorINtB7_29CommunicationChannelConnectoryNtB5_7ChannelE15try_open_sender(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1072 x i8]) align 8 captures(none) dereferenceable(1072) %0, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(1056) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [264 x i8], align 8               ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @41, ptr %i.i, align 8, !captures !11
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 21, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.k = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local22PROCESS_LOCAL_CHANNELS, i64 8) acquire, align 8
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_RINvMs0_NtNtCsigunbJSLHCW_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex5MutexINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_path8FilePathNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local12StorageEntryEEE5force0EB4x_.exit, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local22PROCESS_LOCAL_CHANNELS, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCsigunbJSLHCW_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local22PROCESS_LOCAL_CHANNELS, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCsigunbJSLHCW_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex5MutexINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_path8FilePathNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local12StorageEntryEEE5force0EB4x_.exit

_RINvMs0_NtNtCsigunbJSLHCW_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex5MutexINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_path8FilePathNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local12StorageEntryEEE5force0EB4x_.exit: ; preds = %bb.a, %bb.b
  call void @_RNvMsq_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_5MutexINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_path8FilePathNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local12StorageEntryEE4lockB32_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @_RNvNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local22PROCESS_LOCAL_CHANNELS) #10
  %i.m = load i32, ptr %i.g, align 8, !range !4, !noundef !5 ; 2 uses
  %.not = icmp eq i32 %i.m, -1
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvMs0_NtNtCsigunbJSLHCW_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex5MutexINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_path8FilePathNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local12StorageEntryEEE5force0EB4x_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  %i.n = load i32, ptr %i.d, align 8, !range !4, !noundef !5
  %.not14 = icmp eq i32 %i.n, -1
  br i1 %.not14, label %bb.e, label %bb.m, !prof !12

bb.d:                                             ; preds = %_RINvMs0_NtNtCsigunbJSLHCW_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex5MutexINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_path8FilePathNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local12StorageEntryEEE5force0EB4x_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %1, ptr %i.f, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXsm_NtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_localNtB5_9ConnectorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.48.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.i, ptr %i.e, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs7gufeB8TUC6_12iceoryx2_cal, ptr %.sroa.412.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.f, ptr noundef nonnull @39, ptr noundef nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i8 0, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store i8 2, ptr %i.o, align 8
  %cond = icmp eq i32 %i.m, 2
  br i1 %cond, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex14MutexLockErrorINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_path8FilePathNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local12StorageEntryEEEB3F_.exit.sink.split.i, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex10MutexGuardINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_path8FilePathNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local12StorageEntryEEINtB10_14MutexLockErrorB1R_EEEB3X_.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex14MutexLockErrorINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_path8FilePathNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local12StorageEntryEEEB3F_.exit.sink.split.i: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_path8FilePathNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local12StorageEntryEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB38_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #10
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex10MutexGuardINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_path8FilePathNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local12StorageEntryEEINtB10_14MutexLockErrorB1R_EEEB3X_.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex10MutexGuardINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_path8FilePathNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local12StorageEntryEEINtB10_14MutexLockErrorB1R_EEEB3X_.exit: ; preds = %bb.d, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex14MutexLockErrorINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_path8FilePathNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local12StorageEntryEEEB3F_.exit.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store ptr %i.r, ptr %i.h, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  call fastcc void @_RNvYNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local13ConfigurationNtNtB8_13named_concept25NamedConceptConfiguration8path_forB8_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(264) %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(792) %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %1) #10
  %i.t = load i64, ptr %i.r, align 8, !range !13, !noundef !5
  %i.u = trunc nuw i64 %i.t to i1
  br i1 %i.u, label %bb.f, label %bb.g, !prof !12

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.w = call noundef align 8 ptr @_RINvMsi_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_path8FilePathNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local12StorageEntryE7get_mutB18_EB2f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.c) #10 ; 3 uses
  %.not15 = icmp eq ptr %i.w, null
  br i1 %.not15, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #12
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !5, !noundef !5
  %i.y = atomicrmw add ptr %i.x, i64 1 monotonic, align 8
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.f
  store i8 2, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store i8 2, ptr %i.aa, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_path8FilePathNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local12StorageEntryEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB38_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #10
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ab = load ptr, ptr %i.w, align 8, !nonnull !5, !noundef !5
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(792) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(792) %i.s, i64 792, i1 false)
  store ptr %i.ab, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(264) %1, i64 264, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_path8FilePathNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local12StorageEntryEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB38_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #10
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex10MutexGuardINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_path8FilePathNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local12StorageEntryEEINtB10_14MutexLockErrorB1R_EEEB3X_.exit, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.m:                                             ; preds = %bb.c
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex10MutexGuardINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_path8FilePathNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local12StorageEntryEEINtB10_14MutexLockErrorB1R_EEEB3X_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #12
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs5_NtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_localNtB5_6DuplexNtNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits7testing11abandonable11Abandonable16abandon_in_place(ptr noundef nonnull initializes((1064, 1065)) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store i8 0, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !88, !nonnull !5, !noundef !5
  %i.c = atomicrmw add ptr %i.b, i64 -1 release, align 8, !noalias !88
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local10ManagementEEB1f_.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local10ManagementE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #11
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local10ManagementEEB1f_.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc4sync3ArcNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local10ManagementEEB1f_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtCs7gufeB8TUC6_12iceoryx2_cal21communication_channelNtB5_29CommunicationChannelSendErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !9, !noundef !5 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs6_NtCs7gufeB8TUC6_12iceoryx2_cal21communication_channelNtB5_29CommunicationChannelSendErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs6_NtCs7gufeB8TUC6_12iceoryx2_cal21communication_channelNtB5_29CommunicationChannelSendErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt.18, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext) #10
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs6_NtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_localNtB5_6DuplexNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1072) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [264 x i8], align 8               ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 7 uses
  %i.n = alloca [16 x i8], align 8                ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.p = load i8, ptr %i.o, align 8, !range !8, !noundef !5
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.l, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr @49, ptr %i.n, align 8, !captures !11
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 16, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr @50, ptr %i.m, align 8, !captures !11
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 54, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.t = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local22PROCESS_LOCAL_CHANNELS, i64 8) acquire, align 8
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %_RINvMs0_NtNtCsigunbJSLHCW_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex5MutexINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_path8FilePathNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local12StorageEntryEEE5force0EB4x_.exit, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local22PROCESS_LOCAL_CHANNELS, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCsigunbJSLHCW_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local22PROCESS_LOCAL_CHANNELS, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCsigunbJSLHCW_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex5MutexINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_path8FilePathNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local12StorageEntryEEE5force0EB4x_.exit

_RINvMs0_NtNtCsigunbJSLHCW_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex5MutexINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_path8FilePathNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local12StorageEntryEEE5force0EB4x_.exit: ; preds = %bb.c, %bb.d
  call void @_RNvMsq_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_5MutexINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_path8FilePathNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local12StorageEntryEE4lockB32_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @_RNvNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local22PROCESS_LOCAL_CHANNELS) #10
  %i.v = load i32, ptr %i.k, align 8, !range !4, !noundef !5
  %.not = icmp eq i32 %i.v, -1
  br i1 %.not, label %bb.e, label %bb.f, !prof !12

bb.e:                                             ; preds = %_RINvMs0_NtNtCsigunbJSLHCW_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex5MutexINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_path8FilePathNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local12StorageEntryEEE5force0EB4x_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false)
  %i.w = load i32, ptr %i.g, align 8, !range !4, !noundef !5
  %.not26 = icmp eq i32 %i.w, -1
  br i1 %.not26, label %bb.g, label %bb.m, !prof !12

bb.f:                                             ; preds = %_RINvMs0_NtNtCsigunbJSLHCW_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex5MutexINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_path8FilePathNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local12StorageEntryEEE5force0EB4x_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.m, ptr %i.j, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCs7gufeB8TUC6_12iceoryx2_cal, ptr %.sroa.43.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.n, ptr %i.i, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs7gufeB8TUC6_12iceoryx2_cal, ptr %.sroa.47.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @9, ptr noundef nonnull %i.j, ptr noundef nonnull @39, ptr noundef nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.m, ptr %i.h, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCs7gufeB8TUC6_12iceoryx2_cal, ptr %.sroa.411.0..sroa_idx, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.n, ptr %i.x, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs7gufeB8TUC6_12iceoryx2_cal, ptr %.sroa.415.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @53, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #12
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store ptr %i.z, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  call fastcc void @_RNvYNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local13ConfigurationNtNtB8_13named_concept25NamedConceptConfiguration8path_forB8_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(264) %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(792) %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.ab) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ac = load i64, ptr %i.z, align 8, !range !13, !noundef !5
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.h, label %bb.i, !prof !12

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.af = call noundef ptr @_RINvMsi_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_path8FilePathNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local12StorageEntryE6removeB18_EB2f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.f) #10 ; 3 uses
  store ptr %i.af, ptr %i.e, align 8
  %.not27 = icmp eq ptr %i.af, null
  br i1 %.not27, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local12StorageEntryEEB13_.exit28, label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #12
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ag = atomicrmw add ptr %i.af, i64 -1 release, align 8, !noalias !97
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.k, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local12StorageEntryEEB13_.exit

bb.k:                                             ; preds = %bb.j
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local10ManagementE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #11
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local12StorageEntryEEB13_.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local12StorageEntryEEB13_.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.l

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local12StorageEntryEEB13_.exit28: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.m, ptr %i.d, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCs7gufeB8TUC6_12iceoryx2_cal, ptr %.sroa.421.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.n, ptr %i.c, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs7gufeB8TUC6_12iceoryx2_cal, ptr %.sroa.425.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 3, ptr noundef nonnull @9, ptr noundef nonnull %i.d, ptr noundef nonnull @51, ptr noundef nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.l

bb.l:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local12StorageEntryEEB13_.exit28, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local12StorageEntryEEB13_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_path8FilePathNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local12StorageEntryEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB38_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.b

bb.m:                                             ; preds = %bb.e
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex10MutexGuardINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_path8FilePathNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local12StorageEntryEEINtB10_14MutexLockErrorB1R_EEEB3X_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #12
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs9_NtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_localNtB5_6DuplexINtB7_26CommunicationChannelSenderyE4send(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1072) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
end_hunk_0
