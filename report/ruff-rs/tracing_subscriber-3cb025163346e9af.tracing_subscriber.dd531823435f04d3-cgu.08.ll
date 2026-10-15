Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/tracing_subscriber-3cb025163346e9af.tracing_subscriber.dd531823435f04d3-cgu.08?download=true
inline.NumInlined: 255
inline.NumDeleted: 173
begin_hunk_0_@_RNvXs4_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_4DataNtB7_8SpanData10extensions:bb.a
  br i1 %or.cond3.i, label %bb.b, label %bb.c, !prof !299

bb.b:                                             ; preds = %bb.a
  %i.f = add nuw nsw i32 %i.e, 1
  %i.g = cmpxchg weak ptr %i.d, i32 %i.e, i32 %i.f acquire monotonic, align 4
  %i.h = extractvalue { i32, i1 } %i.g, 1
  br i1 %i.h, label %_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended(ptr noundef nonnull align 4 %i.d)
  br label %_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit

_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit: ; preds = %bb.b, %bb.c
  call void @_RNvMsd_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry10extensions15ExtensionsInnerE3newB1f_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !300)
  %i.i = load i64, ptr %i.b, align 8, !range !4, !alias.scope !300, !noundef !5
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.d, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock15RwLockReadGuardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry10extensions15ExtensionsInnerEINtBM_11PoisonErrorBH_EE6expectB1O_.exit, !prof !3

bb.d:                                             ; preds = %_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !300
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load <2 x ptr>, ptr %i.k, align 8, !alias.scope !300
  store <2 x ptr> %i.l, ptr %i.a, align 16, !noalias !300
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 14, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #26
          to label %bb.f unwind label %bb.e, !noalias !300

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsh_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry10extensions15ExtensionsInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1f_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison11PoisonErrorINtNtBE_6rwlock15RwLockReadGuardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry10extensions15ExtensionsInnerEEEB21_.exit.i unwind label %bb.g, !noalias !300

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !300
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison11PoisonErrorINtNtBE_6rwlock15RwLockReadGuardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry10extensions15ExtensionsInnerEEEB21_.exit.i: ; preds = %bb.e
  resume { ptr, i32 } %i.m

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock15RwLockReadGuardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry10extensions15ExtensionsInnerEINtBM_11PoisonErrorBH_EE6expectB1O_.exit: ; preds = %_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !300, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !300, !nonnull !5, !align !301, !noundef !5
  %i.s = insertvalue { ptr, ptr } poison, ptr %i.p, 0
  %i.t = insertvalue { ptr, ptr } %i.s, ptr %i.r, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { ptr, ptr } %i.t
}

; Function Attrs: nonlazybind uwtable
define { ptr, i1 } @_RNvXs4_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_4DataNtB7_8SpanData14extensions_mut(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  %i.e = cmpxchg weak ptr %i.d, i32 0, i32 1073741823 acquire monotonic, align 4, !noalias !306
  %i.f = extractvalue { i32, i1 } %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync6rwlock5futexNtB2_6RwLock15write_contended(ptr noundef nonnull align 8 %i.d), !noalias !306
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load atomic i64, ptr @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !306
  %i.h = and i64 %i.g, 9223372036854775807
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry10extensions15ExtensionsInnerE5writeB15_.exit, label %bb.d, !prof !8

bb.d:                                             ; preds = %bb.c
  %i.j = tail call noundef zeroext i1 @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count17is_zero_slow_path(), !noalias !306
  %i.k = xor i1 %i.j, true
  %i.l = zext i1 %i.k to i8
  br label %_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry10extensions15ExtensionsInnerE5writeB15_.exit

_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry10extensions15ExtensionsInnerE5writeB15_.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i.i = phi i8 [ %i.l, %bb.d ], [ 0, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.n = load atomic i8, ptr %i.m monotonic, align 1, !noalias !306
  %i.o = icmp ne i8 %i.n, 0
  call void @_RINvNtNtCs2AWtUsOyxgP_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_6rwlock16RwLockWriteGuardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry10extensions15ExtensionsInnerENCNvMse_B10_BX_3new0EB1A_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i1 noundef zeroext %i.o, i8 noundef %.sroa.01.0.i.i, ptr noundef nonnull align 8 %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  %i.p = load i64, ptr %i.b, align 8, !range !4, !alias.scope !307, !noundef !5
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %bb.e, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock16RwLockWriteGuardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry10extensions15ExtensionsInnerEINtBM_11PoisonErrorBH_EE6expectB1P_.exit, !prof !3

bb.e:                                             ; preds = %_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry10extensions15ExtensionsInnerE5writeB15_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !307
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !307, !nonnull !5, !align !6, !noundef !5
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = load i8, ptr %i.t, align 8, !range !7, !alias.scope !307, !noundef !5
  store ptr %i.s, ptr %i.a, align 8, !noalias !307
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.u, ptr %i.v, align 8, !noalias !307
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 14, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #26
          to label %bb.g unwind label %bb.f, !noalias !307

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsi_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry10extensions15ExtensionsInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1g_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison11PoisonErrorINtNtBE_6rwlock16RwLockWriteGuardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry10extensions15ExtensionsInnerEEEB22_.exit.i unwind label %bb.h, !noalias !307

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !307
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync6poison11PoisonErrorINtNtBE_6rwlock16RwLockWriteGuardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry10extensions15ExtensionsInnerEEEB22_.exit.i: ; preds = %bb.f
  resume { ptr, i32 } %i.w

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock16RwLockWriteGuardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry10extensions15ExtensionsInnerEINtBM_11PoisonErrorBH_EE6expectB1P_.exit: ; preds = %_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry10extensions15ExtensionsInnerE5writeB15_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !307, !nonnull !5, !align !6, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ab = load i8, ptr %i.aa, align 8, !range !7, !alias.scope !307, !noundef !5
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = insertvalue { ptr, i1 } poison, ptr %i.z, 0
  %i.ae = insertvalue { ptr, i1 } %i.ad, i1 %i.ac, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { ptr, i1 } %i.ae
}

; Function Attrs: nonlazybind uwtable
define noundef range(i64 1, 0) i64 @_RNvXs4_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_4DataNtB7_8SpanData2id(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = add i64 %i.b, 1
  %i.d = tail call noundef i64 @_RNvMNtCs3pBv9WGWlWf_12tracing_core4spanNtB2_2Id8from_u64(i64 noundef %i.c)
  ret i64 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtCsj06xRw2G0SJ_18tracing_subscriber5fieldRNtNtCs3pBv9WGWlWf_12tracing_core4span10AttributesNtB5_12RecordFields6recordB7_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5
  tail call void @_RNvMs0_NtCs3pBv9WGWlWf_12tracing_core4spanNtB5_10Attributes6record(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtCsj06xRw2G0SJ_18tracing_subscriber5fieldRNtNtCs3pBv9WGWlWf_12tracing_core4span6RecordNtB5_12RecordFields6recordB7_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5
  tail call void @_RNvMs1_NtCs3pBv9WGWlWf_12tracing_core4spanNtB5_6Record6record(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtCsb0GAtLbz3Z0_12sharded_slab4poolINtB5_3RefNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.a = tail call noundef zeroext i1 @_RNvMs3_NtNtCsb0GAtLbz3Z0_12sharded_slab4page4slotINtB5_4SlotNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB9_3cfg13DefaultConfigE7releaseB12_(ptr noundef nonnull align 8 %.val)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !6, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !5
  tail call void @_RNvMs0_NtCsb0GAtLbz3Z0_12sharded_slab5shardINtB5_5ShardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE19clear_after_releaseBX_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.c, i64 noundef %i.e)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_9DataInnerNtNtCsb0GAtLbz3Z0_12sharded_slab5clear5Clear5clear(ptr noalias noundef align 8 dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  %i.d = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8, !noalias !356
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !356
  %i.g = icmp eq i64 %i.f, 2
  %.sroa.0.0.i = select i1 %i.g, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %1 = load i64, ptr %.sroa.0.0.i, align 8, !range !4, !alias.scope !359, !noalias !360, !noundef !5
  %2 = trunc nuw i64 %1 to i1
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  %.val17.i = load ptr, ptr %3, align 8, !alias.scope !359, !noalias !360 ; 3 uses
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16
  %.val6.i.i.i = load ptr, ptr %4, align 8, !alias.scope !359, !noalias !360 ; 3 uses
  br i1 %2, label %bb.d, label %_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultNtB2_8DispatchNvYBV_NtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneECsj06xRw2G0SJ_18tracing_subscriber.exit

bb.d:                                             ; preds = %bb.c
  %i.h = atomicrmw add ptr %.val17.i, i64 1 monotonic, align 8, !noalias !361
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.e, label %_RNvXsu_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10SubscriberNtNtCs4NRVxsYgnAr_4core6marker4SendNtB1C_4SyncEL_ENtNtB1E_5clone5Clone5cloneCsj06xRw2G0SJ_18tracing_subscriber.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

_RNvXsu_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10SubscriberNtNtCs4NRVxsYgnAr_4core6marker4SendNtB1C_4SyncEL_ENtNtB1E_5clone5Clone5cloneCsj06xRw2G0SJ_18tracing_subscriber.exit.i.i.i: ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6.i.i.i) ]
  br label %_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultNtB2_8DispatchNvYBV_NtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneECsj06xRw2G0SJ_18tracing_subscriber.exit

bb.f:                                             ; preds = %bb.b
  %i.j = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load i8, ptr %i.k, align 8, !range !9, !noalias !362, !noundef !5
  switch i8 %i.l, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsj06xRw2G0SJ_18tracing_subscriber.exit.i.i
    i8 1, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsj06xRw2G0SJ_18tracing_subscriber.exit.thread2.i.i
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNvYB2d_NtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneE0B2d_ECsj06xRw2G0SJ_18tracing_subscriber.exit.i
  ], !prof !363

default.unreachable:                              ; preds = %bb.f
  unreachable

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsj06xRw2G0SJ_18tracing_subscriber.exit.i.i: ; preds = %bb.f
  %i.m = tail call noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE10initializeCsj06xRw2G0SJ_18tracing_subscriber(ptr noundef nonnull align 8 %i.j), !noalias !362 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNvYB2d_NtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneE0B2d_ECsj06xRw2G0SJ_18tracing_subscriber.exit.i, label %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsj06xRw2G0SJ_18tracing_subscriber.exit.thread2.i.i

_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsj06xRw2G0SJ_18tracing_subscriber.exit.thread2.i.i: ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsj06xRw2G0SJ_18tracing_subscriber.exit.i.i, %bb.f
  %.sroa.0.0.i.i4.i.i = phi ptr [ %i.m, %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsj06xRw2G0SJ_18tracing_subscriber.exit.i.i ], [ %i.j, %bb.f ] ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i.i, i64 32 ; 4 uses
  %i.p = load i8, ptr %i.o, align 1, !range !7, !noalias !364, !noundef !5
  %i.q = trunc nuw i8 %i.p to i1
  store i8 0, ptr %i.o, align 1, !noalias !364
  br i1 %i.q, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsj06xRw2G0SJ_18tracing_subscriber.exit.thread2.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  %i.r = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !4, !alias.scope !367, !noalias !368, !noundef !5
  %i.s = trunc nuw i64 %i.r to i1
  %.val.i.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !367, !noalias !368 ; 3 uses
  %.val6.i.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !367, !noalias !368 ; 3 uses
  br i1 %i.s, label %bb.h, label %_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultNtB2_8DispatchNvYBV_NtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneECsj06xRw2G0SJ_18tracing_subscriber.exit

bb.h:                                             ; preds = %bb.g
  %i.t = atomicrmw add ptr %.val.i.i.i.i.i, i64 1 monotonic, align 8, !noalias !369
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %bb.i, label %_RNvXsu_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10SubscriberNtNtCs4NRVxsYgnAr_4core6marker4SendNtB1C_4SyncEL_ENtNtB1E_5clone5Clone5cloneCsj06xRw2G0SJ_18tracing_subscriber.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_RNvXsu_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10SubscriberNtNtCs4NRVxsYgnAr_4core6marker4SendNtB1C_4SyncEL_ENtNtB1E_5clone5Clone5cloneCsj06xRw2G0SJ_18tracing_subscriber.exit.i.i.i.i.i: ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6.i.i.i.i.i) ]
  br label %_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultNtB2_8DispatchNvYBV_NtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneECsj06xRw2G0SJ_18tracing_subscriber.exit

bb.j:                                             ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsj06xRw2G0SJ_18tracing_subscriber.exit.thread2.i.i
  %i.v = load i64, ptr %.sroa.0.0.i.i4.i.i, align 8, !noalias !364, !noundef !5 ; 2 uses
  %i.w = icmp ult i64 %i.v, 9223372036854775807
  br i1 %i.w, label %bb.m, label %bb.k, !prof !8

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #26
          to label %.noexc.i.i.i unwind label %bb.l, !noalias !364

.noexc.i.i.i:                                     ; preds = %bb.k
  unreachable

common.resume:                                    ; preds = %bb.aa, %bb.y, %bb.z, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.x, %bb.l ], [ %i.aw, %bb.z ], [ %i.aw, %bb.y ], [ %i.aw, %bb.aa ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          cleanup
  store i8 1, ptr %i.o, align 8, !noalias !364
  br label %common.resume

bb.m:                                             ; preds = %bb.j
  %i.y = add nuw nsw i64 %i.v, 1
  store i64 %i.y, ptr %.sroa.0.0.i.i4.i.i, align 8, !noalias !364
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370)
  %i.aa = load i64, ptr %i.z, align 8, !range !371, !alias.scope !370, !noalias !364, !noundef !5 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.aa, 2
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ab = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !372
  %i.ac = icmp eq i64 %i.ab, 2
  %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i.i = select i1 %i.ac, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i.i = load i64, ptr %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i.i, align 8, !range !4, !alias.scope !373, !noalias !374
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ad = phi i64 [ %i.aa, %bb.m ], [ %.pre.i.i.i, %bb.n ]
  %.sroa.0.0.i.i6.i.i.i = phi ptr [ %i.z, %bb.m ], [ %_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE.i.i.i.i.i, %bb.n ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  %i.ae = trunc nuw i64 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i6.i.i.i, i64 8
  %.val.i.i7.i.i.i = load ptr, ptr %i.af, align 8, !alias.scope !373, !noalias !374 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i6.i.i.i, i64 16
  %.val6.i.i8.i.i.i = load ptr, ptr %i.ag, align 8, !alias.scope !373, !noalias !374 ; 2 uses
  br i1 %i.ae, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ah = atomicrmw add ptr %.val.i.i7.i.i.i, i64 1 monotonic, align 8, !noalias !377
  %i.ai = icmp slt i64 %i.ah, 0
  br i1 %i.ai, label %bb.q, label %_RNvXsu_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10SubscriberNtNtCs4NRVxsYgnAr_4core6marker4SendNtB1C_4SyncEL_ENtNtB1E_5clone5Clone5cloneCsj06xRw2G0SJ_18tracing_subscriber.exit.i.i12.i.i.i

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.trap()
  unreachable

_RNvXsu_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10SubscriberNtNtCs4NRVxsYgnAr_4core6marker4SendNtB1C_4SyncEL_ENtNtB1E_5clone5Clone5cloneCsj06xRw2G0SJ_18tracing_subscriber.exit.i.i12.i.i.i: ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6.i.i8.i.i.i) ]
  br label %bb.r

bb.r:                                             ; preds = %_RNvXsu_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10SubscriberNtNtCs4NRVxsYgnAr_4core6marker4SendNtB1C_4SyncEL_ENtNtB1E_5clone5Clone5cloneCsj06xRw2G0SJ_18tracing_subscriber.exit.i.i12.i.i.i, %bb.o
  %.sroa.0.0.i.i9.i.i.i = phi i64 [ 1, %_RNvXsu_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10SubscriberNtNtCs4NRVxsYgnAr_4core6marker4SendNtB1C_4SyncEL_ENtNtB1E_5clone5Clone5cloneCsj06xRw2G0SJ_18tracing_subscriber.exit.i.i12.i.i.i ], [ 0, %bb.o ]
  %i.aj = load i64, ptr %.sroa.0.0.i.i4.i.i, align 8, !noalias !364, !noundef !5
  %i.ak = add i64 %i.aj, -1
  store i64 %i.ak, ptr %.sroa.0.0.i.i4.i.i, align 8, !noalias !364
  store i8 1, ptr %i.o, align 8, !noalias !364
  br label %_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultNtB2_8DispatchNvYBV_NtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneECsj06xRw2G0SJ_18tracing_subscriber.exit

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNvYB2d_NtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneE0B2d_ECsj06xRw2G0SJ_18tracing_subscriber.exit.i: ; preds = %_RNvYNCNKNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsj06xRw2G0SJ_18tracing_subscriber.exit.i.i, %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  %i.al = load i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, align 8, !range !4, !alias.scope !380, !noalias !381, !noundef !5
  %i.am = trunc nuw i64 %i.al to i1
  %.val.i.i2.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !380, !noalias !381 ; 3 uses
  %.val6.i.i3.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !380, !noalias !381 ; 3 uses
  br i1 %i.am, label %bb.s, label %_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultNtB2_8DispatchNvYBV_NtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneECsj06xRw2G0SJ_18tracing_subscriber.exit

bb.s:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNvYB2d_NtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneE0B2d_ECsj06xRw2G0SJ_18tracing_subscriber.exit.i
  %i.an = atomicrmw add ptr %.val.i.i2.i, i64 1 monotonic, align 8, !noalias !382
  %i.ao = icmp slt i64 %i.an, 0
  br i1 %i.ao, label %bb.t, label %_RNvXsu_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10SubscriberNtNtCs4NRVxsYgnAr_4core6marker4SendNtB1C_4SyncEL_ENtNtB1E_5clone5Clone5cloneCsj06xRw2G0SJ_18tracing_subscriber.exit.i.i7.i

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.trap()
  unreachable

_RNvXsu_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10SubscriberNtNtCs4NRVxsYgnAr_4core6marker4SendNtB1C_4SyncEL_ENtNtB1E_5clone5Clone5cloneCsj06xRw2G0SJ_18tracing_subscriber.exit.i.i7.i: ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6.i.i3.i) ]
  br label %_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultNtB2_8DispatchNvYBV_NtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneECsj06xRw2G0SJ_18tracing_subscriber.exit

_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultNtB2_8DispatchNvYBV_NtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneECsj06xRw2G0SJ_18tracing_subscriber.exit: ; preds = %bb.c, %_RNvXsu_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10SubscriberNtNtCs4NRVxsYgnAr_4core6marker4SendNtB1C_4SyncEL_ENtNtB1E_5clone5Clone5cloneCsj06xRw2G0SJ_18tracing_subscriber.exit.i.i.i, %bb.g, %_RNvXsu_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10SubscriberNtNtCs4NRVxsYgnAr_4core6marker4SendNtB1C_4SyncEL_ENtNtB1E_5clone5Clone5cloneCsj06xRw2G0SJ_18tracing_subscriber.exit.i.i.i.i.i, %bb.r, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNvYB2d_NtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneE0B2d_ECsj06xRw2G0SJ_18tracing_subscriber.exit.i, %_RNvXsu_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10SubscriberNtNtCs4NRVxsYgnAr_4core6marker4SendNtB1C_4SyncEL_ENtNtB1E_5clone5Clone5cloneCsj06xRw2G0SJ_18tracing_subscriber.exit.i.i7.i
  %.sroa.0.09.ph.sink.i = phi i64 [ 0, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNvYB2d_NtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneE0B2d_ECsj06xRw2G0SJ_18tracing_subscriber.exit.i ], [ %.sroa.0.0.i.i9.i.i.i, %bb.r ], [ 1, %_RNvXsu_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10SubscriberNtNtCs4NRVxsYgnAr_4core6marker4SendNtB1C_4SyncEL_ENtNtB1E_5clone5Clone5cloneCsj06xRw2G0SJ_18tracing_subscriber.exit.i.i7.i ], [ 0, %bb.g ], [ 1, %_RNvXsu_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10SubscriberNtNtCs4NRVxsYgnAr_4core6marker4SendNtB1C_4SyncEL_ENtNtB1E_5clone5Clone5cloneCsj06xRw2G0SJ_18tracing_subscriber.exit.i.i.i.i.i ], [ 1, %_RNvXsu_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10SubscriberNtNtCs4NRVxsYgnAr_4core6marker4SendNtB1C_4SyncEL_ENtNtB1E_5clone5Clone5cloneCsj06xRw2G0SJ_18tracing_subscriber.exit.i.i.i ], [ 0, %bb.c ] ; 2 uses
  %.sroa.6.0.ph.sink.i = phi ptr [ %.val.i.i2.i, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNvYB2d_NtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneE0B2d_ECsj06xRw2G0SJ_18tracing_subscriber.exit.i ], [ %.val.i.i7.i.i.i, %bb.r ], [ %.val.i.i2.i, %_RNvXsu_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10SubscriberNtNtCs4NRVxsYgnAr_4core6marker4SendNtB1C_4SyncEL_ENtNtB1E_5clone5Clone5cloneCsj06xRw2G0SJ_18tracing_subscriber.exit.i.i7.i ], [ %.val.i.i.i.i.i, %bb.g ], [ %.val.i.i.i.i.i, %_RNvXsu_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10SubscriberNtNtCs4NRVxsYgnAr_4core6marker4SendNtB1C_4SyncEL_ENtNtB1E_5clone5Clone5cloneCsj06xRw2G0SJ_18tracing_subscriber.exit.i.i.i.i.i ], [ %.val17.i, %_RNvXsu_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10SubscriberNtNtCs4NRVxsYgnAr_4core6marker4SendNtB1C_4SyncEL_ENtNtB1E_5clone5Clone5cloneCsj06xRw2G0SJ_18tracing_subscriber.exit.i.i.i ], [ %.val17.i, %bb.c ]
  %.sroa.7.0.ph.sink.i = phi ptr [ %.val6.i.i3.i, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNvYB2d_NtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneE0B2d_ECsj06xRw2G0SJ_18tracing_subscriber.exit.i ], [ %.val6.i.i8.i.i.i, %bb.r ], [ %.val6.i.i3.i, %_RNvXsu_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10SubscriberNtNtCs4NRVxsYgnAr_4core6marker4SendNtB1C_4SyncEL_ENtNtB1E_5clone5Clone5cloneCsj06xRw2G0SJ_18tracing_subscriber.exit.i.i7.i ], [ %.val6.i.i.i.i.i, %bb.g ], [ %.val6.i.i.i.i.i, %_RNvXsu_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10SubscriberNtNtCs4NRVxsYgnAr_4core6marker4SendNtB1C_4SyncEL_ENtNtB1E_5clone5Clone5cloneCsj06xRw2G0SJ_18tracing_subscriber.exit.i.i.i.i.i ], [ %.val6.i.i.i, %_RNvXsu_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10SubscriberNtNtCs4NRVxsYgnAr_4core6marker4SendNtB1C_4SyncEL_ENtNtB1E_5clone5Clone5cloneCsj06xRw2G0SJ_18tracing_subscriber.exit.i.i.i ], [ %.val6.i.i.i, %bb.c ]
  store i64 %.sroa.0.09.ph.sink.i, ptr %i.a, align 8, !alias.scope !356
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  store ptr %.sroa.6.0.ph.sink.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !356
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.7.0.ph.sink.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !356
  %i.ap = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  store i64 0, ptr %i.b, align 8
  %.not8 = icmp eq i64 %i.ap, 0
  br i1 %.not8, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultNtB2_8DispatchNvYBV_NtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneECsj06xRw2G0SJ_18tracing_subscriber.exit
  %i.aq = invoke noundef zeroext i1 @_RNvMs2_NtCs3pBv9WGWlWf_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, i64 noundef %i.ap)
          to label %._crit_edge unwind label %bb.y ; 0 uses

._crit_edge:                                      ; preds = %bb.u
  %.pre = load i64, ptr %i.a, align 8, !range !4, !alias.scope !383
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge, %_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultNtB2_8DispatchNvYBV_NtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneECsj06xRw2G0SJ_18tracing_subscriber.exit
  %i.ar = phi i64 [ %.pre, %._crit_edge ], [ %.sroa.0.09.ph.sink.i, %_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultNtB2_8DispatchNvYBV_NtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneECsj06xRw2G0SJ_18tracing_subscriber.exit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !384)
  call void @llvm.experimental.noalias.scope.decl(metadata !385)
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher8DispatchECsj06xRw2G0SJ_18tracing_subscriber.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !386)
  call void @llvm.experimental.noalias.scope.decl(metadata !387)
  %i.at = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !388, !nonnull !5, !noundef !5
  %i.au = atomicrmw sub ptr %i.at, i64 1 release, align 8, !noalias !388
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.x, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher8DispatchECsj06xRw2G0SJ_18tracing_subscriber.exit

bb.x:                                             ; preds = %bb.w
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10SubscriberNtNtCs4NRVxsYgnAr_4core6marker4SendNtB1C_4SyncEL_E9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher8DispatchECsj06xRw2G0SJ_18tracing_subscriber.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher8DispatchECsj06xRw2G0SJ_18tracing_subscriber.exit: ; preds = %bb.v, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ac

bb.y:                                             ; preds = %bb.u
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !389)
  call void @llvm.experimental.noalias.scope.decl(metadata !390)
  %i.ax = load i64, ptr %i.a, align 8, !range !4, !alias.scope !391, !noundef !5
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %common.resume, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !392)
  call void @llvm.experimental.noalias.scope.decl(metadata !393)
  %i.az = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !394, !nonnull !5, !noundef !5
  %i.ba = atomicrmw sub ptr %i.az, i64 1 release, align 8, !noalias !394
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %bb.aa, label %common.resume

bb.aa:                                            ; preds = %bb.z
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10SubscriberNtNtCs4NRVxsYgnAr_4core6marker4SendNtB1C_4SyncEL_E9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i)
          to label %common.resume unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.ac:                                            ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher8DispatchECsj06xRw2G0SJ_18tracing_subscriber.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.be = call { i64, ptr } @_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry10extensions15ExtensionsInnerE7get_mutB15_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bd)
  %i.bf = extractvalue { i64, ptr } %i.be, 1
  call void @_RNvMs1_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry10extensionsNtB5_15ExtensionsInner5clear(ptr noalias noundef align 8 dereferenceable(32) %i.bf)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.bg, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs8_NtCs3pBv9WGWlWf_12tracing_core4spanNtB5_2IdNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 2, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt10SubscriberNtNtB5_6format13DefaultFieldsNtBX_6FormatNtNtNtB7_6filter3env9EnvFilterENtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber20on_register_dispatchB7_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt10SubscriberNtNtB5_6format13DefaultFieldsNtBX_6FormatNtNtNtB7_6filter3env9EnvFilterENtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber9drop_spanB7_(ptr nofree nonnull readnone align 8 captures(none) %0, i64 range(i64 1, 0) %1) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_RNvYNCNKNvNtCs1hjZZAukk1a_12thread_local9thread_id6THREAD0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB14_6option6OptionQIB1J_INtNtB14_4cell4CellIB1J_NtB8_6ThreadEEEEEE9call_onceCsj06xRw2G0SJ_18tracing_subscriber(ptr noalias nofree readnone align 8 captures(none) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs1hjZZAukk1a_12thread_local9thread_id6THREAD0s_023___RUST_STD_INTERNAL_VAL)
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_RNvYNCNKNvNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter13layer_filters9FILTERING0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1r_6option6OptionQIB26_NtB8_11FilterStateEEEE9call_onceBc_(ptr noalias nofree readnone align 8 captures(none) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter13layer_filters9FILTERING0s_023___RUST_STD_INTERNAL_VAL)
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_RNvYNCNKNvNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded11CLOSE_COUNT0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1p_6option6OptionQIB24_INtNtB1p_4cell4CelljEEEEE9call_onceBc_(ptr noalias nofree readnone align 8 captures(none) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded11CLOSE_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher21SetGlobalDefaultErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeCsj06xRw2G0SJ_18tracing_subscriber(ptr noalias noundef nonnull readonly captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded8RegistryNtB6_10LookupSpan4spanB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !407)
  %.val.i = load i64, ptr %2, align 8, !range !10, !alias.scope !407, !noalias !408, !noundef !5
  %i.a = add i64 %.val.i, -1                      ; 4 uses
  %i.b = lshr i64 %i.a, 38
  %i.c = and i64 %i.b, 8191                       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noalias !409, !noundef !5
  %i.f = icmp ult i64 %i.c, %i.e
  br i1 %i.f, label %_RNvMs2_NtCsb0GAtLbz3Z0_12sharded_slab5shardINtB5_5ArrayNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE3getBX_.exit.i.i.i, label %_RNvXs1_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtB7_10LookupSpan9span_data.exit.thread

_RNvMs2_NtCsb0GAtLbz3Z0_12sharded_slab5shardINtB5_5ArrayNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE3getBX_.exit.i.i.i: ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !noalias !409, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.c
  %i.i = load atomic ptr, ptr %i.h acquire, align 8, !noalias !409 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_RNvXs1_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtB7_10LookupSpan9span_data.exit.thread, label %bb.b

bb.b:                                             ; preds = %_RNvMs2_NtCsb0GAtLbz3Z0_12sharded_slab5shardINtB5_5ArrayNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE3getBX_.exit.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !410)
  %i.j = and i64 %i.a, 274877906943               ; 2 uses
  %i.k = add nuw nsw i64 %i.j, 32
  %i.l = lshr i64 %i.k, 6
  %i.m = tail call range(i64 31, 65) i64 @llvm.ctlz.i64(i64 %i.l, i1 false)
  %i.n = sub nuw nsw i64 64, %i.m                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !410, !noalias !411, !noundef !5
  %.not.i.i.i.i = icmp ult i64 %i.n, %i.p
  br i1 %.not.i.i.i.i, label %bb.c, label %_RNvXs1_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtB7_10LookupSpan9span_data.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !410, !noalias !411, !nonnull !5, !noundef !5
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %i.r, i64 %i.n ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load i64, ptr %i.t, align 8, !noalias !412, !noundef !5
  %i.v = sub i64 %i.j, %i.u                       ; 2 uses
  %i.w = load ptr, ptr %i.s, align 8, !noalias !409, !align !6, !noundef !5 ; 2 uses
  %.not.i10.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i10.i.i.i, label %_RNvXs1_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtB7_10LookupSpan9span_data.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = load i64, ptr %i.x, align 8, !noalias !409, !noundef !5
  %i.z = icmp ult i64 %i.v, %i.y
  br i1 %i.z, label %bb.e, label %_RNvXs1_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtB7_10LookupSpan9span_data.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw [96 x i8], ptr %i.w, i64 %i.v ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 80 ; 2 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8, !noalias !413
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.sroa.07.0.i.i.i.i.i.i = phi i64 [ %i.ac, %bb.e ], [ %.sroa.01.0.i.i.i.i.i.i, %bb.g ] ; 5 uses
  %i.ad = and i64 %.sroa.07.0.i.i.i.i.i.i, 3
  %i.ae = tail call noundef i64 @_RNvXsf_NtNtCsb0GAtLbz3Z0_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsj06xRw2G0SJ_18tracing_subscriber(i64 noundef %i.ad), !noalias !413
  %i.af = lshr i64 %.sroa.07.0.i.i.i.i.i.i, 2
  %i.ag = and i64 %i.af, 562949953421311          ; 2 uses
  %.unshifted.i.i.i.i.i = xor i64 %.sroa.07.0.i.i.i.i.i.i, %i.a
  %i.ah = icmp ugt i64 %.unshifted.i.i.i.i.i, 2251799813685247
  %i.ai = icmp ne i64 %i.ae, 0
  %or.cond.i.i.i.i.i.i = or i1 %i.ah, %i.ai
  %i.aj = icmp samesign ugt i64 %i.ag, 562949953421309
  %or.cond12.i.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i, i1 true, i1 %i.aj
  br i1 %or.cond12.i.i.i.i.i.i, label %_RNvXs1_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtB7_10LookupSpan9span_data.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = and i64 %.sroa.07.0.i.i.i.i.i.i, -2251799813685245
  %i.al = shl nuw nsw i64 %i.ag, 2
  %i.am = add nuw nsw i64 %i.al, 4
  %i.an = or i64 %i.am, %i.ak
  %i.ao = cmpxchg ptr %i.ab, i64 %.sroa.07.0.i.i.i.i.i.i, i64 %i.an acq_rel acquire, align 8, !noalias !413 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i.i = extractvalue { i64, i1 } %i.ao, 1
  %.sroa.01.0.i.i.i.i.i.i = extractvalue { i64, i1 } %i.ao, 0
  br i1 %.sroa.18.0.in.i.i.i.i.i.i, label %_RNvXs1_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtB7_10LookupSpan9span_data.exit, label %bb.f

_RNvXs1_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtB7_10LookupSpan9span_data.exit: ; preds = %bb.g
  store ptr %1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.a, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.h

_RNvXs1_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtB7_10LookupSpan9span_data.exit.thread: ; preds = %bb.f, %bb.a, %_RNvMs2_NtCsb0GAtLbz3Z0_12sharded_slab5shardINtB5_5ArrayNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE3getBX_.exit.i.i.i, %bb.b, %bb.c, %bb.d
  store ptr null, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %_RNvXs1_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtB7_10LookupSpan9span_data.exit.thread, %_RNvXs1_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtB7_10LookupSpan9span_data.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNvXs5_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtBa_9DataInnerNtNtCs4NRVxsYgnAr_4core7default7Default7default12NullCallsiteNtNtCs3pBv9WGWlWf_12tracing_core8callsite8Callsite15private_type_idBe_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nonnull readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @61, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtCsb0GAtLbz3Z0_12sharded_slab3tid12RegistrationuE16get_or_init_slowNvNvB1g_12REGISTRATION27___rust_std_internal_init_fnECsj06xRw2G0SJ_18tracing_subscriber(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable_or_null(24)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs0_NtCsj06xRw2G0SJ_18tracing_subscriber3fmtINtB5_10SubscriberNtNtB5_6format13DefaultFieldsNtB13_6FormatNtNtNtB7_6filter3env9EnvFilterENtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber12downcast_rawB7_(ptr noundef nonnull align 8, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs3pBv9WGWlWf_12tracing_core8callsite17register_dispatch(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvXs9_NtCsb0GAtLbz3Z0_12sharded_slab3tidNtB5_8REGISTRYNtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5deref(ptr noalias noundef nonnull readonly captures(address, read_provenance)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutexINtB5_5MutexINtNtNtCscdodAO9FK5_5alloc11collections9vec_deque8VecDequejEE4lockCsj06xRw2G0SJ_18tracing_subscriber(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_Cs1hjZZAukk1a_12thread_localINtB5_11ThreadLocalINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs3pBv9WGWlWf_12tracing_core8metadata11LevelFilterEEENtNtNtBV_3ops4drop4Drop4dropCsj06xRw2G0SJ_18tracing_subscriber(ptr noalias noundef align 8 dereferenceable(512)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_Cs1hjZZAukk1a_12thread_localINtB5_11ThreadLocalINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry5stack9SpanStackEENtNtNtBV_3ops4drop4Drop4dropB1x_(ptr noalias noundef align 8 dereferenceable(512)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter9directive15StaticDirectivej8_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef align 8 dereferenceable(456)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive9Directivej8_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef align 8 dereferenceable(648)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtCsb0GAtLbz3Z0_12sharded_slab5shardINtB5_5ArrayNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBX_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs4NRVxsYgnAr_4core3any6TypeIdINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtBR_3AnyNtNtBT_6marker4SendNtB27_4SyncEL_EEENtNtNtBT_3ops4drop4Drop4dropCsj06xRw2G0SJ_18tracing_subscriber(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs3pBv9WGWlWf_12tracing_core4span2IdINtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1y_5field9SpanMatchEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1C_(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs3pBv9WGWlWf_12tracing_core8callsite10IdentifierINtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1L_5field13CallsiteMatchEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1P_(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsh_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry10extensions15ExtensionsInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1f_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsi_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry10extensions15ExtensionsInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1g_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs4NRVxsYgnAr_4core3ptr4hashNtNtB2_8metadata6VTableNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherECsj06xRw2G0SJ_18tracing_subscriber(ptr noundef, ptr noalias noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequejE9pop_frontCsj06xRw2G0SJ_18tracing_subscriber(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count17is_zero_slow_path() unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsj06xRw2G0SJ_18tracing_subscriber(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvNtNtCs2AWtUsOyxgP_3std6thread7current7current() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs_NtNtCs2AWtUsOyxgP_3std6thread6threadNtB4_6Thread4name(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs2AWtUsOyxgP_3std2io5stdio7__eprint(ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry5stackNtBT_9SpanStack4iter0INtB7_5FnMutTRNtBT_9ContextIdEE8call_mutBX_(ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #11

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE10initializeCsj06xRw2G0SJ_18tracing_subscriber(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCsb0GAtLbz3Z0_12sharded_slab5shardINtB2_5ShardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB4_3cfg13DefaultConfigE3newBU_(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs0_NtCsb0GAtLbz3Z0_12sharded_slab5shardINtB5_5ShardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE16mark_clear_localBX_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs0_NtCsb0GAtLbz3Z0_12sharded_slab5shardINtB5_5ShardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE17mark_clear_remoteBX_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtCsb0GAtLbz3Z0_12sharded_slab4page4slotINtB5_4SlotNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB9_3cfg13DefaultConfigE4initB12_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter13layer_filters11FilterStateE4withNCNCNvXs0_NtNtB10_8registry7shardedNtB2n_8RegistryNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber8new_spans0_00NtBW_9FilterMapEB10_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtNtCs2AWtUsOyxgP_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_6rwlock15RwLockReadGuardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry10extensions15ExtensionsInnerEENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtB1x_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtNtCs2AWtUsOyxgP_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_6rwlock16RwLockWriteGuardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry10extensions15ExtensionsInnerEENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtB1y_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsq_NtCs4NRVxsYgnAr_4core3fmtOINtNtNtNtCsb0GAtLbz3Z0_12sharded_slab4sync5inner5alloc5TrackINtNtBE_5shard5ShardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBE_3cfg13DefaultConfigEENtB5_5Debug3fmtB1T_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #9

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i1 } @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry5stack9ContextIdE6removeBJ_(ptr noalias noundef align 8 dereferenceable(24), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended(ptr noundef nonnull align 4) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i64 0, 4) i64 @_RNvXsf_NtNtCsb0GAtLbz3Z0_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsj06xRw2G0SJ_18tracing_subscriber(i64 noundef) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync6rwlock5futexNtB2_6RwLock15write_contended(ptr noundef nonnull align 4) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCs2AWtUsOyxgP_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_6rwlock16RwLockWriteGuardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry10extensions15ExtensionsInnerENCNvMse_B10_BX_3new0EB1A_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i1 noundef zeroext, i8 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry5stack9ContextIdE8grow_oneBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtCsb0GAtLbz3Z0_12sharded_slab5shardINtB6_5ShardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB8_3cfg13DefaultConfigE9init_withTjINtNtNtB8_4page4slot9InitGuardBS_EENCNvMs_NtB8_4poolINtB3g_4PoolBS_E6create0EBY_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvMs2_Cs1hjZZAukk1a_12thread_localINtB6_11ThreadLocalINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry5stack9SpanStackEE10get_or_tryNCINvB2_6get_orNvYBR_NtNtBW_7default7Default7defaultE0uEB1y_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CelljEE4withNCNvMs_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB1H_8Registry11start_close0uEB1L_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
end_hunk_0
begin_hunk_1_@llvm.memset.p0.i64
!112 = !{!98}
!113 = !{!100}
!114 = !{!101}
!115 = !{!100, !97, !95}
!116 = !{!101, !98}
!117 = !{!103, !101, !98}
!118 = !{!105, !100, !97, !95}
!119 = !{!107, !100, !97, !95}
!120 = !{!109, !101, !98}
!121 = distinct !{!121, i1 false, !"_RINvMNtNtCsb0GAtLbz3Z0_12sharded_slab4page5stackNtB3_13TransferStack4pushNCINvXs_B3_BK_INtB5_8FreeListNtNtB7_3cfg13DefaultConfigE4pushNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerE0EB2e_"}
!122 = distinct !{!122, !121, !"_RINvMNtNtCsb0GAtLbz3Z0_12sharded_slab4page5stackNtB3_13TransferStack4pushNCINvXs_B3_BK_INtB5_8FreeListNtNtB7_3cfg13DefaultConfigE4pushNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerE0EB2e_: argument 0"}
!123 = !{!122}
!124 = distinct !{!124, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEEBG_"}
!125 = distinct !{!125, !124, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEEBG_: argument 0"}
!126 = distinct !{!126, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded4DataEBH_"}
!127 = distinct !{!127, !126, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded4DataEBH_: argument 0"}
!128 = distinct !{!128, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsb0GAtLbz3Z0_12sharded_slab4pool3RefNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerEEB1n_"}
!129 = distinct !{!129, !128, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsb0GAtLbz3Z0_12sharded_slab4pool3RefNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerEEB1n_: argument 0"}
!130 = distinct !{!130, i1 false, !"_RNvXs6_NtCsb0GAtLbz3Z0_12sharded_slab4poolINtB5_3RefNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBU_"}
!131 = distinct !{!131, !130, !"_RNvXs6_NtCsb0GAtLbz3Z0_12sharded_slab4poolINtB5_3RefNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBU_: argument 0"}
!132 = !{!125}
!133 = !{!127}
!134 = !{!129}
!135 = !{!131}
!136 = !{!131, !129, !127, !125}
!137 = distinct !{!137, i1 false, !"_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry5stack9SpanStackE6borrowBP_"}
!138 = distinct !{!138, !137, !"_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry5stack9SpanStackE6borrowBP_: argument 0"}
!139 = !{!138}
!140 = distinct !{!140, i1 false, !"_RNvYNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded8RegistryNtB6_10LookupSpan4spanB8_"}
!141 = distinct !{!141, !140, !"_RNvYNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded8RegistryNtB6_10LookupSpan4spanB8_: argument 1"}
!142 = distinct !{!142, !140, !"_RNvYNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded8RegistryNtB6_10LookupSpan4spanB8_: argument 0"}
!143 = distinct !{!143, i1 false, !"_RNvXs1_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtB7_10LookupSpan9span_data"}
!144 = distinct !{!144, !143, !"_RNvXs1_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtB7_10LookupSpan9span_data: argument 1"}
!145 = distinct !{!145, !143, !"_RNvXs1_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtB7_10LookupSpan9span_data: argument 0"}
!146 = distinct !{!146, i1 false, !"_RNvMs_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB4_8Registry3get"}
!147 = distinct !{!147, !146, !"_RNvMs_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB4_8Registry3get: argument 0"}
!148 = distinct !{!148, i1 false, !"_RNvMs_NtCsb0GAtLbz3Z0_12sharded_slab4poolINtB4_4PoolNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerE3getBU_"}
!149 = distinct !{!149, !148, !"_RNvMs_NtCsb0GAtLbz3Z0_12sharded_slab4poolINtB4_4PoolNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerE3getBU_: argument 0"}
!150 = distinct !{!150, i1 false, !"_RINvMNtCsb0GAtLbz3Z0_12sharded_slab5shardINtB3_5ShardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB5_3cfg13DefaultConfigE9with_slotINtNtNtB5_4page4slot5GuardBP_ENCNvMs_NtB5_4poolINtB36_4PoolBP_E3get0EBV_"}
!151 = distinct !{!151, !150, !"_RINvMNtCsb0GAtLbz3Z0_12sharded_slab5shardINtB3_5ShardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB5_3cfg13DefaultConfigE9with_slotINtNtNtB5_4page4slot5GuardBP_ENCNvMs_NtB5_4poolINtB36_4PoolBP_E3get0EBV_: argument 0"}
!152 = distinct !{!152, !150, !"_RINvMNtCsb0GAtLbz3Z0_12sharded_slab5shardINtB3_5ShardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB5_3cfg13DefaultConfigE9with_slotINtNtNtB5_4page4slot5GuardBP_ENCNvMs_NtB5_4poolINtB36_4PoolBP_E3get0EBV_: argument 1"}
!153 = distinct !{!153, i1 false, !"_RNCNvMs_NtCsb0GAtLbz3Z0_12sharded_slab4poolINtB6_4PoolNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerE3get0BW_"}
!154 = distinct !{!154, !153, !"_RNCNvMs_NtCsb0GAtLbz3Z0_12sharded_slab4poolINtB6_4PoolNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerE3get0BW_: argument 0"}
!155 = distinct !{!155, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEEBG_"}
!156 = distinct !{!156, !155, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEEBG_: argument 0"}
!157 = distinct !{!157, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded4DataEBH_"}
!158 = distinct !{!158, !157, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded4DataEBH_: argument 0"}
!159 = distinct !{!159, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsb0GAtLbz3Z0_12sharded_slab4pool3RefNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerEEB1n_"}
!160 = distinct !{!160, !159, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsb0GAtLbz3Z0_12sharded_slab4pool3RefNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerEEB1n_: argument 0"}
!161 = distinct !{!161, i1 false, !"_RNvXs6_NtCsb0GAtLbz3Z0_12sharded_slab4poolINtB5_3RefNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBU_"}
!162 = distinct !{!162, !161, !"_RNvXs6_NtCsb0GAtLbz3Z0_12sharded_slab4poolINtB5_3RefNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBU_: argument 0"}
!163 = !{!149, !147, !145, !144, !142, !141}
!164 = !{!151}
!165 = !{!152, !149, !147, !145, !144, !142, !141}
!166 = !{!151, !152, !149, !147, !145, !144, !142, !141}
!167 = !{!154, !149, !147, !145, !144, !142, !141}
!168 = !{!162, !160, !158, !156}
!169 = distinct !{!169, i1 false, !"_RNvMs_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB4_8Registry3get"}
!170 = distinct !{!170, !169, !"_RNvMs_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB4_8Registry3get: argument 0"}
!171 = distinct !{!171, i1 false, !"_RNvMs_NtCsb0GAtLbz3Z0_12sharded_slab4poolINtB4_4PoolNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerE3getBU_"}
!172 = distinct !{!172, !171, !"_RNvMs_NtCsb0GAtLbz3Z0_12sharded_slab4poolINtB4_4PoolNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerE3getBU_: argument 0"}
!173 = distinct !{!173, i1 false, !"_RINvMNtCsb0GAtLbz3Z0_12sharded_slab5shardINtB3_5ShardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB5_3cfg13DefaultConfigE9with_slotINtNtNtB5_4page4slot5GuardBP_ENCNvMs_NtB5_4poolINtB36_4PoolBP_E3get0EBV_"}
!174 = distinct !{!174, !173, !"_RINvMNtCsb0GAtLbz3Z0_12sharded_slab5shardINtB3_5ShardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB5_3cfg13DefaultConfigE9with_slotINtNtNtB5_4page4slot5GuardBP_ENCNvMs_NtB5_4poolINtB36_4PoolBP_E3get0EBV_: argument 0"}
!175 = distinct !{!175, !173, !"_RINvMNtCsb0GAtLbz3Z0_12sharded_slab5shardINtB3_5ShardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB5_3cfg13DefaultConfigE9with_slotINtNtNtB5_4page4slot5GuardBP_ENCNvMs_NtB5_4poolINtB36_4PoolBP_E3get0EBV_: argument 1"}
!176 = distinct !{!176, i1 false, !"_RNCNvMs_NtCsb0GAtLbz3Z0_12sharded_slab4poolINtB6_4PoolNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerE3get0BW_"}
!177 = distinct !{!177, !176, !"_RNCNvMs_NtCsb0GAtLbz3Z0_12sharded_slab4poolINtB6_4PoolNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerE3get0BW_: argument 0"}
!178 = distinct !{!178, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsb0GAtLbz3Z0_12sharded_slab4pool3RefNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerEEB1n_"}
!179 = distinct !{!179, !178, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsb0GAtLbz3Z0_12sharded_slab4pool3RefNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerEEB1n_: argument 0"}
!180 = distinct !{!180, i1 false, !"_RNvXs6_NtCsb0GAtLbz3Z0_12sharded_slab4poolINtB5_3RefNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBU_"}
!181 = distinct !{!181, !180, !"_RNvXs6_NtCsb0GAtLbz3Z0_12sharded_slab4poolINtB5_3RefNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBU_: argument 0"}
!182 = !{!172, !170}
!183 = !{!174}
!184 = !{!175, !172, !170}
!185 = !{!174, !175, !172, !170}
!186 = !{!177, !172, !170}
!187 = !{!181, !179}
!188 = distinct !{!188, i1 false, !"_RNCNvXs0_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB7_8RegistryNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber12current_span0Bb_"}
!189 = distinct !{!189, !188, !"_RNCNvXs0_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB7_8RegistryNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10Subscriber12current_span0Bb_: argument 0"}
!190 = distinct !{!190, i1 false, !"_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry5stack9SpanStackE6borrowBP_"}
!191 = distinct !{!191, !190, !"_RNvMst_NtCs4NRVxsYgnAr_4core4cellINtB5_7RefCellNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry5stack9SpanStackE6borrowBP_: argument 0"}
!192 = distinct !{!192, i1 false, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry5stack9ContextIdENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtB1R_8iterator8Iterator8find_map5checkRBJ_RNtNtCs3pBv9WGWlWf_12tracing_core4span2IdQNCNvMBL_NtBL_9SpanStack4iter0E0INtNtNtBa_3ops12control_flow11ControlFlowB3K_EEBP_"}
!193 = distinct !{!193, !192, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry5stack9ContextIdENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtB1R_8iterator8Iterator8find_map5checkRBJ_RNtNtCs3pBv9WGWlWf_12tracing_core4span2IdQNCNvMBL_NtBL_9SpanStack4iter0E0INtNtNtBa_3ops12control_flow11ControlFlowB3K_EEBP_: argument 1"}
!194 = distinct !{!194, !192, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry5stack9ContextIdENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtB1R_8iterator8Iterator8find_map5checkRBJ_RNtNtCs3pBv9WGWlWf_12tracing_core4span2IdQNCNvMBL_NtBL_9SpanStack4iter0E0INtNtNtBa_3ops12control_flow11ControlFlowB3K_EEBP_: argument 0"}
!195 = distinct !{!195, i1 false, !"_RNvMs_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB4_8Registry3get"}
!196 = distinct !{!196, !195, !"_RNvMs_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB4_8Registry3get: argument 0"}
!197 = distinct !{!197, i1 false, !"_RNvMs_NtCsb0GAtLbz3Z0_12sharded_slab4poolINtB4_4PoolNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerE3getBU_"}
!198 = distinct !{!198, !197, !"_RNvMs_NtCsb0GAtLbz3Z0_12sharded_slab4poolINtB4_4PoolNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerE3getBU_: argument 0"}
!199 = distinct !{!199, i1 false, !"_RINvMNtCsb0GAtLbz3Z0_12sharded_slab5shardINtB3_5ShardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB5_3cfg13DefaultConfigE9with_slotINtNtNtB5_4page4slot5GuardBP_ENCNvMs_NtB5_4poolINtB36_4PoolBP_E3get0EBV_"}
!200 = distinct !{!200, !199, !"_RINvMNtCsb0GAtLbz3Z0_12sharded_slab5shardINtB3_5ShardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB5_3cfg13DefaultConfigE9with_slotINtNtNtB5_4page4slot5GuardBP_ENCNvMs_NtB5_4poolINtB36_4PoolBP_E3get0EBV_: argument 0"}
!201 = distinct !{!201, !199, !"_RINvMNtCsb0GAtLbz3Z0_12sharded_slab5shardINtB3_5ShardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB5_3cfg13DefaultConfigE9with_slotINtNtNtB5_4page4slot5GuardBP_ENCNvMs_NtB5_4poolINtB36_4PoolBP_E3get0EBV_: argument 1"}
!202 = distinct !{!202, i1 false, !"_RNCNvMs_NtCsb0GAtLbz3Z0_12sharded_slab4poolINtB6_4PoolNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerE3get0BW_"}
!203 = distinct !{!203, !202, !"_RNCNvMs_NtCsb0GAtLbz3Z0_12sharded_slab4poolINtB6_4PoolNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerE3get0BW_: argument 0"}
!204 = !{!191, !189}
!205 = !{!189}
!206 = !{!194, !193, !189}
!207 = !{!198, !196, !189}
!208 = !{!200}
!209 = !{!201, !198, !196, !189}
!210 = !{!200, !201, !198, !196, !189}
!211 = !{!203, !198, !196, !189}
!212 = distinct !{!212, i1 false, !"_RNvMNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry5stackNtB2_9SpanStack3pop"}
!213 = distinct !{!213, !212, !"_RNvMNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry5stackNtB2_9SpanStack3pop: argument 0"}
!214 = distinct !{!214, !212, !"_RNvMNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry5stackNtB2_9SpanStack3pop: argument 1"}
!215 = distinct !{!215, i1 false, !"_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry5stack9ContextIduINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB48_NCNvMB2r_NtB2r_9SpanStack3pop0E0E0B2v_"}
!216 = distinct !{!216, !215, !"_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry5stack9ContextIduINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB48_NCNvMB2r_NtB2r_9SpanStack3pop0E0E0B2v_: argument 1"}
!217 = distinct !{!217, i1 false, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkTjRNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry5stack9ContextIdENCNvMB1z_NtB1z_9SpanStack3pop0E0B1D_"}
!218 = distinct !{!218, !217, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkTjRNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry5stack9ContextIdENCNvMB1z_NtB1z_9SpanStack3pop0E0B1D_: argument 0"}
!219 = distinct !{!219, i1 false, !"_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB6_9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry5stack9ContextIdEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB2E_5rfind5checkTjRB1z_ENCNvMB1B_NtB1B_9SpanStack3pop0E0INtNtNtBc_3ops12control_flow11ControlFlowB41_EEB1F_"}
!220 = distinct !{!220, !219, !"_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB6_9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry5stack9ContextIdEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvB2E_5rfind5checkTjRB1z_ENCNvMB1B_NtB1B_9SpanStack3pop0E0INtNtNtBc_3ops12control_flow11ControlFlowB41_EEB1F_: argument 0"}
!221 = distinct !{!221, i1 false, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry5stack9ContextIdENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvXs0_NtNtB1T_8adapters9enumerateINtB35_9EnumeratepEB1N_9try_rfold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTjB4d_EENCINvNvB1N_5rfind5checkB4X_NCNvMBL_NtBL_9SpanStack3pop0E0E0B4i_EBP_"}
!222 = distinct !{!222, !221, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry5stack9ContextIdENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvXs0_NtNtB1T_8adapters9enumerateINtB35_9EnumeratepEB1N_9try_rfold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTjB4d_EENCINvNvB1N_5rfind5checkB4X_NCNvMBL_NtBL_9SpanStack3pop0E0E0B4i_EBP_: argument 1"}
!223 = distinct !{!223, !221, !"_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry5stack9ContextIdENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvXs0_NtNtB1T_8adapters9enumerateINtB35_9EnumeratepEB1N_9try_rfold9enumerateRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowTjB4d_EENCINvNvB1N_5rfind5checkB4X_NCNvMBL_NtBL_9SpanStack3pop0E0E0B4i_EBP_: argument 0"}
!224 = distinct !{!224, !215, !"_RNCINvNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtBa_9EnumeratepENtNtNtBe_6traits12double_ended19DoubleEndedIterator9try_rfold9enumerateRNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry5stack9ContextIduINtNtNtBg_3ops12control_flow11ControlFlowTjB2o_EENCINvNvB1f_5rfind5checkB48_NCNvMB2r_NtB2r_9SpanStack3pop0E0E0B2v_: argument 0"}
!225 = !{!213}
!226 = !{!214}
!227 = !{!218, !216}
!228 = !{!224, !223, !222, !220, !213, !214}
!229 = distinct !{!229, i1 false, !"_RNvMNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry5stackNtB2_9SpanStack4push"}
!230 = distinct !{!230, !229, !"_RNvMNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry5stackNtB2_9SpanStack4push: argument 0"}
!231 = distinct !{!231, i1 false, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry5stack9ContextIdENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMBS_NtBS_9SpanStack4push0EBW_"}
!232 = distinct !{!232, !231, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry5stack9ContextIdENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMBS_NtBS_9SpanStack4push0EBW_: argument 1"}
!233 = distinct !{!233, !231, !"_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry5stack9ContextIdENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMBS_NtBS_9SpanStack4push0EBW_: argument 0"}
!234 = distinct !{!234, i1 false, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry5stack9ContextIdE8push_mutBK_"}
!235 = distinct !{!235, !234, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry5stack9ContextIdE8push_mutBK_: argument 0"}
!236 = !{!230}
!237 = !{!233, !232, !230}
!238 = !{i64 0, i64 -9223372036854775808}
!239 = !{!235, !230}
!240 = distinct !{!240, i1 false, !"_RNvMs_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB4_8Registry3get"}
!241 = distinct !{!241, !240, !"_RNvMs_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB4_8Registry3get: argument 0"}
!242 = distinct !{!242, i1 false, !"_RNvMs_NtCsb0GAtLbz3Z0_12sharded_slab4poolINtB4_4PoolNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerE3getBU_"}
!243 = distinct !{!243, !242, !"_RNvMs_NtCsb0GAtLbz3Z0_12sharded_slab4poolINtB4_4PoolNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerE3getBU_: argument 0"}
!244 = distinct !{!244, i1 false, !"_RINvMNtCsb0GAtLbz3Z0_12sharded_slab5shardINtB3_5ShardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB5_3cfg13DefaultConfigE9with_slotINtNtNtB5_4page4slot5GuardBP_ENCNvMs_NtB5_4poolINtB36_4PoolBP_E3get0EBV_"}
!245 = distinct !{!245, !244, !"_RINvMNtCsb0GAtLbz3Z0_12sharded_slab5shardINtB3_5ShardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB5_3cfg13DefaultConfigE9with_slotINtNtNtB5_4page4slot5GuardBP_ENCNvMs_NtB5_4poolINtB36_4PoolBP_E3get0EBV_: argument 0"}
!246 = distinct !{!246, !244, !"_RINvMNtCsb0GAtLbz3Z0_12sharded_slab5shardINtB3_5ShardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB5_3cfg13DefaultConfigE9with_slotINtNtNtB5_4page4slot5GuardBP_ENCNvMs_NtB5_4poolINtB36_4PoolBP_E3get0EBV_: argument 1"}
!247 = distinct !{!247, i1 false, !"_RNCNvMs_NtCsb0GAtLbz3Z0_12sharded_slab4poolINtB6_4PoolNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerE3get0BW_"}
!248 = distinct !{!248, !247, !"_RNCNvMs_NtCsb0GAtLbz3Z0_12sharded_slab4poolINtB6_4PoolNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerE3get0BW_: argument 0"}
!249 = distinct !{!249, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsb0GAtLbz3Z0_12sharded_slab4pool3RefNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerEEB1n_"}
!250 = distinct !{!250, !249, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsb0GAtLbz3Z0_12sharded_slab4pool3RefNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerEEB1n_: argument 0"}
!251 = distinct !{!251, i1 false, !"_RNvXs6_NtCsb0GAtLbz3Z0_12sharded_slab4poolINtB5_3RefNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBU_"}
!252 = distinct !{!252, !251, !"_RNvXs6_NtCsb0GAtLbz3Z0_12sharded_slab4poolINtB5_3RefNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBU_: argument 0"}
!253 = distinct !{!253, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsb0GAtLbz3Z0_12sharded_slab4pool3RefNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerEEB1n_"}
!254 = distinct !{!254, !253, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsb0GAtLbz3Z0_12sharded_slab4pool3RefNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerEEB1n_: argument 0"}
!255 = distinct !{!255, i1 false, !"_RNvXs6_NtCsb0GAtLbz3Z0_12sharded_slab4poolINtB5_3RefNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBU_"}
!256 = distinct !{!256, !255, !"_RNvXs6_NtCsb0GAtLbz3Z0_12sharded_slab4poolINtB5_3RefNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBU_: argument 0"}
!257 = !{!243, !241}
!258 = !{!245}
!259 = !{!246, !243, !241}
!260 = !{!245, !246, !243, !241}
!261 = !{!248, !243, !241}
!262 = !{!"branch_weights", i32 1, i32 4001}
!263 = !{!252, !250}
!264 = !{!256, !254}
!265 = distinct !{!265, i1 false, !"_RNvMs_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB4_8Registry3get"}
!266 = distinct !{!266, !265, !"_RNvMs_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB4_8Registry3get: argument 0"}
!267 = distinct !{!267, i1 false, !"_RNvMs_NtCsb0GAtLbz3Z0_12sharded_slab4poolINtB4_4PoolNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerE3getBU_"}
!268 = distinct !{!268, !267, !"_RNvMs_NtCsb0GAtLbz3Z0_12sharded_slab4poolINtB4_4PoolNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerE3getBU_: argument 0"}
!269 = distinct !{!269, i1 false, !"_RINvMNtCsb0GAtLbz3Z0_12sharded_slab5shardINtB3_5ShardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB5_3cfg13DefaultConfigE9with_slotINtNtNtB5_4page4slot5GuardBP_ENCNvMs_NtB5_4poolINtB36_4PoolBP_E3get0EBV_"}
!270 = distinct !{!270, !269, !"_RINvMNtCsb0GAtLbz3Z0_12sharded_slab5shardINtB3_5ShardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB5_3cfg13DefaultConfigE9with_slotINtNtNtB5_4page4slot5GuardBP_ENCNvMs_NtB5_4poolINtB36_4PoolBP_E3get0EBV_: argument 0"}
!271 = distinct !{!271, !269, !"_RINvMNtCsb0GAtLbz3Z0_12sharded_slab5shardINtB3_5ShardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB5_3cfg13DefaultConfigE9with_slotINtNtNtB5_4page4slot5GuardBP_ENCNvMs_NtB5_4poolINtB36_4PoolBP_E3get0EBV_: argument 1"}
!272 = distinct !{!272, i1 false, !"_RNCNvMs_NtCsb0GAtLbz3Z0_12sharded_slab4poolINtB6_4PoolNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerE3get0BW_"}
!273 = distinct !{!273, !272, !"_RNCNvMs_NtCsb0GAtLbz3Z0_12sharded_slab4poolINtB6_4PoolNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerE3get0BW_: argument 0"}
!274 = !{!268, !266}
!275 = !{!270}
!276 = !{!271, !268, !266}
!277 = !{!270, !271, !268, !266}
!278 = !{!273, !268, !266}
!279 = distinct !{!279, i1 false, !"_RNvXsd_NtCs3pBv9WGWlWf_12tracing_core4spanNtB5_10AttributesNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt"}
!280 = distinct !{!280, !279, !"_RNvXsd_NtCs3pBv9WGWlWf_12tracing_core4spanNtB5_10AttributesNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt: argument 1"}
!281 = distinct !{!281, !279, !"_RNvXsd_NtCs3pBv9WGWlWf_12tracing_core4spanNtB5_10AttributesNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt: argument 0"}
!282 = !{!281, !280}
!283 = distinct !{!283, i1 false, !"_RNvXs8_NtCs3pBv9WGWlWf_12tracing_core4spanNtB5_2IdNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt"}
!284 = distinct !{!284, !283, !"_RNvXs8_NtCs3pBv9WGWlWf_12tracing_core4spanNtB5_2IdNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt: argument 1"}
!285 = distinct !{!285, !283, !"_RNvXs8_NtCs3pBv9WGWlWf_12tracing_core4spanNtB5_2IdNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt: argument 0"}
!286 = !{!285, !284}
!287 = distinct !{!287, i1 false, !"_RNCNvMs_NtCsb0GAtLbz3Z0_12sharded_slab4poolINtB6_4PoolNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerE6create0BW_"}
!288 = distinct !{!288, !287, !"_RNCNvMs_NtCsb0GAtLbz3Z0_12sharded_slab4poolINtB6_4PoolNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerE6create0BW_: argument 0"}
!289 = !{!288}
!290 = distinct !{!290, i1 false, !"_RNvYNCNKNvNtCsb0GAtLbz3Z0_12sharded_slab3tid12REGISTRATION00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCsj06xRw2G0SJ_18tracing_subscriber"}
!291 = distinct !{!291, !290, !"_RNvYNCNKNvNtCsb0GAtLbz3Z0_12sharded_slab3tid12REGISTRATION00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCsj06xRw2G0SJ_18tracing_subscriber: argument 0"}
!292 = distinct !{!292, i1 false, !"_RNCNKNvNtCsb0GAtLbz3Z0_12sharded_slab3tid12REGISTRATION00Csj06xRw2G0SJ_18tracing_subscriber"}
!293 = distinct !{!293, !292, !"_RNCNKNvNtCsb0GAtLbz3Z0_12sharded_slab3tid12REGISTRATION00Csj06xRw2G0SJ_18tracing_subscriber: argument 0"}
!294 = distinct !{!294, i1 false, !"_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtCsb0GAtLbz3Z0_12sharded_slab3tid12RegistrationuE11get_or_initNvNvB1g_12REGISTRATION27___rust_std_internal_init_fnECsj06xRw2G0SJ_18tracing_subscriber"}
!295 = distinct !{!295, !294, !"_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtCsb0GAtLbz3Z0_12sharded_slab3tid12RegistrationuE11get_or_initNvNvB1g_12REGISTRATION27___rust_std_internal_init_fnECsj06xRw2G0SJ_18tracing_subscriber: argument 0"}
!296 = !{!295, !293, !291}
!297 = distinct !{!297, i1 false, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock15RwLockReadGuardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry10extensions15ExtensionsInnerEINtBM_11PoisonErrorBH_EE6expectB1O_"}
!298 = distinct !{!298, !297, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock15RwLockReadGuardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry10extensions15ExtensionsInnerEINtBM_11PoisonErrorBH_EE6expectB1O_: argument 0"}
!299 = !{!"branch_weights", i32 -294967296, i32 6003000}
!300 = !{!298}
!301 = !{i64 4}
!302 = distinct !{!302, i1 false, !"_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry10extensions15ExtensionsInnerE5writeB15_"}
!303 = distinct !{!303, !302, !"_RNvMs9_NtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlockINtB5_6RwLockNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry10extensions15ExtensionsInnerE5writeB15_: argument 0"}
!304 = distinct !{!304, i1 false, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock16RwLockWriteGuardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry10extensions15ExtensionsInnerEINtBM_11PoisonErrorBH_EE6expectB1P_"}
!305 = distinct !{!305, !304, !"_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock16RwLockWriteGuardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry10extensions15ExtensionsInnerEINtBM_11PoisonErrorBH_EE6expectB1P_: argument 0"}
!306 = !{!303}
!307 = !{!305}
!308 = distinct !{!308, i1 false, !"_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultNtB2_8DispatchNvYBV_NtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneECsj06xRw2G0SJ_18tracing_subscriber"}
!309 = distinct !{!309, !308, !"_RINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultNtB2_8DispatchNvYBV_NtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneECsj06xRw2G0SJ_18tracing_subscriber: argument 0"}
!310 = distinct !{!310, i1 false, !"_RNvYNvYNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher8DispatchNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneINtNtNtB10_3ops8function5FnMutTRB5_EE8call_mutCsj06xRw2G0SJ_18tracing_subscriber"}
!311 = distinct !{!311, !310, !"_RNvYNvYNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher8DispatchNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneINtNtNtB10_3ops8function5FnMutTRB5_EE8call_mutCsj06xRw2G0SJ_18tracing_subscriber: argument 1"}
!312 = distinct !{!312, i1 false, !"_RNvXsf_NtCs3pBv9WGWlWf_12tracing_core10dispatcherNtB5_8DispatchNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone"}
!313 = distinct !{!313, !312, !"_RNvXsf_NtCs3pBv9WGWlWf_12tracing_core10dispatcherNtB5_8DispatchNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone: argument 1"}
!314 = distinct !{!314, !310, !"_RNvYNvYNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher8DispatchNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneINtNtNtB10_3ops8function5FnMutTRB5_EE8call_mutCsj06xRw2G0SJ_18tracing_subscriber: argument 0"}
!315 = distinct !{!315, !312, !"_RNvXsf_NtCs3pBv9WGWlWf_12tracing_core10dispatcherNtB5_8DispatchNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone: argument 0"}
!316 = distinct !{!316, i1 false, !"_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNvYB2d_NtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneE0B2d_ECsj06xRw2G0SJ_18tracing_subscriber"}
!317 = distinct !{!317, !316, !"_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultNtBW_8DispatchNvYB2d_NtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneE0B2d_ECsj06xRw2G0SJ_18tracing_subscriber: argument 0"}
!318 = distinct !{!318, i1 false, !"_RNCINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultNtB4_8DispatchNvYBX_NtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneE0Csj06xRw2G0SJ_18tracing_subscriber"}
!319 = distinct !{!319, !318, !"_RNCINvNtCs3pBv9WGWlWf_12tracing_core10dispatcher11get_defaultNtB4_8DispatchNvYBX_NtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneE0Csj06xRw2G0SJ_18tracing_subscriber: argument 0"}
!320 = distinct !{!320, i1 false, !"_RNvYNvYNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher8DispatchNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneINtNtNtB10_3ops8function5FnMutTRB5_EE8call_mutCsj06xRw2G0SJ_18tracing_subscriber"}
!321 = distinct !{!321, !320, !"_RNvYNvYNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher8DispatchNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneINtNtNtB10_3ops8function5FnMutTRB5_EE8call_mutCsj06xRw2G0SJ_18tracing_subscriber: argument 1"}
!322 = distinct !{!322, i1 false, !"_RNvXsf_NtCs3pBv9WGWlWf_12tracing_core10dispatcherNtB5_8DispatchNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone"}
!323 = distinct !{!323, !322, !"_RNvXsf_NtCs3pBv9WGWlWf_12tracing_core10dispatcherNtB5_8DispatchNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone: argument 1"}
!324 = distinct !{!324, !320, !"_RNvYNvYNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher8DispatchNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneINtNtNtB10_3ops8function5FnMutTRB5_EE8call_mutCsj06xRw2G0SJ_18tracing_subscriber: argument 0"}
!325 = distinct !{!325, !322, !"_RNvXsf_NtCs3pBv9WGWlWf_12tracing_core10dispatcherNtB5_8DispatchNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone: argument 0"}
!326 = distinct !{!326, i1 false, !"_RNCNvMsc_NtCs3pBv9WGWlWf_12tracing_core10dispatcherNtB7_7Entered7current0Csj06xRw2G0SJ_18tracing_subscriber"}
!327 = distinct !{!327, !326, !"_RNCNvMsc_NtCs3pBv9WGWlWf_12tracing_core10dispatcherNtB7_7Entered7current0Csj06xRw2G0SJ_18tracing_subscriber: argument 0"}
!328 = distinct !{!328, i1 false, !"_RNvYNvYNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher8DispatchNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneINtNtNtB10_3ops8function5FnMutTRB5_EE8call_mutCsj06xRw2G0SJ_18tracing_subscriber"}
!329 = distinct !{!329, !328, !"_RNvYNvYNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher8DispatchNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneINtNtNtB10_3ops8function5FnMutTRB5_EE8call_mutCsj06xRw2G0SJ_18tracing_subscriber: argument 1"}
!330 = distinct !{!330, i1 false, !"_RNvXsf_NtCs3pBv9WGWlWf_12tracing_core10dispatcherNtB5_8DispatchNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone"}
!331 = distinct !{!331, !330, !"_RNvXsf_NtCs3pBv9WGWlWf_12tracing_core10dispatcherNtB5_8DispatchNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone: argument 1"}
!332 = distinct !{!332, !328, !"_RNvYNvYNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher8DispatchNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneINtNtNtB10_3ops8function5FnMutTRB5_EE8call_mutCsj06xRw2G0SJ_18tracing_subscriber: argument 0"}
!333 = distinct !{!333, !330, !"_RNvXsf_NtCs3pBv9WGWlWf_12tracing_core10dispatcherNtB5_8DispatchNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone: argument 0"}
!334 = distinct !{!334, i1 false, !"_RNvYNvYNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher8DispatchNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneINtNtNtB10_3ops8function5FnMutTRB5_EE8call_mutCsj06xRw2G0SJ_18tracing_subscriber"}
!335 = distinct !{!335, !334, !"_RNvYNvYNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher8DispatchNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneINtNtNtB10_3ops8function5FnMutTRB5_EE8call_mutCsj06xRw2G0SJ_18tracing_subscriber: argument 1"}
!336 = distinct !{!336, i1 false, !"_RNvXsf_NtCs3pBv9WGWlWf_12tracing_core10dispatcherNtB5_8DispatchNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone"}
!337 = distinct !{!337, !336, !"_RNvXsf_NtCs3pBv9WGWlWf_12tracing_core10dispatcherNtB5_8DispatchNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone: argument 1"}
!338 = distinct !{!338, !334, !"_RNvYNvYNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher8DispatchNtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneINtNtNtB10_3ops8function5FnMutTRB5_EE8call_mutCsj06xRw2G0SJ_18tracing_subscriber: argument 0"}
!339 = distinct !{!339, !336, !"_RNvXsf_NtCs3pBv9WGWlWf_12tracing_core10dispatcherNtB5_8DispatchNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone: argument 0"}
!340 = distinct !{!340, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher8DispatchECsj06xRw2G0SJ_18tracing_subscriber"}
!341 = distinct !{!341, !340, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher8DispatchECsj06xRw2G0SJ_18tracing_subscriber: argument 0"}
!342 = distinct !{!342, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs3pBv9WGWlWf_12tracing_core10dispatcher4KindINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtBG_10subscriber10SubscriberNtNtB4_6marker4SendNtB2u_4SyncEL_EEECsj06xRw2G0SJ_18tracing_subscriber"}
!343 = distinct !{!343, !342, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs3pBv9WGWlWf_12tracing_core10dispatcher4KindINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtBG_10subscriber10SubscriberNtNtB4_6marker4SendNtB2u_4SyncEL_EEECsj06xRw2G0SJ_18tracing_subscriber: argument 0"}
!344 = distinct !{!344, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10SubscriberNtNtB4_6marker4SendNtB25_4SyncEL_EECsj06xRw2G0SJ_18tracing_subscriber"}
!345 = distinct !{!345, !344, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10SubscriberNtNtB4_6marker4SendNtB25_4SyncEL_EECsj06xRw2G0SJ_18tracing_subscriber: argument 0"}
!346 = distinct !{!346, i1 false, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10SubscriberNtNtCs4NRVxsYgnAr_4core6marker4SendNtB1C_4SyncEL_ENtNtNtB1E_3ops4drop4Drop4dropCsj06xRw2G0SJ_18tracing_subscriber"}
!347 = distinct !{!347, !346, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10SubscriberNtNtCs4NRVxsYgnAr_4core6marker4SendNtB1C_4SyncEL_ENtNtNtB1E_3ops4drop4Drop4dropCsj06xRw2G0SJ_18tracing_subscriber: argument 0"}
!348 = distinct !{!348, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher8DispatchECsj06xRw2G0SJ_18tracing_subscriber"}
!349 = distinct !{!349, !348, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher8DispatchECsj06xRw2G0SJ_18tracing_subscriber: argument 0"}
!350 = distinct !{!350, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs3pBv9WGWlWf_12tracing_core10dispatcher4KindINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtBG_10subscriber10SubscriberNtNtB4_6marker4SendNtB2u_4SyncEL_EEECsj06xRw2G0SJ_18tracing_subscriber"}
!351 = distinct !{!351, !350, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs3pBv9WGWlWf_12tracing_core10dispatcher4KindINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtBG_10subscriber10SubscriberNtNtB4_6marker4SendNtB2u_4SyncEL_EEECsj06xRw2G0SJ_18tracing_subscriber: argument 0"}
!352 = distinct !{!352, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10SubscriberNtNtB4_6marker4SendNtB25_4SyncEL_EECsj06xRw2G0SJ_18tracing_subscriber"}
!353 = distinct !{!353, !352, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10SubscriberNtNtB4_6marker4SendNtB25_4SyncEL_EECsj06xRw2G0SJ_18tracing_subscriber: argument 0"}
!354 = distinct !{!354, i1 false, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10SubscriberNtNtCs4NRVxsYgnAr_4core6marker4SendNtB1C_4SyncEL_ENtNtNtB1E_3ops4drop4Drop4dropCsj06xRw2G0SJ_18tracing_subscriber"}
!355 = distinct !{!355, !354, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10SubscriberNtNtCs4NRVxsYgnAr_4core6marker4SendNtB1C_4SyncEL_ENtNtNtB1E_3ops4drop4Drop4dropCsj06xRw2G0SJ_18tracing_subscriber: argument 0"}
!356 = !{!309}
!357 = !{!311}
!358 = !{!313}
!359 = !{!313, !311}
!360 = !{!315, !314, !309}
!361 = !{!315, !313, !314, !311, !309}
!362 = !{!317, !309}
!363 = !{!"branch_weights", i32 1, i32 1, i32 2000, i32 2000}
!364 = !{!319, !317, !309}
!365 = !{!321}
!366 = !{!323}
!367 = !{!323, !321}
!368 = !{!325, !324, !319, !317, !309}
!369 = !{!325, !323, !324, !321, !319, !317, !309}
!370 = !{!327}
!371 = !{i64 0, i64 3}
!372 = !{!327, !319, !317, !309}
!373 = !{!331, !329}
!374 = !{!333, !332, !319, !317, !309}
!375 = !{!329}
!376 = !{!331}
!377 = !{!333, !331, !332, !329, !319, !317, !309}
!378 = !{!335}
!379 = !{!337}
!380 = !{!337, !335}
!381 = !{!339, !338, !309}
!382 = !{!339, !337, !338, !335, !309}
!383 = !{!343, !341}
!384 = !{!341}
!385 = !{!343}
!386 = !{!345}
!387 = !{!347}
!388 = !{!347, !345, !343, !341}
!389 = !{!349}
!390 = !{!351}
!391 = !{!351, !349}
!392 = !{!353}
!393 = !{!355}
!394 = !{!355, !353, !351, !349}
!395 = distinct !{!395, i1 false, !"_RNvXs1_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtB7_10LookupSpan9span_data"}
!396 = distinct !{!396, !395, !"_RNvXs1_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtB7_10LookupSpan9span_data: argument 1"}
!397 = distinct !{!397, !395, !"_RNvXs1_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB5_8RegistryNtB7_10LookupSpan9span_data: argument 0"}
!398 = distinct !{!398, i1 false, !"_RNvMs_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB4_8Registry3get"}
!399 = distinct !{!399, !398, !"_RNvMs_NtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7shardedNtB4_8Registry3get: argument 0"}
!400 = distinct !{!400, i1 false, !"_RNvMs_NtCsb0GAtLbz3Z0_12sharded_slab4poolINtB4_4PoolNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerE3getBU_"}
!401 = distinct !{!401, !400, !"_RNvMs_NtCsb0GAtLbz3Z0_12sharded_slab4poolINtB4_4PoolNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerE3getBU_: argument 0"}
!402 = distinct !{!402, i1 false, !"_RINvMNtCsb0GAtLbz3Z0_12sharded_slab5shardINtB3_5ShardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB5_3cfg13DefaultConfigE9with_slotINtNtNtB5_4page4slot5GuardBP_ENCNvMs_NtB5_4poolINtB36_4PoolBP_E3get0EBV_"}
!403 = distinct !{!403, !402, !"_RINvMNtCsb0GAtLbz3Z0_12sharded_slab5shardINtB3_5ShardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB5_3cfg13DefaultConfigE9with_slotINtNtNtB5_4page4slot5GuardBP_ENCNvMs_NtB5_4poolINtB36_4PoolBP_E3get0EBV_: argument 0"}
!404 = distinct !{!404, !402, !"_RINvMNtCsb0GAtLbz3Z0_12sharded_slab5shardINtB3_5ShardNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB5_3cfg13DefaultConfigE9with_slotINtNtNtB5_4page4slot5GuardBP_ENCNvMs_NtB5_4poolINtB36_4PoolBP_E3get0EBV_: argument 1"}
!405 = distinct !{!405, i1 false, !"_RNCNvMs_NtCsb0GAtLbz3Z0_12sharded_slab4poolINtB6_4PoolNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerE3get0BW_"}
!406 = distinct !{!406, !405, !"_RNCNvMs_NtCsb0GAtLbz3Z0_12sharded_slab4poolINtB6_4PoolNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerE3get0BW_: argument 0"}
!407 = !{!396}
!408 = !{!397}
!409 = !{!401, !399, !397, !396}
!410 = !{!403}
!411 = !{!404, !401, !399, !397, !396}
!412 = !{!403, !404, !401, !399, !397, !396}
!413 = !{!406, !401, !399, !397, !396}
end_hunk_1
