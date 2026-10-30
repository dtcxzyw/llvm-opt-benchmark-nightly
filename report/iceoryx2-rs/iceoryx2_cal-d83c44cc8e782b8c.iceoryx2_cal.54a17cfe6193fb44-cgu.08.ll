Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_cal-d83c44cc8e782b8c.iceoryx2_cal.54a17cfe6193fb44-cgu.08?download=true
inline.NumInlined: 83
inline.NumDeleted: 41
begin_hunk_0_@_RNvXs6_NtCs7gufeB8TUC6_12iceoryx2_cal21communication_channelNtB5_29CommunicationChannelSendErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt:switch.lookup
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
  store ptr @71, ptr %i.g, align 8, !captures !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 19, ptr %i.i, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %i.j = load ptr, ptr %1, align 8, !alias.scope !103, !nonnull !5, !noundef !5 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load i8, ptr %i.k, align 8, !range !8, !noalias !105, !noundef !5
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.o = tail call { i64, i64 } @_RNvMs2_NtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4spsc30safely_overflowing_index_queue7detailsINtB5_27SafelyOverflowingIndexQueueINtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer13OwningPointerINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellyEEE31acquire_read_and_write_positionCs7gufeB8TUC6_12iceoryx2_cal(ptr noundef nonnull align 8 %i.n) #10, !noalias !105 ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = extractvalue { i64, i64 } %i.o, 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.s = load i64, ptr %i.r, align 8, !noalias !105, !noundef !5
  %i.t = add i64 %i.q, %i.s
  %i.u = icmp eq i64 %i.p, %i.t
  br i1 %i.u, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !105
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.w = cmpxchg ptr %i.v, i8 1, i8 0 acquire monotonic, align 1, !noalias !105
  %i.x = extractvalue { i8, i1 } %i.w, 1
  br i1 %i.x, label %_RNvXs9_NtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_localNtB5_6DuplexINtB7_26CommunicationChannelSenderyE8try_send.exit, label %bb.d, !prof !12

.critedge:                                        ; preds = %bb.b
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %3, align 8, !alias.scope !102
  store i64 2, ptr %0, align 8, !alias.scope !102
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #12, !noalias !105
  unreachable

_RNvXs9_NtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_localNtB5_6DuplexINtB7_26CommunicationChannelSenderyE8try_send.exit: ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store ptr %i.y, ptr %i.a, align 8, !noalias !105
  %i.z = load i64, ptr %2, align 8, !alias.scope !104, !noundef !5
  %i.aa = tail call { i64, i64 } @_RNvMs2_NtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4spsc30safely_overflowing_index_queue7detailsINtB5_27SafelyOverflowingIndexQueueINtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer13OwningPointerINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellyEEE4pushCs7gufeB8TUC6_12iceoryx2_cal(ptr noundef nonnull align 8 %i.y, i64 noundef %i.z) #10, !noalias !105 ; 2 uses
  %i.ab = extractvalue { i64, i64 } %i.aa, 0      ; 2 uses
  %i.ac = extractvalue { i64, i64 } %i.aa, 1      ; 2 uses
  call void @_RNvXs_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4spsc30safely_overflowing_index_queueINtB4_8ProducerINtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer13OwningPointerINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellyEEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs7gufeB8TUC6_12iceoryx2_cal(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #10, !noalias !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !105
  store i64 %i.ab, ptr %0, align 8, !alias.scope !102
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !alias.scope !102
  %i.ae = icmp eq i64 %i.ab, 2
  %i.af = trunc i64 %i.ac to i8
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge, %_RNvXs9_NtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_localNtB5_6DuplexINtB7_26CommunicationChannelSenderyE8try_send.exit
  %4 = phi i8 [ 2, %.critedge ], [ %i.af, %_RNvXs9_NtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_localNtB5_6DuplexINtB7_26CommunicationChannelSenderyE8try_send.exit ] ; 2 uses
  %i.ag = icmp eq i8 %4, 2
  br i1 %i.ag, label %.thread, label %bb.g

bb.f:                                             ; preds = %_RNvXs9_NtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_localNtB5_6DuplexINtB7_26CommunicationChannelSenderyE8try_send.exit, %.thread, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

.thread:                                          ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.h, ptr %i.f, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local6DuplexNtB6_5Debug3fmtBC_, ptr %.sroa.46.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.g, ptr %i.e, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs7gufeB8TUC6_12iceoryx2_cal, ptr %.sroa.410.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.f, ptr noundef nonnull @72, ptr noundef nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i8 2, ptr %i.ah, align 8
  store i64 2, ptr %0, align 8
  br label %bb.f

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %4, ptr %i.d, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.h, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local6DuplexNtB6_5Debug3fmtBC_, ptr %.sroa.42.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.g, ptr %i.b, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs7gufeB8TUC6_12iceoryx2_cal, ptr %.sroa.414.0..sroa_idx, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.ai, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs6_NtCs7gufeB8TUC6_12iceoryx2_cal21communication_channelNtB5_29CommunicationChannelSendErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.418.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.c, ptr noundef nonnull @73, ptr noundef nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.f
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs9_NtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_localNtB5_6DuplexINtB7_26CommunicationChannelSenderyE8try_send(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(1072) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load i8, ptr %i.c, align 8, !range !8, !noundef !5
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = tail call { i64, i64 } @_RNvMs2_NtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4spsc30safely_overflowing_index_queue7detailsINtB5_27SafelyOverflowingIndexQueueINtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer13OwningPointerINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellyEEE31acquire_read_and_write_positionCs7gufeB8TUC6_12iceoryx2_cal(ptr noundef nonnull align 8 %i.f) #10 ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.g, 0
  %i.i = extractvalue { i64, i64 } %i.g, 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.k = load i64, ptr %i.j, align 8, !noundef !5
  %i.l = add i64 %i.i, %i.k
  %i.m = icmp eq i64 %i.h, %i.l
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.o = cmpxchg ptr %i.n, i8 1, i8 0 acquire monotonic, align 1
  %i.p = extractvalue { i8, i1 } %i.o, 1
  br i1 %i.p, label %bb.g, label %bb.f, !prof !12

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.q, align 8
  store i64 2, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  ret void

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #12
  unreachable

bb.g:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.r, ptr %i.a, align 8
  %i.s = load i64, ptr %2, align 8, !noundef !5
  %i.t = tail call { i64, i64 } @_RNvMs2_NtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4spsc30safely_overflowing_index_queue7detailsINtB5_27SafelyOverflowingIndexQueueINtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer13OwningPointerINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellyEEE4pushCs7gufeB8TUC6_12iceoryx2_cal(ptr noundef nonnull align 8 %i.r, i64 noundef %i.s) #10 ; 2 uses
  %i.u = extractvalue { i64, i64 } %i.t, 0
  %i.v = extractvalue { i64, i64 } %i.t, 1
  call void @_RNvXs_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4spsc30safely_overflowing_index_queueINtB4_8ProducerINtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer13OwningPointerINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellyEEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs7gufeB8TUC6_12iceoryx2_cal(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.u, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.v, ptr %i.w, align 8
  br label %bb.e
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCs8Chj7Szqq0n_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXs6_NtNtCs8Chj7Szqq0n_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #10
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #10
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs8_NtNtCs8Chj7Szqq0n_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs_NtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_localNtB4_13ConfigurationNtNtCs8Chj7Szqq0n_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([792 x i8]) align 8 captures(none) dereferenceable(792) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXsk_NtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_nameNtB5_8FileNameINtNtCs5kzjBmDVxDj_21iceoryx2_bb_container15semantic_string14SemanticStringKjff_E13new_unchecked(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(none) dereferenceable(264) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 4) #10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_RNvXsk_NtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_nameNtB5_8FileNameINtNtCs5kzjBmDVxDj_21iceoryx2_bb_container15semantic_string14SemanticStringKjff_E13new_unchecked(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(none) dereferenceable(264) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @76, i64 noundef 5) #10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 528
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.b, ptr noundef nonnull align 8 dereferenceable(264) @77, i64 264, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_localNtB5_6DuplexINtB7_28CommunicationChannelReceiveryE7receive(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(1072) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 41
  %i.d = cmpxchg ptr %i.c, i8 1, i8 0 acquire monotonic, align 1
  %i.e = extractvalue { i8, i1 } %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8
  %i.g = tail call { i64, i64 } @_RNvMs2_NtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4spsc30safely_overflowing_index_queue7detailsINtB5_27SafelyOverflowingIndexQueueINtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer13OwningPointerINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellyEEE3popCs7gufeB8TUC6_12iceoryx2_cal(ptr noundef nonnull align 8 %i.f) #10 ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.g, 0
  %i.i = extractvalue { i64, i64 } %i.g, 1
  store i64 %i.h, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8
  call void @_RNvXs1_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4spsc30safely_overflowing_index_queueINtB5_8ConsumerINtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer13OwningPointerINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellyEEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs7gufeB8TUC6_12iceoryx2_cal(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define { i1, i8 } @_RNvXsc_NtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_localNtB5_7ChannelNtNtB9_13named_concept16NamedConceptMgmt10remove_cfg(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(792) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [264 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call fastcc void @_RNvYNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local13ConfigurationNtNtB8_13named_concept25NamedConceptConfiguration8path_forB8_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(264) %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(792) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %0) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr @84, ptr %i.j, align 8, !captures !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 53, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @85, ptr %i.i, align 8, !captures !11
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 59, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.n = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local22PROCESS_LOCAL_CHANNELS, i64 8) acquire, align 8
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_RINvMs0_NtNtCsigunbJSLHCW_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex5MutexINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_path8FilePathNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local12StorageEntryEEE5force0EB4x_.exit, label %bb.b, !prof !12

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
  call void @_RNvMsq_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_5MutexINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_path8FilePathNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local12StorageEntryEE4lockB32_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @_RNvNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local22PROCESS_LOCAL_CHANNELS) #10
  %i.p = load i32, ptr %i.h, align 8, !range !4, !noundef !5
  %.not = icmp eq i32 %i.p, -1
  br i1 %.not, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex10MutexGuardINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_path8FilePathNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local12StorageEntryEEINtBK_14MutexLockErrorB1B_EE6unwrapB3H_.exit, label %bb.c, !prof !12

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex10MutexGuardINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_path8FilePathNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local12StorageEntryEEINtBK_14MutexLockErrorB1B_EE6unwrapB3H_.exit: ; preds = %_RINvMs0_NtNtCsigunbJSLHCW_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex5MutexINtNtNtNtCsbqH9stoieM8_5alloc11collections5btree3map8BTreeMapNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_path8FilePathNtNtNtCs7gufeB8TUC6_12iceoryx2_cal21communication_channel13process_local12StorageEntryEEE5force0EB4x_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !116, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  store ptr %i.r, ptr %i.c, align 8
  %i.s = load i64, ptr %i.r, align 8, !range !13, !noundef !5
  %i.t = trunc nuw i64 %i.s to i1
  br i1 %i.t, label %bb.d, label %bb.g, !prof !12
end_hunk_0
