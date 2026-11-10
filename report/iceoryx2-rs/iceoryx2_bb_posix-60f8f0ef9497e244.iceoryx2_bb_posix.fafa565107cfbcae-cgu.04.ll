Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_bb_posix-60f8f0ef9497e244.iceoryx2_bb_posix.fafa565107cfbcae-cgu.04?download=true
inline.NumInlined: 207
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs4_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signalNtB5_13SignalHandler31timed_wait_for_multiple_signals:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i32 2, ptr %0, align 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cn = load <2 x i32>, ptr %i.h, align 8
  store <2 x i32> %i.cn, ptr %.sroa.443.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.n

bb.p:                                             ; preds = %bb.o
  call void @_RNvMs2_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix13adaptive_waitNtB5_12AdaptiveWait4wait(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.p) #13
  %i.co = load i64, ptr %i.d, align 8, !range !11, !noundef !4
  %.not60 = icmp eq i64 %i.co, 0
  br i1 %.not60, label %.lr.ph.backedge, label %.split68.us

.split66.us:                                      ; preds = %bb.o, %.lr.ph70
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.cp, align 4
  store i32 -1, ptr %0, align 8
  br label %bb.n

.split68.us:                                      ; preds = %bb.p, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @29, ptr %i.f, align 8
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCslxWRlZ2j4ks_17iceoryx2_bb_posix, ptr %.sroa.452.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @9, ptr noundef nonnull %i.f, ptr noundef nonnull @21, ptr noundef nonnull inttoptr (i64 87 to ptr)) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.454)
  %.sroa.454.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.454, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.454.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.cq, i64 16, i1 false)
  store i32 1, ptr %0, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.454.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.454, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.454)
  br label %bb.n

bb.q:                                             ; preds = %bb.n, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslxWRlZ2j4ks_17iceoryx2_bb_posix(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u) #13
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslxWRlZ2j4ks_17iceoryx2_bb_posix(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMs4_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signalNtB5_13SignalHandler42set_auto_repeat_call_for_interrupt_signals() unnamed_addr #0 {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 6 uses
  %i.b = alloca [160 x i8], align 8               ; 6 uses
  %i.c = alloca [152 x i8], align 8               ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs4_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signalNtB5_13SignalHandler8instance() #13 ; 4 uses
  store ptr %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 560 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !range !15, !noundef !4
  %.not = icmp eq i8 %i.g, 2
  br i1 %.not, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %.not4 = icmp eq ptr %i.i, null
  br i1 %.not4, label %.split2, label %.split

.split2:                                          ; preds = %bb.c
  %.sroa.3.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !77
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.3.0..sroa_idx2.i, i8 0, i64 144, i1 false), !noalias !77
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store i32 2, ptr %i.k, align 8, !noalias !77
  store i64 ptrtoint (ptr @_RNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signal14capture_signal to i64), ptr %i.b, align 8, !noalias !77
  call fastcc void @_RNvMs4_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signalNtB5_13SignalHandler26register_signal_from_state(ptr noalias nofree noundef align 8 captures(none) dereferenceable(152) %i.c, ptr noalias nofree noundef align 8 dereferenceable(520) %i.j, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(160) %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !77
  br label %bb.d

.split:                                           ; preds = %bb.c
  %.sroa.3.0..sroa_idx2.i6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !78
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.3.0..sroa_idx2.i6, i8 0, i64 144, i1 false), !noalias !78
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i32 2, ptr %i.l, align 8, !noalias !78
  store i64 ptrtoint (ptr @_RNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signal7handler to i64), ptr %i.a, align 8, !noalias !78
  call fastcc void @_RNvMs4_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signalNtB5_13SignalHandler26register_signal_from_state(ptr noalias nofree noundef align 8 captures(none) dereferenceable(152) %i.c, ptr noalias nofree noundef align 8 dereferenceable(520) %i.j, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(160) %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !78
  br label %bb.d

bb.d:                                             ; preds = %.split, %.split2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardNtNtB7_6signal13SignalHandlerENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMs4_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signalNtB5_13SignalHandler5abort() unnamed_addr #0 {
bb.a:
  tail call void @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6signal5abort() #13
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs4_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signalNtB5_13SignalHandler8instance() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signal3MTX, i64 8) acquire, align 8
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_RINvMs0_NtNtCsigunbJSLHCW_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex5MutexNtNtB1I_6signal13SignalHandlerEE5force0EB1I_.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signal3MTX, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCsigunbJSLHCW_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signal3MTX, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCsigunbJSLHCW_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex5MutexNtNtB1I_6signal13SignalHandlerEE5force0EB1I_.exit

_RINvMs0_NtNtCsigunbJSLHCW_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex5MutexNtNtB1I_6signal13SignalHandlerEE5force0EB1I_.exit: ; preds = %bb.a, %bb.b
  call void @_RNvMsq_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_5MutexNtNtB7_6signal13SignalHandlerE4lockB7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @_RNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signal3MTX) #13
  %i.i = load i32, ptr %i.f, align 8, !range !5, !noundef !4
  %.not = icmp eq i32 %i.i, -1
  br i1 %.not, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %_RINvMs0_NtNtCsigunbJSLHCW_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex5MutexNtNtB1I_6signal13SignalHandlerEE5force0EB1I_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  %i.j = load i32, ptr %i.c, align 8, !range !5, !noundef !4
  %.not10 = icmp eq i32 %i.j, -1
  br i1 %.not10, label %bb.e, label %bb.f, !prof !13

bb.d:                                             ; preds = %_RINvMs0_NtNtCsigunbJSLHCW_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex5MutexNtNtB1I_6signal13SignalHandlerEE5force0EB1I_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @8, ptr %i.e, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCslxWRlZ2j4ks_17iceoryx2_bb_posix, ptr %.sroa.43.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @9, ptr noundef nonnull %i.e, ptr noundef nonnull @36, ptr noundef nonnull inttoptr (i64 77 to ptr)) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @8, ptr %i.d, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCslxWRlZ2j4ks_17iceoryx2_bb_posix, ptr %.sroa.47.0..sroa_idx, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @37, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #14
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !align !6, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret ptr %i.l

bb.f:                                             ; preds = %bb.c
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex10MutexGuardNtNtB12_6signal13SignalHandlerEINtB10_14MutexLockErrorB1R_EEEB12_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #14
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signal14capture_signal(i32 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %0, ptr %i.b, align 4
  %i.c = sext i32 %0 to i64
  store atomic i64 %i.c, ptr @_RNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signal11LAST_SIGNAL monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs9_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 0, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull @38, ptr noundef nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signal7handler(i32 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %0, ptr %i.b, align 4
  %i.d = sext i32 %0 to i64
  store atomic i64 %i.d, ptr @_RNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signal11LAST_SIGNAL monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs9_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 0, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull @38, ptr noundef nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = call noundef nonnull align 8 ptr @_RNvMs4_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signalNtB5_13SignalHandler8instance() #13 ; 3 uses
  store ptr %i.e, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 560
  %i.g = load i8, ptr %i.f, align 8, !range !15, !noundef !4
  %.not = icmp eq i8 %i.g, 2
  br i1 %.not, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.i = icmp ugt i32 %0, 31
  %1 = zext nneg i32 %0 to i64
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %1
  %.sroa.0.0 = select i1 %i.i, ptr @13, ptr %i.j  ; 2 uses
  %i.k = load ptr, ptr %.sroa.0.0, align 8, !noundef !4 ; 2 uses
  %.not2 = icmp eq ptr %i.k, null
  br i1 %.not2, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #14
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %switch.tableidx = add i32 %0, -1               ; 2 uses
  %i.m = icmp ult i32 %switch.tableidx, 31
  br i1 %i.m, label %switch.lookup, label %_RNvXsC_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signallINtNtCs8Chj7Szqq0n_4core7convert4IntoNtB5_15FetchableSignalE4into.exit

switch.lookup:                                    ; preds = %bb.d
  %i.n = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs2_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signalNtB5_13SignalHandlerNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, i64 %i.n
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_RNvXsC_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signallINtNtCs8Chj7Szqq0n_4core7convert4IntoNtB5_15FetchableSignalE4into.exit

_RNvXsC_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signallINtNtCs8Chj7Szqq0n_4core7convert4IntoNtB5_15FetchableSignalE4into.exit: ; preds = %switch.lookup, %bb.d
  %.sroa.0.0.i = phi i32 [ 12, %bb.d ], [ %switch.ext, %switch.lookup ]
  %i.o = load ptr, ptr %i.l, align 8, !nonnull !4, !align !6, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !4, !nonnull !4
  call void %i.q(ptr noundef nonnull %i.k, i32 noundef %.sroa.0.0.i) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %_RNvXsC_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signallINtNtCs8Chj7Szqq0n_4core7convert4IntoNtB5_15FetchableSignalE4into.exit
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardNtNtB7_6signal13SignalHandlerENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, 32) i32 @_RNvXNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signals0_1__NtB4_20FatalFetchableSignalNtCshluggAAsOW7_13enum_iterator8Sequence4next(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0) unnamed_addr #2 {
switch.lookup:
  %i.a = load i32, ptr %0, align 4, !range !12, !noundef !4
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr i8, ptr @switch.table._RNvXNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signals0_1__NtB4_20FatalFetchableSignalNtCshluggAAsOW7_13enum_iterator8Sequence4next, i64 %i.b
  %switch.gep = getelementptr i8, ptr %i.c, i64 -1
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  ret i32 %switch.ext
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i32 0, 32) i32 @_RNvXNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signals0_1__NtB4_20FatalFetchableSignalNtCshluggAAsOW7_13enum_iterator8Sequence5first() unnamed_addr #3 {
bb.a:
  ret i32 14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, 32) i32 @_RNvXNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signals0_1__NtB4_20FatalFetchableSignalNtCshluggAAsOW7_13enum_iterator8Sequence8previous(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0) unnamed_addr #2 {
switch.lookup:
  %i.a = load i32, ptr %0, align 4, !range !12, !noundef !4
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr i8, ptr @switch.table._RNvXNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signals0_1__NtB4_20FatalFetchableSignalNtCshluggAAsOW7_13enum_iterator8Sequence8previous, i64 %i.b
  %switch.gep = getelementptr i8, ptr %i.c, i64 -1
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  ret i32 %switch.ext
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i32 1, 32) i32 @_RNvXNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signals1_1__NtB4_15FetchableSignalNtCshluggAAsOW7_13enum_iterator8Sequence4last() unnamed_addr #3 {
_RNvNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signals1_1__16previous_variant.exit:
  ret i32 12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, 32) i32 @_RNvXNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signals1_1__NtB4_15FetchableSignalNtCshluggAAsOW7_13enum_iterator8Sequence4next(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0) unnamed_addr #2 {
switch.lookup:
  %i.a = load i32, ptr %0, align 4, !range !12, !noundef !4
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr i8, ptr @switch.table._RNvXNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signals1_1__NtB4_15FetchableSignalNtCshluggAAsOW7_13enum_iterator8Sequence4next, i64 %i.b
  %switch.gep = getelementptr i8, ptr %i.c, i64 -1
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  ret i32 %switch.ext
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i32 0, 32) i32 @_RNvXNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signals1_1__NtB4_15FetchableSignalNtCshluggAAsOW7_13enum_iterator8Sequence5first() unnamed_addr #3 {
bb.a:
  ret i32 6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, 32) i32 @_RNvXNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signals1_1__NtB4_15FetchableSignalNtCshluggAAsOW7_13enum_iterator8Sequence8previous(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0) unnamed_addr #2 {
switch.lookup:
  %i.a = load i32, ptr %0, align 4, !range !12, !noundef !4
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr i8, ptr @switch.table._RNvXNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signals1_1__NtB4_15FetchableSignalNtCshluggAAsOW7_13enum_iterator8Sequence8previous, i64 %i.b
  %switch.gep = getelementptr i8, ptr %i.c, i64 -1
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  ret i32 %switch.ext
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i32 1, 32) i32 @_RNvXNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signals2_1__NtB4_6SignalNtCshluggAAsOW7_13enum_iterator8Sequence4last() unnamed_addr #3 {
_RNvNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signals2_1__16previous_variant.exit:
  ret i32 12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, 32) i32 @_RNvXNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signals2_1__NtB4_6SignalNtCshluggAAsOW7_13enum_iterator8Sequence4next(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0) unnamed_addr #2 {
switch.lookup:
  %i.a = load i32, ptr %0, align 4, !range !12, !noundef !4
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr i8, ptr @switch.table._RNvXNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signals2_1__NtB4_6SignalNtCshluggAAsOW7_13enum_iterator8Sequence4next, i64 %i.b
  %switch.gep = getelementptr i8, ptr %i.c, i64 -1
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  ret i32 %switch.ext
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i32 0, 32) i32 @_RNvXNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signals2_1__NtB4_6SignalNtCshluggAAsOW7_13enum_iterator8Sequence5first() unnamed_addr #3 {
bb.a:
  ret i32 6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, 32) i32 @_RNvXNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signals2_1__NtB4_6SignalNtCshluggAAsOW7_13enum_iterator8Sequence8previous(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0) unnamed_addr #2 {
switch.lookup:
  %i.a = load i32, ptr %0, align 4, !range !12, !noundef !4
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr i8, ptr @switch.table._RNvXNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signals2_1__NtB4_6SignalNtCshluggAAsOW7_13enum_iterator8Sequence8previous, i64 %i.b
  %switch.gep = getelementptr i8, ptr %i.c, i64 -1
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  ret i32 %switch.ext
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef range(i32 1, 28) i32 @_RNvXNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signals_1__NtB4_23NonFatalFetchableSignalNtCshluggAAsOW7_13enum_iterator8Sequence4next(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0) unnamed_addr #2 {
switch.lookup:
  %i.a = load i32, ptr %0, align 4, !range !14, !noundef !4
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr i8, ptr @switch.table._RNvXNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signals_1__NtB4_23NonFatalFetchableSignalNtCshluggAAsOW7_13enum_iterator8Sequence4next, i64 %i.b
  %switch.gep = getelementptr i8, ptr %i.c, i64 -2
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  ret i32 %switch.ext
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i32 1, 28) i32 @_RNvXNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signals_1__NtB4_23NonFatalFetchableSignalNtCshluggAAsOW7_13enum_iterator8Sequence5first() unnamed_addr #3 {
bb.a:
  ret i32 6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef range(i32 1, 28) i32 @_RNvXNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signals_1__NtB4_23NonFatalFetchableSignalNtCshluggAAsOW7_13enum_iterator8Sequence8previous(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0) unnamed_addr #2 {
switch.lookup:
  %i.a = load i32, ptr %0, align 4, !range !14, !noundef !4
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr i8, ptr @switch.table._RNvXNvNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signals_1__NtB4_23NonFatalFetchableSignalNtCshluggAAsOW7_13enum_iterator8Sequence8previous, i64 %i.b
  %switch.gep = getelementptr i8, ptr %i.c, i64 -2
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  ret i32 %switch.ext
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvXs18_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signalNtB6_15SignalWaitErrorNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signal15SignalWaitErrorNtB6_5Debug3fmtBA_, ptr %.sroa.43.0..sroa_idx, align 8
  %i.c = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !align !6, !noundef !4
  %i.f = call noundef zeroext i1 @_RNvNtCs8Chj7Szqq0n_4core3fmt5write(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e, ptr noundef nonnull @39, ptr noundef nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.f
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signalNtB5_13SignalHandlerNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(520) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs2_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signalNtB5_13SignalHandlerNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(520) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #13
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6signal11SignalErrorNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %.val = load i8, ptr %i.a, align 1, !range !8, !noundef !4
  %i.b = trunc nuw i8 %.val to i1                 ; 2 uses
  %..i = select i1 %i.b, i64 12, i64 16
end_hunk_0
