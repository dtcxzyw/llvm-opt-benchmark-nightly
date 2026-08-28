Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_test-29b616129d36b6c9.deltalake_test.ba0291980bd00892-cgu.10?download=true
inline.NumInlined: 438
inline.NumDeleted: 204
begin_hunk_0_@_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EE3newCsfY7SmN0bPrO_14deltalake_test:bb.a
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.r, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2d_11ObjectStore13delete_stream00EE4pushCsfY7SmN0bPrO_14deltalake_test(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(136) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [208 x i8], align 8               ; 12 uses
  %i.c = alloca [144 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.42.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 136, i1 false)
  %i.d = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br label %.backedge.i.sink.split

.backedge.i.sink.split:                           ; preds = %bb.a, %bb.b
  %i.h = load atomic i64, ptr %i.g monotonic, align 8, !noalias !464
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.sink.split, %bb.e
  %.sroa.0.0.i = phi i64 [ %i.n, %bb.e ], [ %i.h, %.backedge.i.sink.split ] ; 4 uses
  %i.i = icmp eq i64 %.sroa.0.0.i, -1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.backedge.i
  tail call void @llvm.x86.sse2.pause(), !noalias !464
  br label %.backedge.i.sink.split

bb.c:                                             ; preds = %.backedge.i
  %i.j = icmp sgt i64 %.sroa.0.0.i, -1
  br i1 %i.j, label %bb.e, label %bb.d, !prof !105

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !464
  store ptr @23, ptr %i.a, align 8, !noalias !464
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCsfY7SmN0bPrO_14deltalake_test, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !464
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #26
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = add nuw i64 %.sroa.0.0.i, 1
  %i.l = cmpxchg weak ptr %i.g, i64 %.sroa.0.0.i, i64 %i.k acquire monotonic, align 8, !noalias !464 ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  %i.n = extractvalue { i64, i1 } %i.l, 0
  br i1 %i.m, label %_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB36_11ObjectStore13delete_stream00EEE9downgradeCsfY7SmN0bPrO_14deltalake_test.exit, label %.backedge.i

bb.f:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB2o_11ObjectStore13delete_stream00EEECsfY7SmN0bPrO_14deltalake_test(ptr noundef nonnull align 8 %i.c)
          to label %common.resume unwind label %bb.o

_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB36_11ObjectStore13delete_stream00EEE9downgradeCsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.q = ptrtoint ptr %i.p to i64
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %i.c, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.b, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.s, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  store i64 %i.q, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, i8 0, i64 24, i1 false)
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 201
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 1
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16, !noalias !467
  %i.t = tail call noundef align 8 dereferenceable_or_null(208) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 208, i64 noundef 8) #16, !noalias !467 ; 8 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.g, label %bb.j, !prof !106

bb.g:                                             ; preds = %_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB36_11ObjectStore13delete_stream00EEE9downgradeCsfY7SmN0bPrO_14deltalake_test.exit
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 208) #24
          to label %.noexc15 unwind label %bb.h

.noexc15:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1q_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB3j_11ObjectStore13delete_stream00EEEECsfY7SmN0bPrO_14deltalake_test(ptr noundef nonnull align 8 dereferenceable(208) %i.b) #22
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.h ], [ %i.o, %bb.f ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNvYNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemNtB36_11ObjectStore13delete_stream00EEE9downgradeCsfY7SmN0bPrO_14deltalake_test.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.t, ptr noundef nonnull align 8 dereferenceable(208) %i.b, i64 208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store atomic i8 0, ptr %i.x monotonic, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = atomicrmw xchg ptr %i.z, ptr %i.y acq_rel, align 8 ; 5 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !3, !noundef !3
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 152
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %i.ah = load atomic ptr, ptr %i.ag acquire, align 8
  %.not.i = icmp eq ptr %i.ah, %i.af
  br i1 %.not.i, label %bb.l, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 168
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !3
  %i.ak = add i64 %i.aj, 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 184
  store i64 %i.ak, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  store atomic ptr %i.aa, ptr %i.am release, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 160
  store ptr %i.y, ptr %i.an, align 8
  br label %bb.n

.critedge.i:                                      ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 184
  store i64 1, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  store atomic ptr null, ptr %i.ap release, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.critedge.i
  %i.aq = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 192
  store atomic ptr null, ptr %i.ar monotonic, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.at = atomicrmw xchg ptr %i.as, ptr %i.y acq_rel, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 176
  store atomic ptr %i.y, ptr %i.au release, align 8
  ret void

bb.o:                                             ; preds = %bb.f
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvMs_NtCsfY7SmN0bPrO_14deltalake_test5clockNtB4_9TestClock15from_systemtime() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtNtCshmPyUV8PP35_6chrono6offset3utcNtB2_3Utc3now(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.a)
  %i.b = load i32, ptr %i.a, align 4, !range !470, !noundef !3 ; 2 uses
  %i.c = ashr i32 %i.b, 13                        ; 3 uses
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  %i.e = icmp slt i32 %i.c, 1
  br i1 %i.e, label %bb.b, label %_RNvMNtNtCshmPyUV8PP35_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit

bb.b:                                             ; preds = %bb.a
  %i.f = sub nsw i32 1, %i.c
  %i.g = udiv i32 %i.f, 400
  %i.h = add nuw nsw i32 %i.g, 1                  ; 2 uses
  %i.i = mul nuw nsw i32 %i.h, 400
  %i.j = add nsw i32 %i.i, %i.d
  %.neg.i = mul nsw i32 %i.h, -146097
  br label %_RNvMNtNtCshmPyUV8PP35_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit

_RNvMNtNtCshmPyUV8PP35_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit: ; preds = %bb.a, %bb.b
  %.sroa.05.0.i = phi i32 [ %.neg.i, %bb.b ], [ 0, %bb.a ]
  %.sroa.0.0.i = phi i32 [ %i.j, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.l = load i32, ptr %i.k, align 4, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load i32, ptr %i.m, align 4, !noundef !3
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16, !noalias !471
  %i.o = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef 8) #16, !noalias !471 ; 6 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.c, label %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit, !prof !106

bb.c:                                             ; preds = %_RNvMNtNtCshmPyUV8PP35_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #24, !noalias !471
  unreachable

_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit: ; preds = %_RNvMNtNtCshmPyUV8PP35_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit
  %i.q = lshr i32 %i.b, 4
  %i.r = and i32 %i.q, 511
  %i.s = sdiv i32 %.sroa.0.0.i, 100               ; 2 uses
  %i.t = mul nsw i32 %.sroa.0.0.i, 1461
  %i.u = ashr i32 %i.t, 2
  %i.v = ashr i32 %i.s, 2
  %i.w = add nuw nsw i32 %i.r, -719163
  %i.x = add nsw i32 %i.w, %.sroa.05.0.i
  %i.y = sub nsw i32 %i.x, %i.s
  %i.z = add nsw i32 %i.y, %i.u
  %narrow = add nsw i32 %i.z, %i.v
  %i.aa = sext i32 %narrow to i64
  %i.ab = mul nsw i64 %i.aa, 86400
  %i.ac = zext i32 %i.l to i64
  %i.ad = add nsw i64 %i.ab, %i.ac
  %i.ae = mul nsw i64 %i.ad, 1000
  %i.af = udiv i32 %i.n, 1000000
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = add nsw i64 %i.ae, %i.ag
  store i64 1, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx9, align 8
  %.sroa.6.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 %i.ah, ptr %.sroa.6.0..sroa_idx.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.o
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsfY7SmN0bPrO_14deltalake_test5clockNtB4_9TestClock4tick(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexxE4lockCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !474)
  %i.e = load i64, ptr %i.b, align 8, !range !6, !alias.scope !474, !noalias !477, !noundef !3
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.b, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardxEINtBM_11PoisonErrorBH_EE6unwrapCsfY7SmN0bPrO_14deltalake_test.exit, !prof !106

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !479
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !474, !noalias !477, !nonnull !3, !align !15, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load i8, ptr %i.i, align 8, !range !104, !alias.scope !474, !noalias !477, !noundef !3
  store ptr %i.h, ptr %i.a, align 8, !noalias !479
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.j, ptr %i.k, align 8, !noalias !479
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #24
          to label %bb.d unwind label %bb.c, !noalias !474

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardxEEECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #22
          to label %bb.f unwind label %bb.e, !noalias !474

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #21, !noalias !474
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.l

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardxEINtBM_11PoisonErrorBH_EE6unwrapCsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !474, !noalias !477, !nonnull !3, !align !15, !noundef !3 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.q = load i8, ptr %i.p, align 8, !range !104, !alias.scope !474, !noalias !477, !noundef !3
  %i.r = trunc nuw i8 %i.q to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.s = icmp slt i64 %1, 0
  %i.t = icmp sgt i32 %2, 0
  %or.cond = and i1 %i.s, %i.t                    ; 2 uses
  %i.u = mul i64 %1, 1000                         ; 2 uses
  %i.v = add i64 %i.u, 1000
  %i.w = add nsw i32 %2, -1000000000
  %.sroa.04.0 = select i1 %or.cond, i32 %i.w, i32 %2
  %.sroa.0.1 = select i1 %or.cond, i64 %i.v, i64 %i.u
  %i.x = sdiv i32 %.sroa.04.0, 1000000
  %i.y = sext i32 %i.x to i64
  %i.z = add i64 %.sroa.0.1, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !3
  %i.ac = add i64 %i.z, %i.ab
  store i64 %i.ac, ptr %i.aa, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  br i1 %i.r, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardxEINtBM_11PoisonErrorBH_EE6unwrapCsfY7SmN0bPrO_14deltalake_test.exit
  %i.ae = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.af = and i64 %i.ae, 9223372036854775807
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.h, !prof !105

bb.h:                                             ; preds = %bb.g
  %i.ah = call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #23
  br i1 %i.ah, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store atomic i8 1, ptr %i.ad monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardxEINtBM_11PoisonErrorBH_EE6unwrapCsfY7SmN0bPrO_14deltalake_test.exit
  %i.ai = atomicrmw xchg ptr %i.o, i32 0 release, align 4
  %i.aj = icmp eq i32 %i.ai, 2
  br i1 %i.aj, label %bb.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardxEECsfY7SmN0bPrO_14deltalake_test.exit, !prof !106

bb.j:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.o)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardxEECsfY7SmN0bPrO_14deltalake_test.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardxEECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.j
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemE9drop_slowCsfY7SmN0bPrO_14deltalake_test(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !486)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !489, !nonnull !3, !noundef !3
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !489
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemECsfY7SmN0bPrO_14deltalake_test.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjyY8HP3IvQ6_12object_store5local6ConfigE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #23
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemECsfY7SmN0bPrO_14deltalake_test.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemRNtNtBL_5alloc6GlobalEECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemRNtNtBL_5alloc6GlobalEECsfY7SmN0bPrO_14deltalake_test.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef 8) #16
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemRNtNtBL_5alloc6GlobalEECsfY7SmN0bPrO_14deltalake_test.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.a, %bb.b
  %i.k = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemRNtNtBL_5alloc6GlobalEECsfY7SmN0bPrO_14deltalake_test.exit2, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemECsfY7SmN0bPrO_14deltalake_test.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemRNtNtBL_5alloc6GlobalEECsfY7SmN0bPrO_14deltalake_test.exit2

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef 8) #16
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemRNtNtBL_5alloc6GlobalEECsfY7SmN0bPrO_14deltalake_test.exit2

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemRNtNtBL_5alloc6GlobalEECsfY7SmN0bPrO_14deltalake_test.exit2: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemECsfY7SmN0bPrO_14deltalake_test.exit, %bb.f, %bb.g
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakNtNtCsjyY8HP3IvQ6_12object_store5local15LocalFileSystemRNtNtBL_5alloc6GlobalEECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.e, %bb.d, %bb.c
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMsq_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcShE15copy_from_sliceCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i64 } @_RNvNtCs6Po7BT7Nknu_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef range(i64 1, 9) 1, i64 noundef range(i64 0, -9223372036854775808) %1) ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0        ; 3 uses
  %i.c = extractvalue { i64, i64 } %i.a, 1        ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %i.b to ptr
  br label %_RNCNvMsq_NtCs6Po7BT7Nknu_5alloc4syncINtB7_3ArcShE18allocate_for_slice0CsfY7SmN0bPrO_14deltalake_test.exit.i.i

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16
  %i.f = tail call noundef ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.b) #16
  br label %_RNCNvMsq_NtCs6Po7BT7Nknu_5alloc4syncINtB7_3ArcShE18allocate_for_slice0CsfY7SmN0bPrO_14deltalake_test.exit.i.i

_RNCNvMsq_NtCs6Po7BT7Nknu_5alloc4syncINtB7_3ArcShE18allocate_for_slice0CsfY7SmN0bPrO_14deltalake_test.exit.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.e, %bb.b ], [ %i.f, %bb.c ] ; 5 uses
  %i.g = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %i.g, label %bb.d, label %_RNvMsq_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcShE18allocate_for_sliceCsfY7SmN0bPrO_14deltalake_test.exit, !prof !106

bb.d:                                             ; preds = %_RNCNvMsq_NtCs6Po7BT7Nknu_5alloc4syncINtB7_3ArcShE18allocate_for_slice0CsfY7SmN0bPrO_14deltalake_test.exit.i.i
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef %i.b, i64 noundef %i.c) #24
  unreachable

_RNvMsq_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcShE18allocate_for_sliceCsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %_RNCNvMsq_NtCs6Po7BT7Nknu_5alloc4syncINtB7_3ArcShE18allocate_for_slice0CsfY7SmN0bPrO_14deltalake_test.exit.i.i
  %i.h = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i.i.i.i, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %1, 1
  store i64 1, ptr %.sroa.0.0.i.i.i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  store i64 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr nonnull align 1 %0, i64 %1, i1 false)
  ret { ptr, i64 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueE10dying_nextCsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
end_hunk_0
