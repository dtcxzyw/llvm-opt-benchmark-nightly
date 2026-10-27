Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_stream-fcae4413b3f98c0a.polars_stream.1a4d324d1ee8f0d2-cgu.00?download=true
inline.NumInlined: 20395
inline.NumDeleted: 5965
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_RNvXs2_NtNtCsidoPH4Qgqxm_12polars_async8executor4taskINtB5_4TaskNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks23attach_reader_to_bridgeNtB15_20AttachReaderToBridge3run0NCINvB7_5spawnB10_E0NtB7_12TaskMetadataEINtB5_8RunnableB3J_E3runB1h_:bb.a
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks23attach_reader_to_bridgeNtB2b_20AttachReaderToBridge3run0NCINvB1j_5spawnB26_E0NtB1j_12TaskMetadataEEEB2n_.exit, !dbg !205084

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks23attach_reader_to_bridgeNtB2b_20AttachReaderToBridge3run0NCINvB1j_5spawnB26_E0NtB1j_12TaskMetadataEEEB2n_.exit: ; preds = %bb.fl, %bb.fk, %bb.fg, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api5mutex10MutexGuardNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8TaskDataNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks23attach_reader_to_bridgeNtB3f_20AttachReaderToBridge3run0EEEB3r_.exit, %_RNCINvNtCsidoPH4Qgqxm_12polars_async8executor5spawnNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks23attach_reader_to_bridgeNtBS_20AttachReaderToBridge3run0E0B14_.exit
  %.sroa.0.0 = phi i1 [ %.sroa.0.1, %bb.fg ], [ false, %_RNCINvNtCsidoPH4Qgqxm_12polars_async8executor5spawnNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks23attach_reader_to_bridgeNtBS_20AttachReaderToBridge3run0E0B14_.exit ], [ %.sroa.0.1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api5mutex10MutexGuardNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8TaskDataNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks23attach_reader_to_bridgeNtB3f_20AttachReaderToBridge3run0EEEB3r_.exit ], [ true, %bb.fk ], [ true, %bb.fl ], !dbg !205379
  ret i1 %.sroa.0.0, !dbg !205386

.critedge:                                        ; preds = %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.sroa.6), !dbg !205385
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13), !dbg !205093
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api5mutex10MutexGuardNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8TaskDataNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks23attach_reader_to_bridgeNtB3f_20AttachReaderToBridge3run0EEEB3r_.exit, !dbg !205084

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api5mutex10MutexGuardNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8TaskDataNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks23attach_reader_to_bridgeNtB3f_20AttachReaderToBridge3run0EEEB3r_.exit: ; preds = %bb.g, %bb.f, %.critedge
  %.sroa.0.1 = phi i1 [ false, %.critedge ], [ true, %bb.f ], [ true, %bb.g ], !dbg !205387 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !205066), !dbg !205084
  call void @llvm.experimental.noalias.scope.decl(metadata !205067), !dbg !205388
  %i.kb = load ptr, ptr %i.l, align 8, !dbg !205389, !alias.scope !205068, !nonnull !5424, !noundef !5424
  %i.kc = atomicrmw add ptr %i.kb, i64 -1 release, align 8, !dbg !205390, !noalias !205068
  %i.kd = icmp eq i64 %i.kc, 1, !dbg !205391
  br i1 %i.kd, label %bb.fg, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks23attach_reader_to_bridgeNtB2b_20AttachReaderToBridge3run0NCINvB1j_5spawnB26_E0NtB1j_12TaskMetadataEEEB2n_.exit, !dbg !205391

bb.fg:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api5mutex10MutexGuardNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8TaskDataNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks23attach_reader_to_bridgeNtB3f_20AttachReaderToBridge3run0EEEB3r_.exit
  fence acquire, !dbg !205392
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks23attach_reader_to_bridgeNtB1D_20AttachReaderToBridge3run0NCINvBL_5spawnB1y_E0NtBL_12TaskMetadataEE9drop_slowB1P_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l) #32, !dbg !205393
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks23attach_reader_to_bridgeNtB2b_20AttachReaderToBridge3run0NCINvB1j_5spawnB26_E0NtB1j_12TaskMetadataEEEB2n_.exit, !dbg !205393

bb.fh:                                            ; preds = %bb.fe
  %i.ke = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.09.0, ptr %i.r, align 8, !dbg !205380
  store ptr %.sroa.7.0, ptr %i.y, align 8, !dbg !205380
  %.sroa.913.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !205380
  store ptr %.sroa.913.0, ptr %.sroa.913.0..sroa_idx, align 8, !dbg !205380
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !205380
  store ptr %.sroa.10.sroa.0.0, ptr %.sroa.10.0..sroa_idx, align 8, !dbg !205380
  %.sroa.10.sroa.6.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !205380
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.sroa.6.0..sroa.10.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.sroa.6, i64 48, i1 false), !dbg !205380
  br label %bb.fn, !dbg !205385

bb.fi:                                            ; preds = %bb.fe
  store i64 %.sroa.09.0, ptr %i.r, align 8, !dbg !205380
  store ptr %.sroa.7.0, ptr %i.y, align 8, !dbg !205380
  %.sroa.913.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !205380
  store ptr %.sroa.913.0, ptr %.sroa.913.0..sroa_idx14, align 8, !dbg !205380
  %.sroa.10.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !205380
  store ptr %.sroa.10.sroa.0.0, ptr %.sroa.10.0..sroa_idx16, align 8, !dbg !205380
  %.sroa.10.sroa.6.0..sroa.10.0..sroa_idx16.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !205380
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.sroa.6.0..sroa.10.0..sroa_idx16.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.sroa.6, i64 48, i1 false), !dbg !205380
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.sroa.6), !dbg !205385
  %i.kf = cmpxchg ptr %i.m, i8 1, i8 0 release monotonic, align 1, !dbg !205394
  %i.kg = extractvalue { i8, i1 } %i.kf, 1, !dbg !205394
  br i1 %i.kg, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api5mutex10MutexGuardNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8TaskDataNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks23attach_reader_to_bridgeNtB3f_20AttachReaderToBridge3run0EEEB3r_.exit43, label %bb.fj, !dbg !205395, !prof !5571

bb.fj:                                            ; preds = %bb.fi
  invoke void @_RNvMs1_NtCs3mtJKb2XD8V_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.m, i1 noundef zeroext false)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api5mutex10MutexGuardNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8TaskDataNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks23attach_reader_to_bridgeNtB3f_20AttachReaderToBridge3run0EEEB3r_.exit43 unwind label %.thread, !dbg !205396

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api5mutex10MutexGuardNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8TaskDataNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks23attach_reader_to_bridgeNtB3f_20AttachReaderToBridge3run0EEEB3r_.exit43: ; preds = %bb.fi, %bb.fj
  %i.kh = load ptr, ptr %i.l, align 8, !dbg !205397, !nonnull !5424, !noundef !5424
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 328, !dbg !205072
  invoke void @_RNvMCs5H8kdUbdX50_12atomic_wakerNtB2_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.ki)
          to label %bb.fk unwind label %.thread, !dbg !205398

bb.fk:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api5mutex10MutexGuardNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8TaskDataNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks23attach_reader_to_bridgeNtB3f_20AttachReaderToBridge3run0EEEB3r_.exit43
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13), !dbg !205093
  call void @llvm.experimental.noalias.scope.decl(metadata !205075), !dbg !205084
  call void @llvm.experimental.noalias.scope.decl(metadata !205076), !dbg !205399
  %i.kj = load ptr, ptr %i.l, align 8, !dbg !205400, !alias.scope !205077, !nonnull !5424, !noundef !5424
  %i.kk = atomicrmw add ptr %i.kj, i64 -1 release, align 8, !dbg !205401, !noalias !205077
  %i.kl = icmp eq i64 %i.kk, 1, !dbg !205402
  br i1 %i.kl, label %bb.fl, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks23attach_reader_to_bridgeNtB2b_20AttachReaderToBridge3run0NCINvB1j_5spawnB26_E0NtB1j_12TaskMetadataEEEB2n_.exit, !dbg !205402

bb.fl:                                            ; preds = %bb.fk
  fence acquire, !dbg !205403
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks23attach_reader_to_bridgeNtB1D_20AttachReaderToBridge3run0NCINvBL_5spawnB1y_E0NtBL_12TaskMetadataEE9drop_slowB1P_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l) #32, !dbg !205404
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks23attach_reader_to_bridgeNtB2b_20AttachReaderToBridge3run0NCINvB1j_5spawnB26_E0NtB1j_12TaskMetadataEEEB2n_.exit, !dbg !205404

bb.fm:                                            ; preds = %bb.d
  unreachable

bb.fn:                                            ; preds = %bb.h, %bb.fh
  %.pn.ph = phi { ptr, i32 } [ %i.ke, %bb.fh ], [ %i.x, %bb.h ] ; 2 uses
  %i.km = cmpxchg ptr %i.m, i8 1, i8 0 release monotonic, align 1, !dbg !205405
  %i.kn = extractvalue { i8, i1 } %i.km, 1, !dbg !205405
  br i1 %i.kn, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api5mutex10MutexGuardNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8TaskDataNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks23attach_reader_to_bridgeNtB3f_20AttachReaderToBridge3run0EEEB3r_.exit46, label %bb.fo, !dbg !205406, !prof !5571

bb.fo:                                            ; preds = %bb.fn
  invoke void @_RNvMs1_NtCs3mtJKb2XD8V_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.m, i1 noundef zeroext false)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api5mutex10MutexGuardNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8TaskDataNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks23attach_reader_to_bridgeNtB3f_20AttachReaderToBridge3run0EEEB3r_.exit46 unwind label %bb.fp, !dbg !205407

bb.fp:                                            ; preds = %bb.fq, %bb.fo
  %i.ko = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #34, !dbg !205408
  unreachable, !dbg !205408

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks23attach_reader_to_bridgeNtB2b_20AttachReaderToBridge3run0NCINvB1j_5spawnB26_E0NtB1j_12TaskMetadataEEEB2n_.exit48: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api5mutex10MutexGuardNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8TaskDataNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks23attach_reader_to_bridgeNtB3f_20AttachReaderToBridge3run0EEEB3r_.exit46, %bb.fq
  resume { ptr, i32 } %.pn.pn68, !dbg !205408

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api5mutex10MutexGuardNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8TaskDataNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks23attach_reader_to_bridgeNtB3f_20AttachReaderToBridge3run0EEEB3r_.exit46: ; preds = %bb.fn, %bb.fo, %.thread
  %.pn.pn68 = phi { ptr, i32 } [ %i.p, %.thread ], [ %.pn.ph, %bb.fn ], [ %.pn.ph, %bb.fo ]
  call void @llvm.experimental.noalias.scope.decl(metadata !205078), !dbg !205084
  call void @llvm.experimental.noalias.scope.decl(metadata !205079), !dbg !205409
  %i.kp = load ptr, ptr %i.l, align 8, !dbg !205410, !alias.scope !205080, !nonnull !5424, !noundef !5424
  %i.kq = atomicrmw add ptr %i.kp, i64 -1 release, align 8, !dbg !205411, !noalias !205080
  %i.kr = icmp eq i64 %i.kq, 1, !dbg !205412
  br i1 %i.kr, label %bb.fq, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks23attach_reader_to_bridgeNtB2b_20AttachReaderToBridge3run0NCINvB1j_5spawnB26_E0NtB1j_12TaskMetadataEEEB2n_.exit48, !dbg !205412

bb.fq:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api5mutex10MutexGuardNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8TaskDataNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks23attach_reader_to_bridgeNtB3f_20AttachReaderToBridge3run0EEEB3r_.exit46
  fence acquire, !dbg !205413
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks23attach_reader_to_bridgeNtB1D_20AttachReaderToBridge3run0NCINvBL_5spawnB1y_E0NtBL_12TaskMetadataEE9drop_slowB1P_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l) #32
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks23attach_reader_to_bridgeNtB2b_20AttachReaderToBridge3run0NCINvB1j_5spawnB26_E0NtB1j_12TaskMetadataEEEB2n_.exit48 unwind label %bb.fp, !dbg !205414
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs2_NtNtCsidoPH4Qgqxm_12polars_async8executor4taskINtB5_4TaskNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks23attach_reader_to_bridgeNtB15_20AttachReaderToBridge3run0NCINvB7_5spawnB10_E0NtB7_12TaskMetadataEINtB5_8RunnableB3J_E8metadataB1h_(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) %0) unnamed_addr #8 !dbg !205415 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344, !dbg !205416
  ret ptr %i.a, !dbg !205417
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsidoPH4Qgqxm_12polars_async8executor4taskINtB5_4TaskNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks23attach_reader_to_bridgeNtB15_20AttachReaderToBridge3run0NCINvB7_5spawnB10_E0NtB7_12TaskMetadataEINtB5_8RunnableB3J_E8scheduleB1h_(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !205418 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 400, !dbg !205455
  %i.c = invoke noundef zeroext i1 @_RNvMNtNtCsidoPH4Qgqxm_12polars_async8executor4taskNtB2_9TaskState4wake(ptr noundef nonnull %i.b)
          to label %bb.d unwind label %bb.b, !dbg !205456

bb.b:                                             ; preds = %bb.g, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205446), !dbg !205457
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205447), !dbg !205458
  %i.e = load ptr, ptr %i.a, align 8, !dbg !205459, !alias.scope !205448, !nonnull !5424, !noundef !5424
  %i.f = atomicrmw add ptr %i.e, i64 -1 release, align 8, !dbg !205460, !noalias !205448
  %i.g = icmp eq i64 %i.f, 1, !dbg !205461
  br i1 %i.g, label %bb.c, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks23attach_reader_to_bridgeNtB2b_20AttachReaderToBridge3run0NCINvB1j_5spawnB26_E0NtB1j_12TaskMetadataEEEB2n_.exit, !dbg !205461

bb.c:                                             ; preds = %bb.b
  fence acquire, !dbg !205462
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks23attach_reader_to_bridgeNtB1D_20AttachReaderToBridge3run0NCINvBL_5spawnB1y_E0NtBL_12TaskMetadataEE9drop_slowB1P_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #32
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks23attach_reader_to_bridgeNtB2b_20AttachReaderToBridge3run0NCINvB1j_5spawnB26_E0NtB1j_12TaskMetadataEEEB2n_.exit unwind label %bb.i, !dbg !205463

bb.d:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.e, label %_RNCINvNtCsidoPH4Qgqxm_12polars_async8executor5spawnNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks23attach_reader_to_bridgeNtBS_20AttachReaderToBridge3run0E0B14_.exit, !dbg !205455

bb.e:                                             ; preds = %bb.d
  %i.h = atomicrmw add ptr %0, i64 1 monotonic, align 8, !dbg !205464
  %i.i = icmp slt i64 %i.h, 0, !dbg !205465
  br i1 %i.i, label %bb.h, label %bb.g, !dbg !205465

_RNCINvNtCsidoPH4Qgqxm_12polars_async8executor5spawnNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks23attach_reader_to_bridgeNtBS_20AttachReaderToBridge3run0E0B14_.exit: ; preds = %._RNCINvNtCsidoPH4Qgqxm_12polars_async8executor5spawnNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks23attach_reader_to_bridgeNtBS_20AttachReaderToBridge3run0E0B14_.exit_crit_edge, %bb.d
  %i.j = phi ptr [ %.pre, %._RNCINvNtCsidoPH4Qgqxm_12polars_async8executor5spawnNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks23attach_reader_to_bridgeNtBS_20AttachReaderToBridge3run0E0B14_.exit_crit_edge ], [ %0, %bb.d ], !dbg !205466
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205452), !dbg !205457
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205453), !dbg !205467
  %i.k = atomicrmw add ptr %i.j, i64 -1 release, align 8, !dbg !205468, !noalias !205454
  %i.l = icmp eq i64 %i.k, 1, !dbg !205469
  br i1 %i.l, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks23attach_reader_to_bridgeNtB2b_20AttachReaderToBridge3run0NCINvB1j_5spawnB26_E0NtB1j_12TaskMetadataEEEB2n_.exit2, !dbg !205469

bb.f:                                             ; preds = %_RNCINvNtCsidoPH4Qgqxm_12polars_async8executor5spawnNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks23attach_reader_to_bridgeNtBS_20AttachReaderToBridge3run0E0B14_.exit
  fence acquire, !dbg !205470
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks23attach_reader_to_bridgeNtB1D_20AttachReaderToBridge3run0NCINvBL_5spawnB1y_E0NtBL_12TaskMetadataEE9drop_slowB1P_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #32, !dbg !205471
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks23attach_reader_to_bridgeNtB2b_20AttachReaderToBridge3run0NCINvB1j_5spawnB26_E0NtB1j_12TaskMetadataEEEB2n_.exit2, !dbg !205471

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks23attach_reader_to_bridgeNtB2b_20AttachReaderToBridge3run0NCINvB1j_5spawnB26_E0NtB1j_12TaskMetadataEEEB2n_.exit2: ; preds = %_RNCINvNtCsidoPH4Qgqxm_12polars_async8executor5spawnNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks23attach_reader_to_bridgeNtBS_20AttachReaderToBridge3run0E0B14_.exit, %bb.f
  ret void, !dbg !205472

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 352, !dbg !205473
  %.val = load ptr, ptr %i.m, align 8, !dbg !205473, !nonnull !5424, !align !6370, !noundef !5424
  invoke void @_RNvMs6_NtCsidoPH4Qgqxm_12polars_async8executorNtB5_8Executor13schedule_task(ptr noundef nonnull align 128 %.val, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @1276)
          to label %._RNCINvNtCsidoPH4Qgqxm_12polars_async8executor5spawnNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks23attach_reader_to_bridgeNtBS_20AttachReaderToBridge3run0E0B14_.exit_crit_edge unwind label %bb.b, !dbg !205474, !inline_history !4465

._RNCINvNtCsidoPH4Qgqxm_12polars_async8executor5spawnNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks23attach_reader_to_bridgeNtBS_20AttachReaderToBridge3run0E0B14_.exit_crit_edge: ; preds = %bb.g
  %.pre = load ptr, ptr %i.a, align 8, !dbg !205466, !alias.scope !205454
  br label %_RNCINvNtCsidoPH4Qgqxm_12polars_async8executor5spawnNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks23attach_reader_to_bridgeNtBS_20AttachReaderToBridge3run0E0B14_.exit, !dbg !205474

bb.h:                                             ; preds = %bb.e
  tail call void @llvm.trap(), !dbg !205475
  unreachable, !dbg !205475

bb.i:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #34, !dbg !205476
  unreachable, !dbg !205476

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks23attach_reader_to_bridgeNtB2b_20AttachReaderToBridge3run0NCINvB1j_5spawnB26_E0NtB1j_12TaskMetadataEEEB2n_.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.d, !dbg !205476
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCsidoPH4Qgqxm_12polars_async8executor4taskINtB5_4TaskNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks6bridgeNtB15_6Bridge3run0NCINvB7_5spawnB10_E0NtB7_12TaskMetadataEINtB5_8RunnableB3c_E3runB1h_(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !205477 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 8 uses
  %.sroa.3.i.i.i.i.i.i.i = alloca [40 x i8], align 8 ; 7 uses
  %i.d = alloca [56 x i8], align 8                ; 8 uses
  %.sroa.828.i.i.i.i.i.i = alloca [32 x i8], align 8 ; 8 uses
  %.sroa.516.i.i.i.i.i.i = alloca [32 x i8], align 8 ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.066.i.i.i.i.i = alloca [144 x i8], align 8 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.3.i.i.i.i.i = alloca [96 x i8], align 8  ; 5 uses
  %i.j = alloca [104 x i8], align 8               ; 7 uses
  %i.k = alloca [104 x i8], align 8               ; 5 uses
  %.sroa.8.i.i.i.i.i = alloca [32 x i8], align 8  ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %i.o = alloca [8 x i8], align 8                 ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 9 uses
  %i.q = alloca [24 x i8], align 8                ; 8 uses
  %i.r = alloca [8 x i8], align 8                 ; 8 uses
  %i.s = alloca [8 x i8], align 8                 ; 8 uses
  %.sroa.3.i.i.i.i = alloca [96 x i8], align 8    ; 4 uses
  %i.t = alloca [104 x i8], align 8               ; 7 uses
  %i.u = alloca [32 x i8], align 8                ; 14 uses
  %i.v = alloca [8 x i8], align 8                 ; 11 uses
  store ptr %0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !205970 ; 10 uses
  %i.x = cmpxchg weak ptr %i.w, i8 0, i8 1 acquire monotonic, align 1, !dbg !205971
  %i.y = extractvalue { i8, i1 } %i.x, 1, !dbg !205971
  br i1 %i.y, label %bb.c, label %bb.b, !dbg !205972, !prof !5571

.thread:                                          ; preds = %bb.gp, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api5mutex10MutexGuardNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8TaskDataNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks6bridgeNtB3f_6Bridge3run0EEEB3r_.exit25, %bb.gw, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api5mutex10MutexGuardNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8TaskDataNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks6bridgeNtB3f_6Bridge3run0EEEB3r_.exit28, %bb.b, %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api5mutex10MutexGuardNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8TaskDataNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks6bridgeNtB3f_6Bridge3run0EEEB3r_.exit31, !dbg !205973

bb.b:                                             ; preds = %bb.a
  %i.aa = invoke noundef zeroext i1 @_RNvMs1_NtCs3mtJKb2XD8V_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull %i.w, i64 undef, i32 noundef 1000000000)
          to label %bb.c unwind label %.thread, !dbg !205974 ; 0 uses

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !205975 ; 4 uses
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !205976, !range !5594, !noundef !5424
  switch i64 %i.ac, label %bb.d [
    i64 1, label %bb.e
    i64 4, label %bb.f
  ], !dbg !205977, !prof !6385

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @1560, ptr noundef nonnull inttoptr (i64 143 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1561) #37
          to label %bb.gz unwind label %bb.h, !dbg !205978

bb.e:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %i.v, align 8, !dbg !205979, !nonnull !5424, !noundef !5424
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 744, !dbg !205863
  invoke void @_RNvMNtNtCsidoPH4Qgqxm_12polars_async8executor4taskNtB2_9TaskState13start_running(ptr noundef nonnull %i.ae)
          to label %bb.i unwind label %bb.h, !dbg !205980

bb.f:                                             ; preds = %bb.c
  %i.af = cmpxchg ptr %i.w, i8 1, i8 0 release monotonic, align 1, !dbg !205981
  %i.ag = extractvalue { i8, i1 } %i.af, 1, !dbg !205981
  br i1 %i.ag, label %.critedge, label %bb.g, !dbg !205982, !prof !5571

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs1_NtCs3mtJKb2XD8V_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.w, i1 noundef zeroext false)
          to label %.critedge unwind label %.thread, !dbg !205983

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.ha

bb.i:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !205984 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !205985
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 656, !dbg !205986 ; 2 uses
  store ptr %i.aj, ptr %i.u, align 8, !dbg !205987
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !205987
  store ptr %i.aj, ptr %i.ak, align 8, !dbg !205987
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !205987
  store ptr null, ptr %i.al, align 8, !dbg !205987
  %i.am = load atomic i64, ptr @_RNvNtCsgjwxzEoLG5s_12polars_error5abort11ABORT_STATE acquire, align 8, !dbg !205988, !noalias !205868
  %i.an = and i64 %i.am, 3, !dbg !205989
  %i.ao = icmp eq i64 %i.an, 0, !dbg !205989
  br i1 %i.ao, label %.noexc34, label %bb.j, !dbg !205989, !prof !5571

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsgjwxzEoLG5s_12polars_error5abort27try_raise_polars_abort_slow() #32
          to label %.noexc34 unwind label %bb.gj, !dbg !205990

.noexc34:                                         ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i.i.i), !dbg !205991
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 99, !dbg !205991 ; 3 uses
  %i.aq = load i8, ptr %i.ap, align 1, !dbg !205991, !range !5605, !noalias !205874, !noundef !5424
  switch i8 %i.aq, label %default.unreachable [
    i8 0, label %bb.k
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 3, label %bb.o
    i8 4, label %bb.v
    i8 5, label %bb.au
  ], !dbg !205991

default.unreachable:                              ; preds = %bb.bx, %bb.bj, %bb.au, %.noexc34
  unreachable

bb.k:                                             ; preds = %.noexc34
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !205992
  store i8 0, ptr %i.ar, align 8, !dbg !205992, !noalias !205874
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 98, !dbg !205992
  store i8 0, ptr %i.as, align 2, !dbg !205992, !noalias !205874
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 97, !dbg !205992
  store i8 0, ptr %i.at, align 1, !dbg !205992, !noalias !205874
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !205992
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 32, i1 false), !dbg !205992, !noalias !205874
  %.val.i.i.i.i = load ptr, ptr %i.ai, align 8, !dbg !205993, !noalias !205874, !nonnull !5424, !noundef !5424
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 128, !dbg !205994
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !205995
  store ptr %i.av, ptr %i.aw, align 8, !dbg !205995, !noalias !205874
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !205995
  store i8 0, ptr %i.ax, align 8, !dbg !205995, !noalias !205874
  br label %bb.o, !dbg !205996

bb.l:                                             ; preds = %.noexc34
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @629) #35
          to label %.noexc35 unwind label %bb.gj, !dbg !205991

.noexc35:                                         ; preds = %bb.l
  unreachable, !dbg !205991

bb.m:                                             ; preds = %.noexc34
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @629) #35
          to label %.noexc36 unwind label %bb.gj, !dbg !205991

.noexc36:                                         ; preds = %bb.m
  unreachable, !dbg !205991

bb.n:                                             ; preds = %bb.o
  %i.ay = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !205997, !noalias !205874
  br label %bb.t, !dbg !205998

bb.o:                                             ; preds = %bb.k, %.noexc34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !205996, !noalias !205874
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !205996 ; 2 uses
  invoke void @_RNvXs9_NtNtCsidoPH4Qgqxm_12polars_async10primitives9connectorINtB5_10RecvFutureNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components6bridge14BridgeRecvPortuENtNtNtCscgRAwXFJnXP_4core6future6future6Future4pollB1r_(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.az, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %bb.p unwind label %bb.n, !dbg !205996

bb.p:                                             ; preds = %bb.o
  %i.ba = load i64, ptr %i.t, align 8, !dbg !205996, !range !5597, !noalias !205874, !noundef !5424 ; 3 uses
  %i.bb = icmp eq i64 %i.ba, 6, !dbg !205996
  br i1 %i.bb, label %bb.q, label %bb.r, !dbg !205996

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !205997, !noalias !205874
  br label %.thread72, !dbg !205996

bb.r:                                             ; preds = %bb.p
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !205999
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.3.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.3.0..sroa_idx.i.i.i.i, i64 96, i1 false), !dbg !205999, !noalias !205874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !205997, !noalias !205874
  %i.bc = icmp eq i64 %i.ba, 5, !dbg !205995
  br i1 %i.bc, label %.invoke.i.i.i.i, label %bb.s, !dbg !206000

bb.s:                                             ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !206001
  store i8 1, ptr %i.bd, align 8, !dbg !206001, !noalias !205874
  store i64 %i.ba, ptr %i.az, align 8, !dbg !206001, !noalias !205874
  %.sroa.3.0..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !206001
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.3.0..sroa_idx6.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.3.i.i.i.i, i64 96, i1 false), !dbg !206001, !noalias !205874
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !206002
  %.val40.i.i.i.i = load ptr, ptr %i.be, align 8, !dbg !206003, !noalias !205874, !nonnull !5424, !noundef !5424
  %i.bf = getelementptr inbounds nuw i8, ptr %.val40.i.i.i.i, i64 128, !dbg !206004
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 208, !dbg !206002
  store ptr %i.bf, ptr %i.bg, align 8, !dbg !206002, !noalias !205874
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 216, !dbg !206002
  store i8 0, ptr %i.bh, align 8, !dbg !206002, !noalias !205874
  br label %bb.v, !dbg !206005

bb.t:                                             ; preds = %bb.ao, %bb.n
  %.pn32.pn.i.i.i.i = phi { ptr, i32 } [ %.pn32.i.i.i.i, %bb.ao ], [ %i.ay, %bb.n ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks6bridge6BridgeEBU_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ai) #33
          to label %bb.aq unwind label %bb.am, !dbg !206006

bb.u:                                             ; preds = %bb.v
  %i.bi = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !206007, !noalias !205874
  br label %bb.as, !dbg !206008

bb.v:                                             ; preds = %bb.s, %.noexc34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !206005, !noalias !205874
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 208, !dbg !206005 ; 2 uses
  invoke void @_RNvXs9_NtNtCsidoPH4Qgqxm_12polars_async10primitives9connectorINtB5_10RecvFutureTNtNtCs2g09Ig8GZd6_13polars_stream4pipe10PortSenderNtNtB7_10wait_group9WaitTokenEuENtNtNtCscgRAwXFJnXP_4core6future6future6Future4pollB1k_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %bb.w unwind label %bb.u, !dbg !206005

bb.w:                                             ; preds = %bb.v
  %i.bk = load i64, ptr %i.q, align 8, !dbg !206005, !range !5512, !noalias !205874, !noundef !5424
  %i.bl = trunc nuw i64 %i.bk to i1, !dbg !206005
end_hunk_0
begin_hunk_1_@_RNvXs2_NtNtCsidoPH4Qgqxm_12polars_async8executor4taskINtB5_4TaskNCNvMNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan8pipeline5tasks6bridgeNtB15_6Bridge3run0NCINvB7_5spawnB10_E0NtB7_12TaskMetadataEINtB5_8RunnableB3c_E3runB1h_:bb.a
  %.sroa.11.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 504, !dbg !206073 ; 2 uses
  store i8 0, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i, align 8, !dbg !206073, !noalias !205882
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i.i.i), !dbg !206074
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.516.i.i.i.i.i.i), !dbg !206075
  br label %bb.bk, !dbg !206075

bb.bi:                                            ; preds = %bb.bq, %bb.bp
  %i.fe = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i, !dbg !206076

.body.i.i.i.i.i:                                  ; preds = %bb.bo, %bb.bi
  %i.ff = phi ptr [ %.phi.trans.insert.i.i.i.i, %bb.bi ], [ %i.fr, %bb.bo ]
  %i.fg = phi ptr [ %i.dl, %bb.bi ], [ %i.fs, %bb.bo ]
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.fe, %bb.bi ], [ %.pn2.pn.i.i.i.i.i.i, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i), !dbg !206076
  br label %bb.en, !dbg !206077

bb.bj:                                            ; preds = %bb.au
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 6 uses
  %.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !dbg !206075, !range !5602, !noalias !205892
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i.i.i), !dbg !206074
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 496, !dbg !206074 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.516.i.i.i.i.i.i), !dbg !206075
  switch i8 %.pre.i.i.i.i.i, label %default.unreachable [
    i8 0, label %._crit_edge.i.i.i.i
    i8 1, label %bb.bp
    i8 2, label %bb.bq
    i8 3, label %bb.bs
    i8 4, label %bb.bx
  ], !dbg !206075

._crit_edge.i.i.i.i:                              ; preds = %bb.bj
  %.pre82.i.i.i.i = load ptr, ptr %i.fh, align 8, !dbg !206078, !noalias !205892
  br label %bb.bk, !dbg !206075

bb.bk:                                            ; preds = %._crit_edge.i.i.i.i, %.thread.i.i.i.i.i
  %i.fi = phi ptr [ %i.fa, %.thread.i.i.i.i.i ], [ %.phi.trans.insert.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.fj = phi ptr [ %i.fb, %.thread.i.i.i.i.i ], [ %i.dl, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.fk = phi ptr [ %i.fc, %.thread.i.i.i.i.i ], [ %.pre82.i.i.i.i, %._crit_edge.i.i.i.i ], !dbg !206078 ; 5 uses
  %i.fl = phi ptr [ %.sroa.11.0..sroa_idx.i.i.i.i.i, %.thread.i.i.i.i.i ], [ %.phi.trans.insert.i.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.fm = phi ptr [ %i.fd, %.thread.i.i.i.i.i ], [ %i.fh, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.fn = load i64, ptr %i.fk, align 8, !dbg !206079, !range !5716, !noalias !205893, !noundef !5424
  %i.fo = icmp eq i64 %i.fn, 4, !dbg !206079
  br i1 %i.fo, label %.thread.i.i.i.i.i.i, label %bb.bl, !dbg !206080

bb.bl:                                            ; preds = %bb.bk
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 64, !dbg !206081 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !205894), !dbg !206082
  %.sroa.0.0.copyload7.i.i.i.i.i.i = load ptr, ptr %i.fp, align 8, !dbg !206083, !alias.scope !205895, !noalias !205893 ; 2 uses
  store ptr null, ptr %i.fp, align 8, !dbg !206084, !alias.scope !205896, !noalias !205893
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload7.i.i.i.i.i.i, null, !dbg !206085
  br i1 %.not.i.i.i.i.i.i, label %bb.bn, label %bb.bm, !dbg !206086

bb.bm:                                            ; preds = %bb.bl
  %.sroa.7.0..sroa_idx8.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fk, i64 72, !dbg !206083
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.516.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx8.i.i.i.i.i.i, i64 32, i1 false), !dbg !206087, !noalias !205893
  br label %bb.cj, !dbg !206088

bb.bn:                                            ; preds = %bb.bl
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 512, !dbg !206089
  store ptr %i.fk, ptr %i.fq, align 8, !dbg !206089, !noalias !205892
  %.sroa.712.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 520, !dbg !206089
  store i8 0, ptr %.sroa.712.0..sroa_idx.i.i.i.i.i.i, align 8, !dbg !206089, !noalias !205892
  br label %bb.bs, !dbg !206090

bb.bo:                                            ; preds = %.body.i.i.i.i.i.i, %bb.br
  %i.fr = phi ptr [ %i.gg, %.body.i.i.i.i.i.i ], [ %i.fx, %bb.br ]
  %i.fs = phi ptr [ %i.gh, %.body.i.i.i.i.i.i ], [ %i.fy, %bb.br ]
  %i.ft = phi ptr [ %i.gi, %.body.i.i.i.i.i.i ], [ %i.fz, %bb.br ]
  %.pn2.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i.i, %.body.i.i.i.i.i.i ], [ %i.fw, %bb.br ]
  store i8 2, ptr %i.ft, align 8, !dbg !206075, !noalias !205892
  br label %.body.i.i.i.i.i, !dbg !206075

.thread.i.i.i.i.i.i:                              ; preds = %bb.bk
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fk, i64 8, !dbg !206091 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 512, !dbg !206092
  store ptr %i.fu, ptr %i.fv, align 8, !dbg !206092, !noalias !205892
  %.sroa.825.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 592, !dbg !206092 ; 2 uses
  store i8 0, ptr %.sroa.825.0..sroa_idx.i.i.i.i.i.i, align 8, !dbg !206092, !noalias !205892
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.828.i.i.i.i.i.i), !dbg !206093
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i.i.i.i.i.i), !dbg !206094
  br label %bb.by, !dbg !206094

bb.bp:                                            ; preds = %bb.bj
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @588) #35
          to label %.noexc45.i.i.i.i.i unwind label %bb.bi, !dbg !206075

.noexc45.i.i.i.i.i:                               ; preds = %bb.bp
  unreachable, !dbg !206075

bb.bq:                                            ; preds = %bb.bj
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @588) #35
          to label %.noexc46.i.i.i.i.i unwind label %bb.bi, !dbg !206075

.noexc46.i.i.i.i.i:                               ; preds = %bb.bq
  unreachable, !dbg !206075

bb.br:                                            ; preds = %bb.bs
  %i.fw = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !206095, !noalias !205892
  br label %bb.bo, !dbg !206096

bb.bs:                                            ; preds = %bb.bn, %bb.bj
  %i.fx = phi ptr [ %i.fi, %bb.bn ], [ %.phi.trans.insert.i.i.i.i, %bb.bj ] ; 3 uses
  %i.fy = phi ptr [ %i.fj, %bb.bn ], [ %i.dl, %bb.bj ] ; 3 uses
  %i.fz = phi ptr [ %i.fl, %bb.bn ], [ %.phi.trans.insert.i.i.i.i.i, %bb.bj ] ; 3 uses
  %i.ga = phi ptr [ %i.fm, %bb.bn ], [ %i.fh, %bb.bj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !206090, !noalias !205892
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 512, !dbg !206090
  invoke fastcc void @_RNCNvMNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan16reader_interface6outputNtB4_20FileReaderOutputRecv4recv0Be_(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.e, ptr noundef nonnull align 8 %i.gb, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %bb.bt unwind label %bb.br, !dbg !206090, !noalias !205898

bb.bt:                                            ; preds = %bb.bs
  %i.gc = load i64, ptr %i.e, align 8, !dbg !206090, !range !5512, !noalias !205892, !noundef !5424
  %i.gd = trunc nuw i64 %i.gc to i1, !dbg !206090
  br i1 %i.gd, label %bb.bu, label %bb.bv, !dbg !206090

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !206095, !noalias !205892
  br label %bb.ci, !dbg !206090

bb.bv:                                            ; preds = %bb.bt
  %i.ge = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !206097
  %.sroa.013.0.copyload14.i.i.i.i.i.i = load ptr, ptr %i.ge, align 8, !dbg !206097, !noalias !205892
  %.sroa.516.0..sroa_idx17.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !206097
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.516.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.516.0..sroa_idx17.i.i.i.i.i.i, i64 32, i1 false), !dbg !206097, !noalias !205892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !206095, !noalias !205892
  br label %bb.cj, !dbg !206088

bb.bw:                                            ; preds = %bb.ca, %bb.bz
  %i.gf = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i, !dbg !206098

.body.i.i.i.i.i.i:                                ; preds = %bb.cb, %bb.bw
  %i.gg = phi ptr [ %.phi.trans.insert.i.i.i.i, %bb.bw ], [ %i.gr, %bb.cb ]
  %i.gh = phi ptr [ %i.dl, %bb.bw ], [ %i.gs, %bb.cb ]
  %i.gi = phi ptr [ %.phi.trans.insert.i.i.i.i.i, %bb.bw ], [ %i.gt, %bb.cb ]
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.gf, %bb.bw ], [ %i.gq, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.828.i.i.i.i.i.i), !dbg !206098
  br label %bb.bo, !dbg !206099

bb.bx:                                            ; preds = %bb.bj
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 3 uses
  %.pre.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !dbg !206094, !range !5489, !noalias !205900
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.828.i.i.i.i.i.i), !dbg !206093
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i.i.i.i.i.i), !dbg !206094
  switch i8 %.pre.i.i.i.i.i.i, label %default.unreachable [
    i8 0, label %._crit_edge76.i.i.i.i.i
    i8 1, label %bb.bz
    i8 2, label %bb.ca
    i8 3, label %bb.cc
  ], !dbg !206094

._crit_edge76.i.i.i.i.i:                          ; preds = %bb.bx
  %.phi.trans.insert77.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 512
  %.pre78.i.i.i.i.i = load ptr, ptr %.phi.trans.insert77.i.i.i.i.i, align 8, !dbg !206100, !noalias !205900
  br label %bb.by, !dbg !206094

bb.by:                                            ; preds = %._crit_edge76.i.i.i.i.i, %.thread.i.i.i.i.i.i
  %i.gj = phi ptr [ %i.fi, %.thread.i.i.i.i.i.i ], [ %.phi.trans.insert.i.i.i.i, %._crit_edge76.i.i.i.i.i ]
  %i.gk = phi ptr [ %i.fj, %.thread.i.i.i.i.i.i ], [ %i.dl, %._crit_edge76.i.i.i.i.i ]
  %i.gl = phi ptr [ %i.fl, %.thread.i.i.i.i.i.i ], [ %.phi.trans.insert.i.i.i.i.i, %._crit_edge76.i.i.i.i.i ]
  %i.gm = phi ptr [ %i.fm, %.thread.i.i.i.i.i.i ], [ %i.fh, %._crit_edge76.i.i.i.i.i ]
  %i.gn = phi ptr [ %i.fu, %.thread.i.i.i.i.i.i ], [ %.pre78.i.i.i.i.i, %._crit_edge76.i.i.i.i.i ], !dbg !206100
  %i.go = phi ptr [ %.sroa.825.0..sroa_idx.i.i.i.i.i.i, %.thread.i.i.i.i.i.i ], [ %.phi.trans.insert.i.i.i.i.i.i, %._crit_edge76.i.i.i.i.i ]
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 520, !dbg !206101
  store ptr %i.gn, ptr %i.gp, align 8, !dbg !206101, !noalias !205900
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 584, !dbg !206101
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i, align 8, !dbg !206101, !noalias !205900
  br label %bb.cc, !dbg !206102

bb.bz:                                            ; preds = %bb.bx
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @677) #35
          to label %.noexc.i.i.i.i.i.i unwind label %bb.bw, !dbg !206094, !noalias !205893

.noexc.i.i.i.i.i.i:                               ; preds = %bb.bz
  unreachable, !dbg !206094

bb.ca:                                            ; preds = %bb.bx
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @677) #35
          to label %.noexc6.i.i.i.i.i.i unwind label %bb.bw, !dbg !206094, !noalias !205893

.noexc6.i.i.i.i.i.i:                              ; preds = %bb.ca
  unreachable, !dbg !206094

bb.cb:                                            ; preds = %bb.cc
  %i.gq = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !206103, !noalias !205900
  store i8 2, ptr %i.gv, align 8, !dbg !206094, !noalias !205900
  br label %.body.i.i.i.i.i.i, !dbg !206094

bb.cc:                                            ; preds = %bb.by, %bb.bx
  %i.gr = phi ptr [ %i.gj, %bb.by ], [ %.phi.trans.insert.i.i.i.i, %bb.bx ] ; 4 uses
  %i.gs = phi ptr [ %i.gk, %bb.by ], [ %i.dl, %bb.bx ] ; 4 uses
  %i.gt = phi ptr [ %i.gl, %bb.by ], [ %.phi.trans.insert.i.i.i.i.i, %bb.bx ] ; 4 uses
  %i.gu = phi ptr [ %i.gm, %bb.by ], [ %i.fh, %bb.bx ] ; 2 uses
  %i.gv = phi ptr [ %i.go, %bb.by ], [ %.phi.trans.insert.i.i.i.i.i.i, %bb.bx ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !206102, !noalias !205900
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 520, !dbg !206102
  invoke fastcc void @_RNCNvMs2_NtNtCsidoPH4Qgqxm_12polars_async10primitives10linearizerINtB7_10LinearizerINtNtCs2mZqlW55729_12polars_utils8priority8PriorityINtNtCscgRAwXFJnXP_4core3cmp7ReverseNtNtCs2g09Ig8GZd6_13polars_stream6morsel9MorselSeqENtB2K_6MorselEE3get0B2M_(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.d, ptr noundef nonnull align 8 %i.gw, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %bb.cd unwind label %bb.cb, !dbg !206102, !noalias !205901

bb.cd:                                            ; preds = %bb.cc
  %i.gx = load i64, ptr %i.d, align 8, !dbg !206102, !range !5512, !noalias !205900, !noundef !5424
  %i.gy = trunc nuw i64 %i.gx to i1, !dbg !206102
  br i1 %i.gy, label %bb.cf, label %bb.ce, !dbg !206102

bb.ce:                                            ; preds = %bb.cd
  %i.gz = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !206104
  %.sroa.07.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.gz, align 8, !dbg !206104, !noalias !205900 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !206104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i, i64 40, i1 false), !dbg !206104, !noalias !205900
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !206103, !noalias !205900
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.07.0.copyload.i.i.i.i.i.i.i, null, !dbg !206105
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ch, label %bb.cg, !dbg !206106

bb.cf:                                            ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !206103, !noalias !205900
  store i8 3, ptr %i.gv, align 8, !dbg !206107, !noalias !205900
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.i.i.i.i.i.i), !dbg !206107
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.828.i.i.i.i.i.i), !dbg !206098
  br label %bb.ci, !dbg !206093

bb.cg:                                            ; preds = %bb.ce
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.828.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.i.i.i.i.i.i.i, i64 32, i1 false), !dbg !206108, !noalias !205892
  store i8 1, ptr %i.gv, align 8, !dbg !206107, !noalias !205900
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.i.i.i.i.i.i), !dbg !206107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.516.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.828.i.i.i.i.i.i, i64 32, i1 false), !dbg !206109, !noalias !205892
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.828.i.i.i.i.i.i), !dbg !206098
  br label %bb.cj, !dbg !206110

bb.ch:                                            ; preds = %bb.ce
  store i8 1, ptr %i.gv, align 8, !dbg !206107, !noalias !205900
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i.i.i.i.i.i.i), !dbg !206107
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.828.i.i.i.i.i.i), !dbg !206098
  br label %bb.cj, !dbg !206111

bb.ci:                                            ; preds = %bb.cf, %bb.bu
  %i.ha = phi ptr [ %i.fx, %bb.bu ], [ %i.gr, %bb.cf ]
  %i.hb = phi ptr [ %i.fy, %bb.bu ], [ %i.gs, %bb.cf ]
  %i.hc = phi ptr [ %i.fz, %bb.bu ], [ %i.gt, %bb.cf ]
  %.sink.i.ph.i.i.i.i.i = phi i8 [ 3, %bb.bu ], [ 4, %bb.cf ]
  store i8 %.sink.i.ph.i.i.i.i.i, ptr %i.hc, align 8, !dbg !206112, !noalias !205892
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.516.i.i.i.i.i.i), !dbg !206112
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i), !dbg !206076
  store i8 3, ptr %i.ha, align 8, !dbg !206074, !noalias !205882
  br label %bb.fe, !dbg !206074

bb.cj:                                            ; preds = %bb.ch, %bb.cg, %bb.bv, %bb.bm
  %1 = phi ptr [ %i.fi, %bb.bm ], [ %i.fx, %bb.bv ], [ %i.gr, %bb.ch ], [ %i.gr, %bb.cg ] ; 5 uses
  %2 = phi ptr [ %i.fj, %bb.bm ], [ %i.fy, %bb.bv ], [ %i.gs, %bb.ch ], [ %i.gs, %bb.cg ] ; 5 uses
  %3 = phi ptr [ %i.fl, %bb.bm ], [ %i.fz, %bb.bv ], [ %i.gt, %bb.ch ], [ %i.gt, %bb.cg ] ; 2 uses
  %4 = phi ptr [ %i.fm, %bb.bm ], [ %i.ga, %bb.bv ], [ %i.gu, %bb.ch ], [ %i.gu, %bb.cg ]
  %.sroa.013.0.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.copyload7.i.i.i.i.i.i, %bb.bm ], [ %.sroa.013.0.copyload14.i.i.i.i.i.i, %bb.bv ], [ null, %bb.ch ], [ %.sroa.07.0.copyload.i.i.i.i.i.i.i, %bb.cg ], !dbg !206113 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.516.i.i.i.i.i.i, i64 32, i1 false), !dbg !206114, !noalias !205902
  store i8 1, ptr %3, align 8, !dbg !206112, !noalias !205892
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.516.i.i.i.i.i.i), !dbg !206112
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 416, !dbg !206115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.i.i.i.i.i, i64 32, i1 false), !dbg !206116, !noalias !205882
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 408, !dbg !206115 ; 2 uses
  store ptr %.sroa.013.0.i.i.i.i.i.i, ptr %i.hd, align 8, !dbg !206115, !noalias !205882
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i), !dbg !206076
  %i.he = icmp eq ptr %.sroa.013.0.i.i.i.i.i.i, null, !dbg !206073
  br i1 %i.he, label %bb.ck, label %bb.cl, !dbg !206117

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !206118, !noalias !205882
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 490, !dbg !206118
  store i8 0, ptr %i.hf, align 2, !dbg !206118, !noalias !205882
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 240, !dbg !206118
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.k, ptr noundef nonnull align 8 dereferenceable(104) %i.hg, i64 104, i1 false), !dbg !206118, !noalias !205882
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources10multi_scan10components6bridge14BridgeRecvPortEBS_(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.k)
          to label %bb.ef unwind label %bb.ee, !dbg !206119

bb.cl:                                            ; preds = %bb.cj
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 368, !dbg !206120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hh, ptr noundef nonnull align 8 dereferenceable(40) %i.hd, i64 40, i1 false), !dbg !206121, !noalias !205882
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 492, !dbg !206120
  store i8 1, ptr %i.hi, align 4, !dbg !206120, !noalias !205882
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !206122, !noalias !205882
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 232, !dbg !206123
  %i.hk = load ptr, ptr %i.hj, align 8, !dbg !206123, !noalias !205882, !nonnull !5424, !align !5494, !noundef !5424
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 24, !dbg !206123
  %.val.i.i.i.i.i = load ptr, ptr %i.hl, align 8, !dbg !206124, !nonnull !5424, !noundef !5424 ; 2 uses
  %i.hm = atomicrmw add ptr %.val.i.i.i.i.i, i64 1 monotonic, align 8, !dbg !206125
  %i.hn = icmp slt i64 %i.hm, 0, !dbg !206126
  br i1 %i.hn, label %bb.cm, label %bb.cn, !dbg !206126

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.trap(), !dbg !206127
  unreachable, !dbg !206127

bb.cn:                                            ; preds = %bb.cl
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 384, !dbg !206128 ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !dbg !206128, !alias.scope !205903, !noalias !205882, !nonnull !5424, !noundef !5424 ; 2 uses
  store ptr %.val.i.i.i.i.i, ptr %i.ho, align 8, !dbg !206129, !alias.scope !205903, !noalias !205882
  store ptr %i.hp, ptr %i.i, align 8, !dbg !206122, !noalias !205882
  %i.hq = atomicrmw add ptr %i.hp, i64 -1 release, align 8, !dbg !206130, !noalias !205904
  %i.hr = icmp eq i64 %i.hq, 1, !dbg !206131
  br i1 %i.hr, label %bb.co, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream6morsel11SourceTokenEBK_.exit49.i.i.i.i.i, !dbg !206131

bb.co:                                            ; preds = %bb.cn
  fence acquire, !dbg !206132
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCs2mZqlW55729_12polars_utils12relaxed_cell11RelaxedCellbEE9drop_slowCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #32
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream6morsel11SourceTokenEBK_.exit49.i.i.i.i.i unwind label %bb.cp, !dbg !206133

bb.cp:                                            ; preds = %bb.co
  %i.hs = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !206134, !noalias !205882
  br label %.body51.i.i.i.i.i, !dbg !206054

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream6morsel11SourceTokenEBK_.exit49.i.i.i.i.i: ; preds = %bb.co, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !206134, !noalias !205882
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 360, !dbg !206135 ; 3 uses
  %i.hu = load i64, ptr %i.ht, align 8, !dbg !206135, !noalias !205882, !noundef !5424
  %i.hv = invoke noundef i64 @_RNvMNtCs2g09Ig8GZd6_13polars_stream6morselNtB2_9MorselSeq3new(i64 noundef %i.hu)
          to label %bb.cq unwind label %bb.ec, !dbg !206136

bb.cq:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream6morsel11SourceTokenEBK_.exit49.i.i.i.i.i
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 392, !dbg !206137
  store i64 %i.hv, ptr %i.hw, align 8, !dbg !206137, !alias.scope !205905, !noalias !205882
  %i.hx = load i64, ptr %i.ht, align 8, !dbg !206138, !noalias !205882, !noundef !5424
  %i.hy = call noundef range(i64 1, 0) i64 @llvm.uadd.sat.i64(i64 %i.hx, i64 1), !dbg !206139
  store i64 %i.hy, ptr %i.ht, align 8, !dbg !206140, !noalias !205882
  br label %bb.cr, !dbg !206141

bb.cr:                                            ; preds = %bb.dw, %bb.cq
  %i.hz = phi ptr [ %i.kf, %bb.dw ], [ %1, %bb.cq ]
  %i.ia = phi ptr [ %i.kg, %bb.dw ], [ %2, %bb.cq ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.066.i.i.i.i.i), !dbg !206142
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 344, !dbg !206142
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 492, !dbg !206143
  store i8 0, ptr %i.ic, align 4, !dbg !206143, !noalias !205882
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 368, !dbg !206143
  %.sroa.066.104..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.066.i.i.i.i.i, i64 104, !dbg !206144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.066.104..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.id, i64 40, i1 false), !dbg !206143, !noalias !205882
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 496, !dbg !206142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ie, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.066.i.i.i.i.i, i64 144, i1 false), !dbg !206145, !noalias !205882
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.066.i.i.i.i.i), !dbg !206146
  %.sroa.1171.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 640, !dbg !206142
  store ptr %i.ib, ptr %.sroa.1171.0..sroa_idx.i.i.i.i.i, align 8, !dbg !206142, !noalias !205882
  %.sroa.13.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 649, !dbg !206142
  store i8 0, ptr %.sroa.13.0..sroa_idx.i.i.i.i.i, align 1, !dbg !206142, !noalias !205882
  br label %bb.ct, !dbg !206147

bb.cs:                                            ; preds = %bb.ct
  %i.if = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !206148, !noalias !205882
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNvMNtCs2g09Ig8GZd6_13polars_stream4pipeNtBL_10PortSender4send0EBN_(ptr noundef nonnull align 8 %i.ii) #33
          to label %.body51.i.i.i.i.i unwind label %bb.dy, !dbg !206146

bb.ct:                                            ; preds = %bb.cr, %bb.au
  %i.ig = phi ptr [ %.phi.trans.insert.i.i.i.i, %bb.au ], [ %i.hz, %bb.cr ] ; 15 uses
  %i.ih = phi ptr [ %i.dl, %bb.au ], [ %i.ia, %bb.cr ] ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !206147, !noalias !205882
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 496, !dbg !206147 ; 4 uses
  invoke fastcc void @_RNCNvMNtCs2g09Ig8GZd6_13polars_stream4pipeNtB4_10PortSender4send0B6_(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.h, ptr noundef nonnull align 8 %i.ii, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %bb.cu unwind label %bb.cs, !dbg !206147

bb.cu:                                            ; preds = %bb.ct
  %i.ij = load i64, ptr %i.h, align 8, !dbg !206147, !range !5512, !noalias !205882, !noundef !5424
  %i.ik = trunc nuw i64 %i.ij to i1, !dbg !206147
  br i1 %i.ik, label %bb.cv, label %bb.cw, !dbg !206147

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !206148, !noalias !205882
  store i8 5, ptr %i.ig, align 8, !dbg !206147, !noalias !205882
  br label %bb.fe, !dbg !206147

bb.cw:                                            ; preds = %bb.cu
  %i.il = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !206149
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 448, !dbg !206150 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.im, ptr noundef nonnull align 8 dereferenceable(40) %i.il, i64 40, i1 false), !dbg !206149, !noalias !205882
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !206148, !noalias !205882
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 649, !dbg !206151
  %i.io = load i8, ptr %i.in, align 1, !dbg !206151, !range !5489, !noalias !205882, !noundef !5424
  switch i8 %i.io, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNvMNtCs2g09Ig8GZd6_13polars_stream4pipeNtBL_10PortSender4send0EBN_.exit.i.i.i.i.i [
    i8 0, label %bb.cx
    i8 3, label %bb.cy
  ], !dbg !206151

bb.cx:                                            ; preds = %bb.cw
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 600, !dbg !206151
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream6morsel6MorselEBK_(ptr noalias noundef align 8 dereferenceable(40) %i.ip)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNvMNtCs2g09Ig8GZd6_13polars_stream4pipeNtBL_10PortSender4send0EBN_.exit.i.i.i.i.i unwind label %bb.ec, !dbg !206151

bb.cy:                                            ; preds = %bb.cw
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 504, !dbg !206152 ; 2 uses
  %i.ir = load ptr, ptr %i.iq, align 8, !dbg !206153, !alias.scope !205906, !noalias !205882, !noundef !5424
  %i.is = icmp eq ptr %i.ir, null, !dbg !206153
  br i1 %i.is, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsidoPH4Qgqxm_12polars_async10primitives9connector10SendFutureNtNtCs2g09Ig8GZd6_13polars_stream6morsel6MorselINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtB1R_4pipe11PipeMetricsEEEEB1R_.exit.i.i.i.i.i.i, label %bb.cz, !dbg !206153

bb.cz:                                            ; preds = %bb.cy
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream6morsel6MorselEBK_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.iq)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsidoPH4Qgqxm_12polars_async10primitives9connector10SendFutureNtNtCs2g09Ig8GZd6_13polars_stream6morsel6MorselINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtB1R_4pipe11PipeMetricsEEEEB1R_.exit.i.i.i.i.i.i unwind label %bb.da, !dbg !206153

bb.da:                                            ; preds = %bb.cz
  %i.it = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 648, !dbg !206154
  store i8 0, ptr %i.iu, align 8, !dbg !206154, !noalias !205882
  br label %.body51.i.i.i.i.i, !dbg !206151

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsidoPH4Qgqxm_12polars_async10primitives9connector10SendFutureNtNtCs2g09Ig8GZd6_13polars_stream6morsel6MorselINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtB1R_4pipe11PipeMetricsEEEEB1R_.exit.i.i.i.i.i.i: ; preds = %bb.cz, %bb.cy
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 648, !dbg !206154
  store i8 0, ptr %i.iv, align 8, !dbg !206154, !noalias !205882
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNvMNtCs2g09Ig8GZd6_13polars_stream4pipeNtBL_10PortSender4send0EBN_.exit.i.i.i.i.i, !dbg !206151

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNvMNtCs2g09Ig8GZd6_13polars_stream4pipeNtBL_10PortSender4send0EBN_.exit.i.i.i.i.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsidoPH4Qgqxm_12polars_async10primitives9connector10SendFutureNtNtCs2g09Ig8GZd6_13polars_stream6morsel6MorselINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtB1R_4pipe11PipeMetricsEEEEB1R_.exit.i.i.i.i.i.i, %bb.cx, %bb.cw
  %i.iw = load ptr, ptr %i.im, align 8, !dbg !206142, !noalias !205882, !noundef !5424
  %.not.i.i.i.i.i = icmp eq ptr %i.iw, null, !dbg !206142
  br i1 %.not.i.i.i.i.i, label %bb.dh, label %bb.db, !dbg !206155

bb.db:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNvMNtCs2g09Ig8GZd6_13polars_stream4pipeNtBL_10PortSender4send0EBN_.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ii, ptr noundef nonnull align 8 dereferenceable(40) %i.im, i64 40, i1 false), !dbg !206156, !noalias !205882
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 489, !dbg !206157
  store i8 0, ptr %i.ix, align 1, !dbg !206157, !noalias !205882
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 344, !dbg !206157
  %i.iz = load ptr, ptr %i.iy, align 8, !dbg !206157, !noalias !205882, !nonnull !5424, !noundef !5424
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !205882
  store ptr %i.iz, ptr %i.c, align 8, !noalias !205882
  invoke void @_RNvXs1_NtNtCsidoPH4Qgqxm_12polars_async10primitives9connectorINtB5_9SenderExtNtNtCs2g09Ig8GZd6_13polars_stream6morsel6MorselINtNtCscgRAwXFJnXP_4core6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtB1h_4pipe11PipeMetricsEEENtNtNtB23_3ops4drop4Drop4dropB1h_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.de unwind label %bb.dc, !dbg !206158

bb.dc:                                            ; preds = %bb.db
  %i.ja = landingpad { ptr, i32 }
          cleanup
          catch ptr null                          ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !205907), !dbg !206158
  call void @llvm.experimental.noalias.scope.decl(metadata !205908), !dbg !206159
  %i.jb = load ptr, ptr %i.c, align 8, !dbg !206160, !alias.scope !205909, !noalias !205882, !nonnull !5424, !noundef !5424
  %i.jc = atomicrmw add ptr %i.jb, i64 -1 release, align 8, !dbg !206161, !noalias !205910
  %i.jd = icmp eq i64 %i.jc, 1, !dbg !206162
  br i1 %i.jd, label %bb.dd, label %.body54.i.i.i.i.i, !dbg !206162

bb.dd:                                            ; preds = %bb.dc
  fence acquire, !dbg !206163
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCsidoPH4Qgqxm_12polars_async10primitives9connector9ConnectorNtNtCs2g09Ig8GZd6_13polars_stream6morsel6MorselINtNtCscgRAwXFJnXP_4core6option6OptionIBx_NtNtB1P_4pipe11PipeMetricsEEEE9drop_slowB1P_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #32
          to label %.body54.i.i.i.i.i unwind label %bb.dg, !dbg !206164

bb.de:                                            ; preds = %bb.db
  call void @llvm.experimental.noalias.scope.decl(metadata !205911), !dbg !206158
  call void @llvm.experimental.noalias.scope.decl(metadata !205912), !dbg !206165
  %i.je = load ptr, ptr %i.c, align 8, !dbg !206166, !alias.scope !205913, !noalias !205882, !nonnull !5424, !noundef !5424
  %i.jf = atomicrmw add ptr %i.je, i64 -1 release, align 8, !dbg !206167, !noalias !205914
  %i.jg = icmp eq i64 %i.jf, 1, !dbg !206168
  br i1 %i.jg, label %bb.df, label %bb.di, !dbg !206168

bb.df:                                            ; preds = %bb.de
  fence acquire, !dbg !206169
end_hunk_1
begin_hunk_2_@llvm.abs.i128
!205913 = !{!205679, !205677, !205669, !205667}
!205914 = !{!205679, !205677}
!205915 = !{!205690}
!205916 = !{!205692}
!205917 = !{!205692, !205690, !205695}
!205918 = !{!205692, !205690}
!205919 = !{!205703}
!205920 = !{!205705}
!205921 = !{!205705, !205703, !205695}
!205922 = !{!205705, !205703}
!205923 = !DILexicalBlockFile(scope: !205646, file: !5454, discriminator: 0)
!205924 = !DILexicalBlockFile(scope: !205569, file: !5454, discriminator: 0)
!205925 = !{!205725}
!205926 = !{!205727}
!205927 = !{!205727, !205725, !205732, !205730}
!205928 = !{!205727, !205725}
!205929 = !{!205740}
!205930 = !{!205742}
!205931 = !{!205742, !205740, !205732, !205730}
!205932 = !{!205742, !205740}
!205933 = !DILexicalBlockFile(scope: !205750, file: !5454, discriminator: 0)
!205934 = !{!205753}
!205935 = !{!205753, !205755, !205524, !205501, !205499}
!205936 = !{!205775}
!205937 = !{!205777}
!205938 = !{!205777, !205775, !205782, !205780}
!205939 = !{!205777, !205775}
!205940 = !{!205790}
!205941 = !{!205792}
!205942 = !{!205792, !205790, !205782, !205780}
!205943 = !{!205792, !205790}
!205944 = !DILocation(line: 190, column: 17, scope: !205804)
!205945 = !DILexicalBlockFile(scope: !205488, file: !5484, discriminator: 4)
!205946 = !DILexicalBlockFile(scope: !205487, file: !5484, discriminator: 4)
!205947 = !DILocation(line: 191, column: 20, scope: !205804)
!205948 = !DILocation(line: 2428, column: 15, scope: !205946, inlinedAt: !205947)
!205949 = !DILocation(line: 2110, column: 27, scope: !205945, inlinedAt: !205948)
!205950 = !DILexicalBlockFile(scope: !205488, file: !5484, discriminator: 6)
!205951 = !DILexicalBlockFile(scope: !205487, file: !5484, discriminator: 6)
!205952 = !DILocation(line: 192, column: 36, scope: !205804)
!205953 = !DILocation(line: 2428, column: 15, scope: !205951, inlinedAt: !205952)
!205954 = !DILocation(line: 2110, column: 27, scope: !205950, inlinedAt: !205953)
!205955 = !{!205814}
!205956 = !{!205816}
!205957 = !{!205816, !205814}
!205958 = !DILocation(line: 199, column: 9, scope: !205804)
!205959 = !DILexicalBlockFile(scope: !205488, file: !5484, discriminator: 8)
!205960 = !DILexicalBlockFile(scope: !205487, file: !5484, discriminator: 8)
!205961 = !DILocation(line: 200, column: 9, scope: !205804)
!205962 = !DILocation(line: 2428, column: 15, scope: !205960, inlinedAt: !205961)
!205963 = !DILocation(line: 2110, column: 27, scope: !205959, inlinedAt: !205962)
!205964 = !{!205830}
!205965 = !{!205832}
!205966 = !{!205832, !205830}
!205967 = !{!205846}
!205968 = !{!205848}
!205969 = !{!205848, !205846}
!205970 = !DILocation(line: 169, column: 24, scope: !205477)
!205971 = !DILocation(line: 4054, column: 17, scope: !2685, inlinedAt: !205481)
!205972 = !DILocation(line: 67, column: 12, scope: !205480, inlinedAt: !205857)
!205973 = !DILocation(line: 202, column: 5, scope: !205477)
!205974 = !DILocation(line: 72, column: 18, scope: !205480, inlinedAt: !205857)
!205975 = !DILocation(line: 2447, column: 9, scope: !205482, inlinedAt: !205860)
!205976 = !DILocation(line: 171, column: 33, scope: !205483)
!205977 = !DILocation(line: 171, column: 27, scope: !205483)
!205978 = !DILocation(line: 183, column: 18, scope: !205483)
!205979 = !DILocation(line: 444, column: 20, scope: !205485, inlinedAt: !205865)
!205980 = !DILocation(line: 173, column: 28, scope: !205486)
!205981 = !DILocation(line: 3998, column: 17, scope: !2688, inlinedAt: !205493)
!205982 = !DILocation(line: 102, column: 12, scope: !2690, inlinedAt: !205491)
!205983 = !DILocation(line: 109, column: 14, scope: !2690, inlinedAt: !205491)
!205984 = !DILocation(line: 172, column: 31, scope: !205483)
!205985 = !DILocation(line: 176, column: 21, scope: !205494)
!205986 = !DILocation(line: 176, column: 51, scope: !205494)
!205987 = !DILocation(line: 374, column: 9, scope: !205496, inlinedAt: !205867)
!205988 = !DILocation(line: 3905, column: 24, scope: !2343, inlinedAt: !205520)
!205989 = !DILocation(line: 103, column: 8, scope: !205503, inlinedAt: !205518)
!205990 = !DILocation(line: 104, column: 9, scope: !205503, inlinedAt: !205518)
!205991 = !DILocation(line: 50, column: 28, scope: !205521, inlinedAt: !205522)
!205992 = !DILocation(line: 50, column: 18, scope: !205521, inlinedAt: !205522)
!205993 = !DILocation(line: 51, column: 36, scope: !205525, inlinedAt: !205522)
!205994 = !DILocation(line: 2428, column: 9, scope: !205526, inlinedAt: !205529)
!205995 = !DILocation(line: 51, column: 22, scope: !205525, inlinedAt: !205522)
!205996 = !DILocation(line: 51, column: 43, scope: !205530, inlinedAt: !205522)
!205997 = !DILocation(line: 51, column: 47, scope: !205530, inlinedAt: !205522)
!205998 = !DILocation(line: 0, scope: !205875, inlinedAt: !205522)
!205999 = !DILocation(line: 51, column: 22, scope: !205530, inlinedAt: !205522)
!206000 = !DILocation(line: 51, column: 13, scope: !205525, inlinedAt: !205522)
!206001 = !DILocation(line: 51, column: 16, scope: !205525, inlinedAt: !205522)
!206002 = !DILocation(line: 55, column: 50, scope: !205531, inlinedAt: !205522)
!206003 = !DILocation(line: 55, column: 64, scope: !205531, inlinedAt: !205522)
!206004 = !DILocation(line: 2428, column: 9, scope: !205532, inlinedAt: !205535)
!206005 = !DILocation(line: 55, column: 71, scope: !205536, inlinedAt: !205522)
!206006 = !DILocation(line: 71, column: 5, scope: !205521, inlinedAt: !205522)
!206007 = !DILocation(line: 55, column: 75, scope: !205536, inlinedAt: !205522)
!206008 = !DILocation(line: 0, scope: !205876, inlinedAt: !205522)
!206009 = !DILocation(line: 55, column: 50, scope: !205536, inlinedAt: !205522)
!206010 = !DILocation(line: 55, column: 13, scope: !205531, inlinedAt: !205522)
!206011 = !DILocation(line: 71, column: 5, scope: !205525, inlinedAt: !205522)
!206012 = !DILocation(line: 55, column: 17, scope: !205531, inlinedAt: !205522)
!206013 = !DILocation(line: 55, column: 21, scope: !205531, inlinedAt: !205522)
!206014 = !DILocation(line: 60, column: 14, scope: !205537, inlinedAt: !205522)
!206015 = !DILocation(line: 2428, column: 9, scope: !2627, inlinedAt: !205538)
!206016 = !DILocation(line: 60, column: 32, scope: !205537, inlinedAt: !205522)
!206017 = !DILocation(line: 60, column: 46, scope: !205537, inlinedAt: !205522)
!206018 = !DILocation(line: 0, scope: !205877, inlinedAt: !205522)
!206019 = !DILocation(line: 60, column: 39, scope: !205537, inlinedAt: !205522)
!206020 = !DILocation(line: 1231, column: 15, scope: !2628, inlinedAt: !205541)
!206021 = !DILocation(line: 1231, column: 9, scope: !2628, inlinedAt: !205541)
!206022 = !DILocation(line: 1233, column: 17, scope: !2628, inlinedAt: !205541)
!206023 = !DILocation(line: 1233, column: 23, scope: !2629, inlinedAt: !205541)
!206024 = !DILocation(line: 1233, column: 86, scope: !2628, inlinedAt: !205541)
!206025 = !DILocation(line: 1227, column: 5, scope: !2628, inlinedAt: !205541)
!206026 = !DILocation(line: 1232, column: 16, scope: !2628, inlinedAt: !205541)
!206027 = !DILocation(line: 2447, column: 9, scope: !205543, inlinedAt: !205546)
!206028 = !DILocation(line: 60, column: 13, scope: !205537, inlinedAt: !205522)
!206029 = !DILocation(line: 745, column: 13, scope: !1184, inlinedAt: !205548)
!206030 = !DILocation(line: 129, column: 13, scope: !1186, inlinedAt: !205549)
!206031 = !DILocation(line: 3904, column: 24, scope: !1, inlinedAt: !205554)
!206032 = !DILocation(line: 464, column: 12, scope: !1188, inlinedAt: !205552)
!206033 = !DILocation(line: 476, column: 13, scope: !1188, inlinedAt: !205552)
!206034 = !DILocation(line: 129, column: 32, scope: !1186, inlinedAt: !205549)
!206035 = !DILocation(line: 3889, column: 24, scope: !1191, inlinedAt: !205556)
!206036 = !DILocation(line: 129, column: 9, scope: !1186, inlinedAt: !205549)
!206037 = !DILocation(line: 3922, column: 24, scope: !1193, inlinedAt: !205559)
!206038 = !DILocation(line: 90, column: 12, scope: !1195, inlinedAt: !205557)
!206039 = !DILocation(line: 95, column: 18, scope: !1195, inlinedAt: !205557)
!206040 = !DILocation(line: 63, column: 59, scope: !205537, inlinedAt: !205522)
!206041 = !DILocation(line: 63, column: 63, scope: !205537, inlinedAt: !205522)
!206042 = !DILocation(line: 63, column: 67, scope: !205537, inlinedAt: !205522)
!206043 = !DILocation(line: 63, column: 45, scope: !205537, inlinedAt: !205522)
!206044 = !DILocation(line: 63, column: 93, scope: !205560, inlinedAt: !205522)
!206045 = !DILocation(line: 78, column: 42, scope: !205561, inlinedAt: !205562)
!206046 = !DILocation(line: 76, column: 9, scope: !205564, inlinedAt: !205562)
!206047 = !DILocation(line: 71, column: 5, scope: !205531, inlinedAt: !205522)
!206048 = !DILocation(line: 63, column: 97, scope: !205537, inlinedAt: !205522)
!206049 = !DILocation(line: 74, column: 9, scope: !205561, inlinedAt: !205562)
!206050 = !DILocation(line: 75, column: 9, scope: !205563, inlinedAt: !205562)
!206051 = !DILocation(line: 79, column: 35, scope: !205568, inlinedAt: !205562)
!206052 = !DILocation(line: 81, column: 9, scope: !205569, inlinedAt: !205562)
!206053 = !DILocation(line: 124, column: 81, scope: !205571, inlinedAt: !205562)
!206054 = !DILocation(line: 0, scope: !205883, inlinedAt: !205562)
!206055 = !DILocation(line: 124, column: 77, scope: !205571, inlinedAt: !205562)
!206056 = !DILocation(line: 124, column: 56, scope: !205571, inlinedAt: !205562)
!206057 = !DILocation(line: 124, column: 56, scope: !205570, inlinedAt: !205562)
!206058 = !DILocation(line: 124, column: 50, scope: !205570, inlinedAt: !205562)
!206059 = !DILocation(line: 124, column: 18, scope: !205572, inlinedAt: !205562)
!206060 = !DILocation(line: 124, column: 22, scope: !205572, inlinedAt: !205562)
!206061 = !DILocation(line: 129, column: 37, scope: !205570, inlinedAt: !205562)
!206062 = !DILocation(line: 129, column: 17, scope: !205570, inlinedAt: !205562)
!206063 = !DILocation(line: 810, column: 1, scope: !401, inlinedAt: !205577)
!206064 = !DILocation(line: 810, column: 1, scope: !402, inlinedAt: !205580)
!206065 = !DILocation(line: 444, column: 20, scope: !403, inlinedAt: !205583)
!206066 = !DILocation(line: 3956, column: 24, scope: !406, inlinedAt: !205585)
!206067 = !DILocation(line: 2814, column: 12, scope: !405, inlinedAt: !205581)
!206068 = !DILocation(line: 4387, column: 24, scope: !20, inlinedAt: !205586)
!206069 = !DILocation(line: 2857, column: 18, scope: !405, inlinedAt: !205581)
!206070 = !DILocation(line: 129, column: 54, scope: !205570, inlinedAt: !205562)
!206071 = !DILocation(line: 120, column: 13, scope: !205570, inlinedAt: !205562)
!206072 = !DILocation(line: 131, column: 9, scope: !205569, inlinedAt: !205562)
!206073 = !DILocation(line: 82, column: 36, scope: !205569, inlinedAt: !205562)
!206074 = !DILocation(line: 82, column: 46, scope: !205587, inlinedAt: !205562)
!206075 = !DILocation(line: 33, column: 56, scope: !205588, inlinedAt: !205589)
!206076 = !DILocation(line: 82, column: 50, scope: !205587, inlinedAt: !205562)
!206077 = !DILocation(line: 33, column: 56, scope: !205590, inlinedAt: !205591)
!206078 = !DILocation(line: 33, column: 23, scope: !205588, inlinedAt: !205589)
!206079 = !DILocation(line: 35, column: 15, scope: !205595, inlinedAt: !205589)
!206080 = !DILocation(line: 35, column: 9, scope: !205595, inlinedAt: !205589)
!206081 = !DILocation(line: 36, column: 26, scope: !205595, inlinedAt: !205589)
!206082 = !DILocation(line: 37, column: 47, scope: !205599, inlinedAt: !205589)
!206083 = !DILocation(line: 929, column: 22, scope: !205601, inlinedAt: !205604)
!206084 = !DILocation(line: 930, column: 49, scope: !205605, inlinedAt: !205604)
!206085 = !DILocation(line: 37, column: 34, scope: !205599, inlinedAt: !205589)
!206086 = !DILocation(line: 37, column: 24, scope: !205599, inlinedAt: !205589)
!206087 = !DILocation(line: 37, column: 29, scope: !205599, inlinedAt: !205589)
!206088 = !DILocation(line: 37, column: 17, scope: !205598, inlinedAt: !205589)
!206089 = !DILocation(line: 40, column: 21, scope: !205598, inlinedAt: !205589)
!206090 = !DILocation(line: 40, column: 31, scope: !205606, inlinedAt: !205589)
!206091 = !DILocation(line: 43, column: 26, scope: !205595, inlinedAt: !205589)
!206092 = !DILocation(line: 43, column: 34, scope: !205607, inlinedAt: !205589)
!206093 = !DILocation(line: 43, column: 43, scope: !205608, inlinedAt: !205589)
!206094 = !DILocation(line: 283, column: 51, scope: !2602, inlinedAt: !205609)
!206095 = !DILocation(line: 40, column: 35, scope: !205606, inlinedAt: !205589)
!206096 = !DILocation(line: 0, scope: !205897, inlinedAt: !205589)
!206097 = !DILocation(line: 40, column: 21, scope: !205606, inlinedAt: !205589)
!206098 = !DILocation(line: 43, column: 47, scope: !205608, inlinedAt: !205589)
!206099 = !DILocation(line: 0, scope: !205899, inlinedAt: !205589)
!206100 = !DILocation(line: 283, column: 22, scope: !2602, inlinedAt: !205609)
!206101 = !DILocation(line: 284, column: 9, scope: !2603, inlinedAt: !205609)
!206102 = !DILocation(line: 284, column: 22, scope: !2604, inlinedAt: !205609)
!206103 = !DILocation(line: 284, column: 26, scope: !2604, inlinedAt: !205609)
!206104 = !DILocation(line: 284, column: 9, scope: !2604, inlinedAt: !205609)
!206105 = !DILocation(line: 1164, column: 15, scope: !2605, inlinedAt: !205613)
!206106 = !DILocation(line: 1164, column: 9, scope: !2605, inlinedAt: !205613)
!206107 = !DILocation(line: 0, scope: !2602, inlinedAt: !205609)
!206108 = !DILocation(line: 285, column: 6, scope: !2602, inlinedAt: !205609)
!206109 = !DILocation(line: 43, column: 34, scope: !205608, inlinedAt: !205589)
!206110 = !DILocation(line: 1342, column: 5, scope: !2606, inlinedAt: !205614)
!206111 = !DILocation(line: 1340, column: 28, scope: !2606, inlinedAt: !205614)
!206112 = !DILocation(line: 0, scope: !205588, inlinedAt: !205589)
!206113 = !DILocation(line: 0, scope: !205595, inlinedAt: !205589)
!206114 = !DILocation(line: 45, column: 6, scope: !205588, inlinedAt: !205589)
!206115 = !DILocation(line: 82, column: 36, scope: !205615, inlinedAt: !205562)
!206116 = !DILocation(line: 82, column: 36, scope: !205587, inlinedAt: !205562)
!206117 = !DILocation(line: 82, column: 30, scope: !205569, inlinedAt: !205562)
!206118 = !DILocation(line: 85, column: 26, scope: !205569, inlinedAt: !205562)
!206119 = !DILocation(line: 1003, column: 1, scope: !205616, inlinedAt: !205617)
!206120 = !DILocation(line: 83, column: 26, scope: !205618, inlinedAt: !205562)
!206121 = !DILocation(line: 83, column: 20, scope: !205569, inlinedAt: !205562)
!206122 = !DILocation(line: 101, column: 13, scope: !205570, inlinedAt: !205562)
!206123 = !DILocation(line: 101, column: 41, scope: !205570, inlinedAt: !205562)
!206124 = !DILocation(line: 101, column: 59, scope: !205570, inlinedAt: !205562)
!206125 = !DILocation(line: 3937, column: 24, scope: !5062, inlinedAt: !205622)
!206126 = !DILocation(line: 2411, column: 12, scope: !5066, inlinedAt: !205620)
!206127 = !DILocation(line: 2412, column: 13, scope: !5066, inlinedAt: !205620)
!206128 = !DILocation(line: 929, column: 22, scope: !205623, inlinedAt: !205626)
!206129 = !DILocation(line: 930, column: 49, scope: !205629, inlinedAt: !205626)
!206130 = !DILocation(line: 3956, column: 24, scope: !406, inlinedAt: !205640)
!206131 = !DILocation(line: 2814, column: 12, scope: !405, inlinedAt: !205638)
!206132 = !DILocation(line: 4387, column: 24, scope: !20, inlinedAt: !205641)
!206133 = !DILocation(line: 2857, column: 18, scope: !405, inlinedAt: !205638)
!206134 = !DILocation(line: 101, column: 67, scope: !205570, inlinedAt: !205562)
!206135 = !DILocation(line: 104, column: 43, scope: !205570, inlinedAt: !205562)
!206136 = !DILocation(line: 104, column: 28, scope: !205570, inlinedAt: !205562)
!206137 = !DILocation(line: 171, column: 9, scope: !5076, inlinedAt: !205642)
!206138 = !DILocation(line: 106, column: 26, scope: !205570, inlinedAt: !205562)
!206139 = !DILocation(line: 2355, column: 13, scope: !5172, inlinedAt: !205645)
!206140 = !DILocation(line: 106, column: 13, scope: !205570, inlinedAt: !205562)
!206141 = !DILocation(line: 108, column: 13, scope: !205570, inlinedAt: !205562)
!206142 = !DILocation(line: 108, column: 32, scope: !205646, inlinedAt: !205562)
!206143 = !DILocation(line: 108, column: 40, scope: !205646, inlinedAt: !205562)
!206144 = !DILocation(line: 29, column: 72, scope: !2662, inlinedAt: !205647)
!206145 = !DILocation(line: 143, column: 9, scope: !2663, inlinedAt: !205648)
!206146 = !DILocation(line: 108, column: 52, scope: !205646, inlinedAt: !205562)
!206147 = !DILocation(line: 108, column: 48, scope: !205649, inlinedAt: !205562)
!206148 = !DILocation(line: 108, column: 52, scope: !205649, inlinedAt: !205562)
!206149 = !DILocation(line: 108, column: 32, scope: !205649, inlinedAt: !205562)
!206150 = !DILocation(line: 108, column: 32, scope: !205650, inlinedAt: !205562)
!206151 = !DILocation(line: 29, column: 72, scope: !1842, inlinedAt: !205651)
!206152 = !DILocation(line: 810, column: 1, scope: !1843, inlinedAt: !205652)
!206153 = !DILocation(line: 810, column: 1, scope: !1847, inlinedAt: !205657)
!206154 = !DILocation(line: 38, column: 5, scope: !1844, inlinedAt: !205651)
!206155 = !DILocation(line: 108, column: 23, scope: !205646, inlinedAt: !205562)
!206156 = !DILocation(line: 108, column: 27, scope: !205646, inlinedAt: !205562)
!206157 = !DILocation(line: 109, column: 22, scope: !205646, inlinedAt: !205562)
!206158 = !DILocation(line: 810, column: 1, scope: !12, inlinedAt: !205660)
!206159 = !DILocation(line: 810, column: 1, scope: !14, inlinedAt: !205665)
!206160 = !DILocation(line: 444, column: 20, scope: !15, inlinedAt: !205672)
!206161 = !DILocation(line: 3956, column: 24, scope: !18, inlinedAt: !205674)
!206162 = !DILocation(line: 2814, column: 12, scope: !17, inlinedAt: !205670)
!206163 = !DILocation(line: 4387, column: 24, scope: !20, inlinedAt: !205675)
!206164 = !DILocation(line: 2857, column: 18, scope: !17, inlinedAt: !205670)
!206165 = !DILocation(line: 810, column: 1, scope: !14, inlinedAt: !205680)
!206166 = !DILocation(line: 444, column: 20, scope: !15, inlinedAt: !205683)
!206167 = !DILocation(line: 3956, column: 24, scope: !18, inlinedAt: !205685)
!206168 = !DILocation(line: 2814, column: 12, scope: !17, inlinedAt: !205681)
!206169 = !DILocation(line: 4387, column: 24, scope: !20, inlinedAt: !205686)
!206170 = !DILocation(line: 2857, column: 18, scope: !17, inlinedAt: !205681)
!206171 = !DILocation(line: 120, column: 16, scope: !205570, inlinedAt: !205562)
!206172 = !DILocation(line: 120, column: 34, scope: !205570, inlinedAt: !205562)
!206173 = !DILocation(line: 1003, column: 2, scope: !11, inlinedAt: !205658)
!206174 = !DILocation(line: 110, column: 22, scope: !205646, inlinedAt: !205562)
!206175 = !DILocation(line: 810, column: 1, scope: !22, inlinedAt: !205688)
!206176 = !DILocation(line: 810, column: 1, scope: !23, inlinedAt: !205693)
!206177 = !DILocation(line: 444, column: 20, scope: !24, inlinedAt: !205698)
!206178 = !DILocation(line: 3956, column: 24, scope: !27, inlinedAt: !205700)
!206179 = !DILocation(line: 2814, column: 12, scope: !26, inlinedAt: !205696)
!206180 = !DILocation(line: 4387, column: 24, scope: !20, inlinedAt: !205701)
!206181 = !DILocation(line: 2857, column: 18, scope: !26, inlinedAt: !205696)
!206182 = !DILocation(line: 810, column: 1, scope: !23, inlinedAt: !205706)
!206183 = !DILocation(line: 444, column: 20, scope: !24, inlinedAt: !205709)
!206184 = !DILocation(line: 3956, column: 24, scope: !27, inlinedAt: !205711)
!206185 = !DILocation(line: 2814, column: 12, scope: !26, inlinedAt: !205707)
!206186 = !DILocation(line: 4387, column: 24, scope: !20, inlinedAt: !205712)
!206187 = !DILocation(line: 2857, column: 18, scope: !26, inlinedAt: !205707)
!206188 = !DILocation(line: 1003, column: 2, scope: !21, inlinedAt: !205687)
!206189 = !DILocation(line: 112, column: 56, scope: !205646, inlinedAt: !205562)
!206190 = !DILocation(line: 112, column: 70, scope: !205646, inlinedAt: !205562)
!206191 = !DILocation(line: 2428, column: 9, scope: !205532, inlinedAt: !205714)
!206192 = !DILocation(line: 112, column: 77, scope: !205715, inlinedAt: !205562)
!206193 = !DILocation(line: 112, column: 81, scope: !205715, inlinedAt: !205562)
!206194 = !DILocation(line: 0, scope: !205923, inlinedAt: !205562)
!206195 = !DILocation(line: 112, column: 56, scope: !205715, inlinedAt: !205562)
!206196 = !DILocation(line: 112, column: 50, scope: !205646, inlinedAt: !205562)
!206197 = !DILocation(line: 118, column: 13, scope: !205570, inlinedAt: !205562)
!206198 = !DILocation(line: 112, column: 18, scope: !205716, inlinedAt: !205562)
!206199 = !DILocation(line: 112, column: 22, scope: !205716, inlinedAt: !205562)
!206200 = !DILocation(line: 117, column: 26, scope: !205646, inlinedAt: !205562)
!206201 = !DILocation(line: 117, column: 17, scope: !205646, inlinedAt: !205562)
!206202 = !DILocation(line: 0, scope: !205569, inlinedAt: !205562)
!206203 = !DILocation(line: 132, column: 5, scope: !205567, inlinedAt: !205562)
!206204 = !DILocation(line: 132, column: 5, scope: !205564, inlinedAt: !205562)
!206205 = !DILocation(line: 121, column: 22, scope: !205570, inlinedAt: !205562)
!206206 = !DILocation(line: 121, column: 17, scope: !205570, inlinedAt: !205562)
!206207 = !DILocation(line: 122, column: 22, scope: !205570, inlinedAt: !205562)
!206208 = !DILocation(line: 122, column: 17, scope: !205570, inlinedAt: !205562)
!206209 = !DILocation(line: 124, column: 70, scope: !205570, inlinedAt: !205562)
!206210 = !DILocation(line: 2428, column: 9, scope: !205532, inlinedAt: !205718)
!206211 = !DILocation(line: 85, column: 28, scope: !205569, inlinedAt: !205562)
!206212 = !DILocation(line: 0, scope: !205924, inlinedAt: !205562)
!206213 = !DILocation(line: 87, column: 32, scope: !205569, inlinedAt: !205562)
!206214 = !DILocation(line: 87, column: 46, scope: !205569, inlinedAt: !205562)
!206215 = !DILocation(line: 2428, column: 9, scope: !205526, inlinedAt: !205720)
!206216 = !DILocation(line: 87, column: 53, scope: !205721, inlinedAt: !205562)
!206217 = !DILocation(line: 87, column: 57, scope: !205721, inlinedAt: !205562)
!206218 = !DILocation(line: 87, column: 32, scope: !205721, inlinedAt: !205562)
!206219 = !DILocation(line: 87, column: 26, scope: !205569, inlinedAt: !205562)
!206220 = !DILocation(line: 92, column: 38, scope: !205569, inlinedAt: !205562)
!206221 = !DILocation(line: 87, column: 21, scope: !205569, inlinedAt: !205562)
!206222 = !DILocation(line: 88, column: 28, scope: !205569, inlinedAt: !205562)
!206223 = !DILocation(line: 132, column: 5, scope: !205563, inlinedAt: !205562)
!206224 = !DILocation(line: 810, column: 1, scope: !12, inlinedAt: !205723)
!206225 = !DILocation(line: 810, column: 1, scope: !14, inlinedAt: !205728)
!206226 = !DILocation(line: 444, column: 20, scope: !15, inlinedAt: !205735)
!206227 = !DILocation(line: 3956, column: 24, scope: !18, inlinedAt: !205737)
!206228 = !DILocation(line: 2814, column: 12, scope: !17, inlinedAt: !205733)
!206229 = !DILocation(line: 4387, column: 24, scope: !20, inlinedAt: !205738)
!206230 = !DILocation(line: 2857, column: 18, scope: !17, inlinedAt: !205733)
!206231 = !DILocation(line: 810, column: 1, scope: !14, inlinedAt: !205743)
!206232 = !DILocation(line: 444, column: 20, scope: !15, inlinedAt: !205746)
!206233 = !DILocation(line: 3956, column: 24, scope: !18, inlinedAt: !205748)
!206234 = !DILocation(line: 2814, column: 12, scope: !17, inlinedAt: !205744)
!206235 = !DILocation(line: 4387, column: 24, scope: !20, inlinedAt: !205749)
!206236 = !DILocation(line: 2857, column: 18, scope: !17, inlinedAt: !205744)
!206237 = !DILocation(line: 132, column: 6, scope: !205561, inlinedAt: !205562)
!206238 = !DILocation(line: 0, scope: !205561, inlinedAt: !205562)
!206239 = !DILocation(line: 63, column: 27, scope: !205537, inlinedAt: !205522)
!206240 = !DILocation(line: 66, column: 14, scope: !205750, inlinedAt: !205522)
!206241 = !DILocation(line: 2428, column: 9, scope: !2627, inlinedAt: !205751)
!206242 = !DILocation(line: 66, column: 32, scope: !205750, inlinedAt: !205522)
!206243 = !DILocation(line: 66, column: 46, scope: !205750, inlinedAt: !205522)
!206244 = !DILocation(line: 0, scope: !205933, inlinedAt: !205522)
!206245 = !DILocation(line: 66, column: 39, scope: !205750, inlinedAt: !205522)
!206246 = !DILocation(line: 1231, column: 15, scope: !2628, inlinedAt: !205754)
!206247 = !DILocation(line: 1231, column: 9, scope: !2628, inlinedAt: !205754)
!206248 = !DILocation(line: 1233, column: 17, scope: !2628, inlinedAt: !205754)
!206249 = !DILocation(line: 1233, column: 23, scope: !2629, inlinedAt: !205754)
!206250 = !DILocation(line: 1233, column: 86, scope: !2628, inlinedAt: !205754)
!206251 = !DILocation(line: 1227, column: 5, scope: !2628, inlinedAt: !205754)
!206252 = !DILocation(line: 1232, column: 16, scope: !2628, inlinedAt: !205754)
!206253 = !DILocation(line: 2447, column: 9, scope: !205543, inlinedAt: !205757)
!206254 = !DILocation(line: 66, column: 13, scope: !205750, inlinedAt: !205522)
!206255 = !DILocation(line: 745, column: 13, scope: !1184, inlinedAt: !205759)
!206256 = !DILocation(line: 129, column: 13, scope: !1186, inlinedAt: !205760)
!206257 = !DILocation(line: 3904, column: 24, scope: !1, inlinedAt: !205765)
!206258 = !DILocation(line: 464, column: 12, scope: !1188, inlinedAt: !205763)
!206259 = !DILocation(line: 476, column: 13, scope: !1188, inlinedAt: !205763)
!206260 = !DILocation(line: 129, column: 32, scope: !1186, inlinedAt: !205760)
!206261 = !DILocation(line: 3889, column: 24, scope: !1191, inlinedAt: !205767)
!206262 = !DILocation(line: 129, column: 9, scope: !1186, inlinedAt: !205760)
!206263 = !DILocation(line: 3922, column: 24, scope: !1193, inlinedAt: !205770)
!206264 = !DILocation(line: 90, column: 12, scope: !1195, inlinedAt: !205768)
!206265 = !DILocation(line: 95, column: 18, scope: !1195, inlinedAt: !205768)
!206266 = !DILocation(line: 70, column: 14, scope: !205750, inlinedAt: !205522)
!206267 = !DILocation(line: 810, column: 1, scope: !263, inlinedAt: !205772)
!206268 = !DILocation(line: 810, column: 1, scope: !22, inlinedAt: !205773)
!206269 = !DILocation(line: 810, column: 1, scope: !23, inlinedAt: !205778)
!206270 = !DILocation(line: 444, column: 20, scope: !24, inlinedAt: !205785)
!206271 = !DILocation(line: 3956, column: 24, scope: !27, inlinedAt: !205787)
!206272 = !DILocation(line: 2814, column: 12, scope: !26, inlinedAt: !205783)
!206273 = !DILocation(line: 4387, column: 24, scope: !20, inlinedAt: !205788)
!206274 = !DILocation(line: 2857, column: 18, scope: !26, inlinedAt: !205783)
!206275 = !DILocation(line: 810, column: 1, scope: !23, inlinedAt: !205793)
!206276 = !DILocation(line: 444, column: 20, scope: !24, inlinedAt: !205796)
!206277 = !DILocation(line: 3956, column: 24, scope: !27, inlinedAt: !205798)
!206278 = !DILocation(line: 2814, column: 12, scope: !26, inlinedAt: !205794)
!206279 = !DILocation(line: 4387, column: 24, scope: !20, inlinedAt: !205799)
!206280 = !DILocation(line: 2857, column: 18, scope: !26, inlinedAt: !205794)
!206281 = !DILocation(line: 1003, column: 2, scope: !2468, inlinedAt: !205771)
!206282 = !DILocation(line: 71, column: 5, scope: !205537, inlinedAt: !205522)
!206283 = !DILocation(line: 544, column: 19, scope: !205512, inlinedAt: !205870)
!206284 = !DILocation(line: 607, column: 23, scope: !205802, inlinedAt: !205803)
!206285 = !DILocation(line: 598, column: 5, scope: !205800, inlinedAt: !205803)
!206286 = !DILocation(line: 0, scope: !205521, inlinedAt: !205522)
!206287 = !DILocation(line: 181, column: 13, scope: !205494)
!206288 = !DILocation(line: 186, column: 17, scope: !205804)
!206289 = !DILocation(line: 186, column: 23, scope: !205804)
!206290 = !DILocation(line: 187, column: 48, scope: !205804)
!206291 = !DILocation(line: 3998, column: 17, scope: !2688, inlinedAt: !205810)
!206292 = !DILocation(line: 102, column: 12, scope: !2690, inlinedAt: !205808)
!206293 = !DILocation(line: 109, column: 14, scope: !2690, inlinedAt: !205808)
!206294 = !DILocation(line: 0, scope: !205804)
!206295 = !DILocation(line: 186, column: 9, scope: !205804)
!206296 = !DILocation(line: 444, column: 20, scope: !205485, inlinedAt: !205949)
!206297 = !DILocation(line: 191, column: 31, scope: !205804)
!206298 = !DILocation(line: 444, column: 20, scope: !205485, inlinedAt: !205954)
!206299 = !DILocation(line: 539, column: 40, scope: !4470, inlinedAt: !205812)
!206300 = !DILocation(line: 202, column: 6, scope: !205477)
!206301 = !DILocation(line: 0, scope: !205483)
!206302 = !DILocation(line: 810, column: 1, scope: !3444, inlinedAt: !205817)
!206303 = !DILocation(line: 444, column: 20, scope: !3445, inlinedAt: !205820)
!206304 = !DILocation(line: 3956, column: 24, scope: !3448, inlinedAt: !205822)
!206305 = !DILocation(line: 2814, column: 12, scope: !3447, inlinedAt: !205818)
!206306 = !DILocation(line: 4387, column: 24, scope: !20, inlinedAt: !205823)
!206307 = !DILocation(line: 2857, column: 18, scope: !3447, inlinedAt: !205818)
!206308 = !DILocation(line: 197, column: 9, scope: !205804)
!206309 = !DILocation(line: 3998, column: 17, scope: !2688, inlinedAt: !205828)
!206310 = !DILocation(line: 102, column: 12, scope: !2690, inlinedAt: !205826)
!206311 = !DILocation(line: 109, column: 14, scope: !2690, inlinedAt: !205826)
!206312 = !DILocation(line: 444, column: 20, scope: !205485, inlinedAt: !205963)
!206313 = !DILocation(line: 200, column: 25, scope: !205804)
!206314 = !DILocation(line: 810, column: 1, scope: !3444, inlinedAt: !205833)
end_hunk_2
