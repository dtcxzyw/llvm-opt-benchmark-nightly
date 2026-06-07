inline.NumInlined: 13443
inline.NumDeleted: 3890
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core9panicking13assert_failedINtNtB4_6option6OptionINtNtNtB4_3ptr8non_null7NonNullINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1K_7runtime4task4join10JoinHandleINtNtB4_6result6ResultTNtNtCsjyY8HP3IvQ6_12object_store4path4PathjNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata15ParquetMetaDataENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEEBM_EB5p_:bb.a

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
define void @_RINvNtCsbvkFyIu7lgC_4core9panicking13assert_failedINtNtB4_6option6OptionINtNtNtB4_3ptr8non_null7NonNullINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1K_7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEEEBM_EB3K_(i8 noundef range(i8 0, 3) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noundef %3, ptr %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19assert_failed_inner(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20, ptr noundef %3, ptr %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #50
  unreachable
}

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
define void @_RINvNtCsbvkFyIu7lgC_4core9panicking13assert_failedxxECs14kWLkQVSKO_14deltalake_core(i8 noundef range(i8 0, 3) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noundef %3, ptr %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19assert_failed_inner(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21, ptr noundef %3, ptr %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #50
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCseqDwI8vvjGQ_10serde_json3ser6to_vecNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 128, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.d = load i64, ptr %i.b, align 8, !range !58, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !17, !noundef !4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c, !prof !52

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #48
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.k = icmp samesign ugt i64 %i.g, 127
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.g, ptr %i.c, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10353
  store ptr %i.c, ptr %i.a, align 8, !noalias !10353
  %i.n = invoke noundef align 8 ptr @_RINvXsr_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructTypeNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.c) #46
          to label %common.resume unwind label %bb.k

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10353
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.p, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.g ], [ %i.o, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.k:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_RINvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge17get_metric_any_orNCNCNCNvB2_7execute00s8_0EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph.i.i:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [48 x i8], align 8                ; 9 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %i.m = alloca [48 x i8], align 8                ; 6 uses
  %i.n = alloca [48 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10357)
  %.val8.i.i = load ptr, ptr %1, align 8, !alias.scope !10357, !noalias !10360, !nonnull !4, !noundef !4
  %i.o = getelementptr i8, ptr %1, i64 8
  %.val9.i.i = load i64, ptr %i.o, align 8, !alias.scope !10357, !noalias !10360, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !10364
  call void @_RNvMs0_NtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metricsNtB5_10MetricsSet11sum_by_name(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val8.i.i, i64 noundef %.val9.i.i), !noalias !10366
  %i.p = load i64, ptr %i.n, align 8, !range !5390, !noalias !10364, !noundef !4
  %.not.i.i.i = icmp eq i64 %i.p, -9223372036854775791
  br i1 %.not.i.i.i, label %.lr.ph.i.i.1, label %bb.a

bb.a:                                             ; preds = %.lr.ph.i.i.1, %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !10364
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 48, i1 false), !noalias !10364
  %i.q = invoke noundef i64 @_RNvMsn_NtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics5valueNtB5_11MetricValue8as_usize(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.m)
          to label %_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14get_metric_any0B7_.exit.thread.i.i unwind label %bb.b, !noalias !10366

bb.b:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics5value11MetricValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.m) #46
          to label %bb.d unwind label %bb.c, !noalias !10366

bb.c:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !10366
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.r

_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14get_metric_any0B7_.exit.thread.i.i: ; preds = %bb.a
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics5value11MetricValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.m), !noalias !10366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !10364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !10364
  %i.t = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %i.q, 1
  br label %_RNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14get_metric_any.exit

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !10364
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val8.i.i.1 = load ptr, ptr %.ptr.1, align 8, !alias.scope !10357, !noalias !10360, !nonnull !4, !noundef !4
  %i.u = getelementptr i8, ptr %1, i64 24
  %.val9.i.i.1 = load i64, ptr %i.u, align 8, !alias.scope !10357, !noalias !10360, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !10364
  call void @_RNvMs0_NtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metricsNtB5_10MetricsSet11sum_by_name(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val8.i.i.1, i64 noundef %.val9.i.i.1), !noalias !10366
  %i.v = load i64, ptr %i.n, align 8, !range !5390, !noalias !10364, !noundef !4
  %.not.i.i.i.1 = icmp eq i64 %i.v, -9223372036854775791
  br i1 %.not.i.i.i.1, label %_RNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14get_metric_any.exit.loopexit, label %bb.a

_RNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14get_metric_any.exit.loopexit: ; preds = %.lr.ph.i.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !10364
  br label %_RNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14get_metric_any.exit

_RNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14get_metric_any.exit: ; preds = %_RNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14get_metric_any.exit.loopexit, %_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14get_metric_any0B7_.exit.thread.i.i
  %.merged.i.i = phi { i64, i64 } [ %i.t, %_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14get_metric_any0B7_.exit.thread.i.i ], [ { i64 0, i64 undef }, %_RNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14get_metric_any.exit.loopexit ] ; 2 uses
  %i.w = extractvalue { i64, i64 } %.merged.i.i, 0
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14get_metric_any.exit
  %i.y = extractvalue { i64, i64 } %.merged.i.i, 1
  br label %bb.r

bb.f:                                             ; preds = %_RNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14get_metric_any.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.z = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !10367
  %i.aa = icmp ult i64 %i.z, 4
  br i1 %i.aa, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.ab = load atomic i8, ptr getelementptr inbounds (i8, ptr @_RNvNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s8_010___CALLSITE, i64 16) monotonic, align 8, !noalias !10367 ; 3 uses
  switch i8 %i.ab, label %bb.h [
    i8 0, label %bb.n
    i8 1, label %bb.i
    i8 2, label %bb.i
  ], !prof !10371

bb.h:                                             ; preds = %bb.g
  %i.ac = call noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s8_010___CALLSITE) #45, !noalias !10367 ; 2 uses
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.g
  %.sroa.06.0.i = phi i8 [ %i.ac, %bb.h ], [ %i.ab, %bb.g ], [ %i.ab, %bb.g ]
  %i.ae = load ptr, ptr @_RNvNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s8_010___CALLSITE, align 8, !noalias !10367, !nonnull !4, !align !18, !noundef !4
  %i.af = call noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ae, i8 noundef %.sroa.06.0.i), !noalias !10367
  br i1 %i.af, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !10367
  %i.ag = load ptr, ptr @_RNvNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s8_010___CALLSITE, align 8, !noalias !10367, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !10367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !10367
  store ptr @202, ptr %i.j, align 8, !noalias !10367
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 135 to ptr), ptr %i.ai, align 8, !noalias !10367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !10367
  store ptr %2, ptr %i.i, align 8, !noalias !10367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10367
  store ptr %3, ptr %i.h, align 8, !noalias !10367
  store ptr %i.j, ptr %i.k, align 8, !noalias !10367
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @196, ptr %i.aj, align 8, !noalias !10367
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.i, ptr %i.ak, align 8, !noalias !10367
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @203, ptr %i.al, align 8, !noalias !10367
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr %i.h, ptr %i.am, align 8, !noalias !10367
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store ptr @204, ptr %i.an, align 8, !noalias !10367
  store i64 1, ptr %i.l, align 8, !noalias !10367
  %.sroa.08.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.k, ptr %.sroa.08.sroa.4.0..sroa_idx.i, align 8, !noalias !10367
  %.sroa.08.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 3, ptr %.sroa.08.sroa.5.0..sroa_idx.i, align 8, !noalias !10367
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.ah, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !10367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10367
  call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l)
  %i.ao = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !10372
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.k, label %_RNCNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s8_00Bd_.exit.i

bb.k:                                             ; preds = %bb.j
  %i.aq = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !10372 ; 2 uses
  %i.ar = icmp ult i64 %i.aq, 6
  call void @llvm.assume(i1 %i.ar)
  %i.as = icmp samesign ugt i64 %i.aq, 1
  br i1 %i.as, label %bb.l, label %_RNCNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s8_00Bd_.exit.i

bb.l:                                             ; preds = %bb.k
  %i.at = load ptr, ptr @_RNvNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s8_010___CALLSITE, align 8, !noalias !10372, !nonnull !4, !align !18, !noundef !4 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !4, !noundef !4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !4
  store i64 2, ptr %i.a, align 8, !noalias !10372
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.av, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !10372
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.ax, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !10372
  %i.ay = call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.az = extractvalue { ptr, ptr } %i.ay, 0      ; 2 uses
  %i.ba = extractvalue { ptr, ptr } %i.ay, 1      ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !invariant.load !4, !nonnull !4
  %i.bd = call noundef zeroext i1 %i.bc(ptr noundef %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #49, !inline_history !10375
  br i1 %i.bd, label %bb.m, label %_RNCNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s8_00Bd_.exit.i

bb.m:                                             ; preds = %bb.l
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at, ptr noundef nonnull %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ba, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l)
  br label %_RNCNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s8_00Bd_.exit.i

_RNCNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s8_00Bd_.exit.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !10367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !10367
  br label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s8_0Bb_.exit

bb.n:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %i.be = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !10367
  %i.bf = icmp eq i8 %i.be, 0
  br i1 %i.bf, label %bb.o, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s8_0Bb_.exit

bb.o:                                             ; preds = %bb.n
  %i.bg = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !10367 ; 2 uses
  %i.bh = icmp ult i64 %i.bg, 6
  call void @llvm.assume(i1 %i.bh)
  %i.bi = icmp samesign ugt i64 %i.bg, 1
  br i1 %i.bi, label %bb.p, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s8_0Bb_.exit

bb.p:                                             ; preds = %bb.o
  %i.bj = load ptr, ptr @_RNvNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s8_010___CALLSITE, align 8, !noalias !10367, !nonnull !4, !align !18, !noundef !4 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !10367, !nonnull !4, !noundef !4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bn = load i64, ptr %i.bm, align 8, !noalias !10367, !noundef !4
  store i64 2, ptr %i.g, align 8, !noalias !10367
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.bl, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !10367
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.bn, ptr %.sroa.513.0..sroa_idx.i, align 8, !noalias !10367
  %i.bo = call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger(), !noalias !10367 ; 2 uses
  %i.bp = extractvalue { ptr, ptr } %i.bo, 0      ; 2 uses
  %i.bq = extractvalue { ptr, ptr } %i.bo, 1      ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !invariant.load !4, !noalias !10367, !nonnull !4
  %i.bt = call noundef zeroext i1 %i.bs(ptr noundef %i.bp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g) #49, !noalias !10367, !inline_history !10376
  br i1 %i.bt, label %bb.q, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s8_0Bb_.exit

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10367
  %i.bu = load ptr, ptr @_RNvNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s8_010___CALLSITE, align 8, !noalias !10367, !nonnull !4, !align !18, !noundef !4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10367
  store ptr @202, ptr %i.d, align 8, !noalias !10367
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 135 to ptr), ptr %i.bw, align 8, !noalias !10367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10367
  store ptr %2, ptr %i.c, align 8, !noalias !10367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10367
  store ptr %3, ptr %i.b, align 8, !noalias !10367
  store ptr %i.d, ptr %i.e, align 8, !noalias !10367
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @196, ptr %i.bx, align 8, !noalias !10367
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.c, ptr %i.by, align 8, !noalias !10367
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @203, ptr %i.bz, align 8, !noalias !10367
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.b, ptr %i.ca, align 8, !noalias !10367
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr @204, ptr %i.cb, align 8, !noalias !10367
  store i64 1, ptr %i.f, align 8, !noalias !10367
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.e, ptr %.sroa.415.0..sroa_idx.i, align 8, !noalias !10367
  %.sroa.516.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 3, ptr %.sroa.516.0..sroa_idx.i, align 8, !noalias !10367
  %i.cc = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.bv, ptr %i.cc, align 8, !noalias !10367
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bj, ptr noundef nonnull %i.bp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bq, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10367
  br label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s8_0Bb_.exit

_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s8_0Bb_.exit: ; preds = %_RNCNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s8_00Bd_.exit.i, %bb.n, %bb.o, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.r

bb.r:                                             ; preds = %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s8_0Bb_.exit, %bb.e
  %.sroa.0.0 = phi i64 [ %i.y, %bb.e ], [ 0, %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s8_0Bb_.exit ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_RINvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge17get_metric_any_orNCNCNCNvB2_7execute00s9_0EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph.i.i:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [64 x i8], align 8                ; 11 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [64 x i8], align 8                ; 11 uses
  %i.m = alloca [32 x i8], align 8                ; 8 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [80 x i8], align 8                ; 13 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [80 x i8], align 8                ; 13 uses
  %i.x = alloca [32 x i8], align 8                ; 8 uses
  %i.y = alloca [8 x i8], align 8                 ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [8 x i8], align 8                ; 5 uses
  %i.ab = alloca [48 x i8], align 8               ; 6 uses
  %i.ac = alloca [48 x i8], align 8               ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10377)
  %.val8.i.i = load ptr, ptr %1, align 8, !alias.scope !10377, !noalias !10380, !nonnull !4, !noundef !4
  %i.ad = getelementptr i8, ptr %1, i64 8
  %.val9.i.i = load i64, ptr %i.ad, align 8, !alias.scope !10377, !noalias !10380, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !10384
  call void @_RNvMs0_NtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metricsNtB5_10MetricsSet11sum_by_name(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val8.i.i, i64 noundef %.val9.i.i), !noalias !10386
  %i.ae = load i64, ptr %i.ac, align 8, !range !5390, !noalias !10384, !noundef !4
  %.not.i.i.i = icmp eq i64 %i.ae, -9223372036854775791
  br i1 %.not.i.i.i, label %.lr.ph.i.i.1, label %bb.a

bb.a:                                             ; preds = %.lr.ph.i.i.2, %.lr.ph.i.i.1, %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !10384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %i.ac, i64 48, i1 false), !noalias !10384
  %i.af = invoke noundef i64 @_RNvMsn_NtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics5valueNtB5_11MetricValue8as_usize(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ab)
          to label %_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14get_metric_any0B7_.exit.thread.i.i unwind label %bb.b, !noalias !10386

bb.b:                                             ; preds = %bb.a
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics5value11MetricValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ab) #46
          to label %bb.d unwind label %bb.c, !noalias !10386

bb.c:                                             ; preds = %bb.b
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !10386
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.ag

_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14get_metric_any0B7_.exit.thread.i.i: ; preds = %bb.a
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics5value11MetricValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ab), !noalias !10386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !10384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !10384
  %i.ai = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %i.af, 1
  br label %_RNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14get_metric_any.exit

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !10384
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val8.i.i.1 = load ptr, ptr %.ptr.1, align 8, !alias.scope !10377, !noalias !10380, !nonnull !4, !noundef !4
  %i.aj = getelementptr i8, ptr %1, i64 24
  %.val9.i.i.1 = load i64, ptr %i.aj, align 8, !alias.scope !10377, !noalias !10380, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !10384
  call void @_RNvMs0_NtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metricsNtB5_10MetricsSet11sum_by_name(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val8.i.i.1, i64 noundef %.val9.i.i.1), !noalias !10386
  %i.ak = load i64, ptr %i.ac, align 8, !range !5390, !noalias !10384, !noundef !4
  %.not.i.i.i.1 = icmp eq i64 %i.ak, -9223372036854775791
  br i1 %.not.i.i.i.1, label %.lr.ph.i.i.2, label %bb.a

.lr.ph.i.i.2:                                     ; preds = %.lr.ph.i.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !10384
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val8.i.i.2 = load ptr, ptr %.ptr.2, align 8, !alias.scope !10377, !noalias !10380, !nonnull !4, !noundef !4
  %i.al = getelementptr i8, ptr %1, i64 40
  %.val9.i.i.2 = load i64, ptr %i.al, align 8, !alias.scope !10377, !noalias !10380, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !10384
  call void @_RNvMs0_NtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metricsNtB5_10MetricsSet11sum_by_name(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val8.i.i.2, i64 noundef %.val9.i.i.2), !noalias !10386
  %i.am = load i64, ptr %i.ac, align 8, !range !5390, !noalias !10384, !noundef !4
  %.not.i.i.i.2 = icmp eq i64 %i.am, -9223372036854775791
  br i1 %.not.i.i.i.2, label %_RNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14get_metric_any.exit.loopexit, label %bb.a

_RNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14get_metric_any.exit.loopexit: ; preds = %.lr.ph.i.i.2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !10384
  br label %_RNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14get_metric_any.exit

_RNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14get_metric_any.exit: ; preds = %_RNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14get_metric_any.exit.loopexit, %_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14get_metric_any0B7_.exit.thread.i.i
  %.merged.i.i = phi { i64, i64 } [ %i.ai, %_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14get_metric_any0B7_.exit.thread.i.i ], [ { i64 0, i64 undef }, %_RNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14get_metric_any.exit.loopexit ] ; 2 uses
  %i.an = extractvalue { i64, i64 } %.merged.i.i, 0
  %i.ao = trunc nuw i64 %i.an to i1
  br i1 %i.ao, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14get_metric_any.exit
  %i.ap = extractvalue { i64, i64 } %.merged.i.i, 1
  br label %bb.ae

bb.f:                                             ; preds = %_RNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge14get_metric_any.exit
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 8 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !10387
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !10387, !nonnull !4, !noundef !4
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16
  %i.at = load i64, ptr %i.as, align 8, !noalias !10387, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !noalias !10387, !nonnull !4, !noundef !4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 88
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !10387, !nonnull !4, !noundef !4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 552
  store ptr %i.ar, ptr %i.z, align 8, !noalias !10387
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %i.at, ptr %i.az, align 8, !noalias !10387
  %i.ba = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.ay, ptr %i.ba, align 8, !noalias !10387
  %i.bb = call noundef i64 @_RNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB5_14LogDataHandler9num_files(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z), !noalias !10387 ; 3 uses
  store i64 %i.bb, ptr %i.aa, align 8, !noalias !10387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !10387
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %i.bc = load i64, ptr %.sroa.4.0.copyload, align 8, !noalias !10387, !noundef !4 ; 2 uses
  %i.bd = icmp ugt i64 %i.bc, %i.bb
  %i.be = call i64 @llvm.usub.sat.i64(i64 %i.bb, i64 %i.bc) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !10387
  store i64 %i.be, ptr %i.y, align 8, !noalias !10387
  br i1 %i.bd, label %bb.g, label %bb.s

bb.g:                                             ; preds = %bb.f
  %i.bf = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !10387
  %i.bg = icmp ult i64 %i.bf, 4
  br i1 %i.bg, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.bh = load atomic i8, ptr getelementptr inbounds (i8, ptr @_RNvNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s9_010___CALLSITE, i64 16) monotonic, align 8, !noalias !10387 ; 3 uses
  switch i8 %i.bh, label %bb.i [
    i8 0, label %bb.o
    i8 1, label %bb.j
    i8 2, label %bb.j
  ], !prof !10371

bb.i:                                             ; preds = %bb.h
  %i.bi = call noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s9_010___CALLSITE) #45, !noalias !10387 ; 2 uses
  %i.bj = icmp eq i8 %i.bi, 0
  br i1 %i.bj, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.h
  %.sroa.06.0.i = phi i8 [ %i.bi, %bb.i ], [ %i.bh, %bb.h ], [ %i.bh, %bb.h ]
  %i.bk = load ptr, ptr @_RNvNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s9_010___CALLSITE, align 8, !noalias !10387, !nonnull !4, !align !18, !noundef !4
  %i.bl = call noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bk, i8 noundef %.sroa.06.0.i), !noalias !10387
  br i1 %i.bl, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !10387
  %i.bm = load ptr, ptr @_RNvNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s9_010___CALLSITE, align 8, !noalias !10387, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !10387
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !10387
  store ptr @205, ptr %i.v, align 8, !noalias !10387
  %i.bo = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr inttoptr (i64 207 to ptr), ptr %i.bo, align 8, !noalias !10387
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !10387
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  store ptr %.sroa.5.0.copyload, ptr %i.u, align 8, !noalias !10387
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !10387
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload) ]
  store ptr %.sroa.9.0.copyload, ptr %i.t, align 8, !noalias !10387
  store ptr %i.v, ptr %i.w, align 8, !noalias !10387
  %i.bp = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @196, ptr %i.bp, align 8, !noalias !10387
  %i.bq = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.u, ptr %i.bq, align 8, !noalias !10387
  %i.br = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr @203, ptr %i.br, align 8, !noalias !10387
  %i.bs = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store ptr %i.aa, ptr %i.bs, align 8, !noalias !10387
  %i.bt = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store ptr @206, ptr %i.bt, align 8, !noalias !10387
  %i.bu = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  store ptr %.sroa.4.0.copyload, ptr %i.bu, align 8, !noalias !10387
  %i.bv = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  store ptr @206, ptr %i.bv, align 8, !noalias !10387
  %i.bw = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  store ptr %i.t, ptr %i.bw, align 8, !noalias !10387
  %i.bx = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  store ptr @207, ptr %i.bx, align 8, !noalias !10387
  store i64 1, ptr %i.x, align 8, !noalias !10387
  %.sroa.08.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.w, ptr %.sroa.08.sroa.4.0..sroa_idx.i, align 8, !noalias !10387
  %.sroa.08.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 5, ptr %.sroa.08.sroa.5.0..sroa_idx.i, align 8, !noalias !10387
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr %i.bn, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !10387
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10387
  call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x), !noalias !10387
  %i.by = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !10390
  %i.bz = icmp eq i8 %i.by, 0
  br i1 %i.bz, label %bb.l, label %_RNCNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s9_00Bd_.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ca = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !10390 ; 2 uses
  %i.cb = icmp ult i64 %i.ca, 6
  call void @llvm.assume(i1 %i.cb)
  %i.cc = icmp samesign ugt i64 %i.ca, 1
  br i1 %i.cc, label %bb.m, label %_RNCNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s9_00Bd_.exit.i

bb.m:                                             ; preds = %bb.l
  %i.cd = load ptr, ptr @_RNvNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s9_010___CALLSITE, align 8, !noalias !10390, !nonnull !4, !align !18, !noundef !4 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !10387, !nonnull !4, !noundef !4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.ch = load i64, ptr %i.cg, align 8, !noalias !10387, !noundef !4
  store i64 2, ptr %i.b, align 8, !noalias !10390
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.cf, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !10390
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.ch, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !10390
  %i.ci = call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger(), !noalias !10387 ; 2 uses
  %i.cj = extractvalue { ptr, ptr } %i.ci, 0      ; 2 uses
  %i.ck = extractvalue { ptr, ptr } %i.ci, 1      ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8, !invariant.load !4, !noalias !10387, !nonnull !4
  %i.cn = call noundef zeroext i1 %i.cm(ptr noundef %i.cj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b) #49, !noalias !10387, !inline_history !10393
  br i1 %i.cn, label %bb.n, label %_RNCNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s9_00Bd_.exit.i

bb.n:                                             ; preds = %bb.m
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cd, ptr noundef nonnull %i.cj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ck, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x), !noalias !10387
  br label %_RNCNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s9_00Bd_.exit.i

_RNCNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s9_00Bd_.exit.i: ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !10387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !10387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !10387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !10387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !10387
  br label %bb.s

bb.o:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %i.co = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !10387
  %i.cp = icmp eq i8 %i.co, 0
  br i1 %i.cp, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.cq = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !10387 ; 2 uses
  %i.cr = icmp ult i64 %i.cq, 6
  call void @llvm.assume(i1 %i.cr)
  %i.cs = icmp samesign ugt i64 %i.cq, 1
  br i1 %i.cs, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ct = load ptr, ptr @_RNvNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s9_010___CALLSITE, align 8, !noalias !10387, !nonnull !4, !align !18, !noundef !4 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !10387, !nonnull !4, !noundef !4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %i.cx = load i64, ptr %i.cw, align 8, !noalias !10387, !noundef !4
  store i64 2, ptr %i.s, align 8, !noalias !10387
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.cv, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !10387
  %.sroa.523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %i.cx, ptr %.sroa.523.0..sroa_idx.i, align 8, !noalias !10387
  %i.cy = call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger(), !noalias !10387 ; 2 uses
  %i.cz = extractvalue { ptr, ptr } %i.cy, 0      ; 2 uses
  %i.da = extractvalue { ptr, ptr } %i.cy, 1      ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !invariant.load !4, !noalias !10387, !nonnull !4
  %i.dd = call noundef zeroext i1 %i.dc(ptr noundef %i.cz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s) #49, !noalias !10387, !inline_history !10394
  br i1 %i.dd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !10387
  %i.de = load ptr, ptr @_RNvNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s9_010___CALLSITE, align 8, !noalias !10387, !nonnull !4, !align !18, !noundef !4
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !10387
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !10387
  store ptr @205, ptr %i.p, align 8, !noalias !10387
  %i.dg = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr inttoptr (i64 207 to ptr), ptr %i.dg, align 8, !noalias !10387
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !10387
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  store ptr %.sroa.5.0.copyload, ptr %i.o, align 8, !noalias !10387
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !10387
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload) ]
  store ptr %.sroa.9.0.copyload, ptr %i.n, align 8, !noalias !10387
  store ptr %i.p, ptr %i.q, align 8, !noalias !10387
  %i.dh = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @196, ptr %i.dh, align 8, !noalias !10387
  %i.di = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.o, ptr %i.di, align 8, !noalias !10387
  %i.dj = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr @203, ptr %i.dj, align 8, !noalias !10387
  %i.dk = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %i.aa, ptr %i.dk, align 8, !noalias !10387
  %i.dl = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store ptr @206, ptr %i.dl, align 8, !noalias !10387
  %i.dm = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store ptr %.sroa.4.0.copyload, ptr %i.dm, align 8, !noalias !10387
  %i.dn = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  store ptr @206, ptr %i.dn, align 8, !noalias !10387
  %i.do = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  store ptr %i.n, ptr %i.do, align 8, !noalias !10387
  %i.dp = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  store ptr @207, ptr %i.dp, align 8, !noalias !10387
  store i64 1, ptr %i.r, align 8, !noalias !10387
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.q, ptr %.sroa.425.0..sroa_idx.i, align 8, !noalias !10387
  %.sroa.526.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 5, ptr %.sroa.526.0..sroa_idx.i, align 8, !noalias !10387
  %i.dq = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.df, ptr %i.dq, align 8, !noalias !10387
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ct, ptr noundef nonnull %i.cz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.da, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.r), !noalias !10387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !10387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !10387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !10387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !10387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !10387
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %_RNCNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s9_00Bd_.exit.i, %bb.f
  %i.dr = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !10387
  %i.ds = icmp ult i64 %i.dr, 4
  br i1 %i.ds, label %bb.t, label %bb.aa

bb.t:                                             ; preds = %bb.s
  %i.dt = load atomic i8, ptr getelementptr inbounds (i8, ptr @_RNvNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s9_0s_10___CALLSITE, i64 16) monotonic, align 8, !noalias !10387 ; 3 uses
  switch i8 %i.dt, label %bb.u [
    i8 0, label %bb.aa
    i8 1, label %bb.v
    i8 2, label %bb.v
  ], !prof !10371

bb.u:                                             ; preds = %bb.t
  %i.du = call noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s9_0s_10___CALLSITE) #45, !noalias !10387 ; 2 uses
  %i.dv = icmp eq i8 %i.du, 0
  br i1 %i.dv, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.t
  %.sroa.015.0.i = phi i8 [ %i.du, %bb.u ], [ %i.dt, %bb.t ], [ %i.dt, %bb.t ]
  %i.dw = load ptr, ptr @_RNvNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s9_0s_10___CALLSITE, align 8, !noalias !10387, !nonnull !4, !align !18, !noundef !4
  %i.dx = call noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dw, i8 noundef %.sroa.015.0.i), !noalias !10387
  br i1 %i.dx, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !10387
  %i.dy = load ptr, ptr @_RNvNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s9_0s_10___CALLSITE, align 8, !noalias !10387, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !10387
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !10387
  store ptr @208, ptr %i.k, align 8, !noalias !10387
  %i.ea = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr inttoptr (i64 163 to ptr), ptr %i.ea, align 8, !noalias !10387
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !10387
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  store ptr %.sroa.5.0.copyload, ptr %i.j, align 8, !noalias !10387
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !10387
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload) ]
  store ptr %.sroa.9.0.copyload, ptr %i.i, align 8, !noalias !10387
  store ptr %i.k, ptr %i.l, align 8, !noalias !10387
  %i.eb = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @196, ptr %i.eb, align 8, !noalias !10387
  %i.ec = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.j, ptr %i.ec, align 8, !noalias !10387
  %i.ed = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @203, ptr %i.ed, align 8, !noalias !10387
  %i.ee = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.i, ptr %i.ee, align 8, !noalias !10387
  %i.ef = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr @207, ptr %i.ef, align 8, !noalias !10387
  %i.eg = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store ptr %i.y, ptr %i.eg, align 8, !noalias !10387
  %i.eh = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store ptr @206, ptr %i.eh, align 8, !noalias !10387
  store i64 1, ptr %i.m, align 8, !noalias !10387
  %.sroa.017.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.l, ptr %.sroa.017.sroa.4.0..sroa_idx.i, align 8, !noalias !10387
  %.sroa.017.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 4, ptr %.sroa.017.sroa.5.0..sroa_idx.i, align 8, !noalias !10387
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.dz, ptr %.sroa.418.0..sroa_idx.i, align 8, !noalias !10387
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10387
  call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.m), !noalias !10387
  %i.ei = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !10395
  %i.ej = icmp eq i8 %i.ei, 0
  br i1 %i.ej, label %bb.x, label %_RNCNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s9_0s_0Bd_.exit.i

bb.x:                                             ; preds = %bb.w
  %i.ek = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !10395 ; 2 uses
  %i.el = icmp ult i64 %i.ek, 6
  call void @llvm.assume(i1 %i.el)
  %i.em = icmp samesign ugt i64 %i.ek, 1
  br i1 %i.em, label %bb.y, label %_RNCNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s9_0s_0Bd_.exit.i

bb.y:                                             ; preds = %bb.x
  %i.en = load ptr, ptr @_RNvNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s9_0s_10___CALLSITE, align 8, !noalias !10395, !nonnull !4, !align !18, !noundef !4 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  %i.ep = load ptr, ptr %i.eo, align 8, !noalias !10387, !nonnull !4, !noundef !4
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 40
  %i.er = load i64, ptr %i.eq, align 8, !noalias !10387, !noundef !4
  store i64 2, ptr %i.a, align 8, !noalias !10395
  %.sroa.3.0..sroa_idx.i41.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ep, ptr %.sroa.3.0..sroa_idx.i41.i, align 8, !noalias !10395
  %.sroa.5.0..sroa_idx.i42.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.er, ptr %.sroa.5.0..sroa_idx.i42.i, align 8, !noalias !10395
  %i.es = call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger(), !noalias !10387 ; 2 uses
  %i.et = extractvalue { ptr, ptr } %i.es, 0      ; 2 uses
  %i.eu = extractvalue { ptr, ptr } %i.es, 1      ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8, !invariant.load !4, !noalias !10387, !nonnull !4
  %i.ex = call noundef zeroext i1 %i.ew(ptr noundef %i.et, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #49, !noalias !10387, !inline_history !10398
  br i1 %i.ex, label %bb.z, label %_RNCNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s9_0s_0Bd_.exit.i

bb.z:                                             ; preds = %bb.y
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.en, ptr noundef nonnull %i.et, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.eu, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.m), !noalias !10387
  br label %_RNCNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s9_0s_0Bd_.exit.i

_RNCNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s9_0s_0Bd_.exit.i: ; preds = %bb.z, %bb.y, %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !10387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !10387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !10387
  br label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s9_0Bb_.exit

bb.aa:                                            ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  %i.ey = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !10387
  %i.ez = icmp eq i8 %i.ey, 0
  br i1 %i.ez, label %bb.ab, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s9_0Bb_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.fa = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !10387 ; 2 uses
  %i.fb = icmp ult i64 %i.fa, 6
  call void @llvm.assume(i1 %i.fb)
  %i.fc = icmp samesign ugt i64 %i.fa, 1
  br i1 %i.fc, label %bb.ac, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s9_0Bb_.exit

bb.ac:                                            ; preds = %bb.ab
  %i.fd = load ptr, ptr @_RNvNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s9_0s_10___CALLSITE, align 8, !noalias !10387, !nonnull !4, !align !18, !noundef !4 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  %i.ff = load ptr, ptr %i.fe, align 8, !noalias !10387, !nonnull !4, !noundef !4
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 40
  %i.fh = load i64, ptr %i.fg, align 8, !noalias !10387, !noundef !4
  store i64 2, ptr %i.h, align 8, !noalias !10387
  %.sroa.332.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.ff, ptr %.sroa.332.0..sroa_idx.i, align 8, !noalias !10387
  %.sroa.533.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.fh, ptr %.sroa.533.0..sroa_idx.i, align 8, !noalias !10387
  %i.fi = call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger(), !noalias !10387 ; 2 uses
  %i.fj = extractvalue { ptr, ptr } %i.fi, 0      ; 2 uses
  %i.fk = extractvalue { ptr, ptr } %i.fi, 1      ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8, !invariant.load !4, !noalias !10387, !nonnull !4
  %i.fn = call noundef zeroext i1 %i.fm(ptr noundef %i.fj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h) #49, !noalias !10387, !inline_history !10394
  br i1 %i.fn, label %bb.ad, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s9_0Bb_.exit

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10387
  %i.fo = load ptr, ptr @_RNvNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s9_0s_10___CALLSITE, align 8, !noalias !10387, !nonnull !4, !align !18, !noundef !4
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10387
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10387
  store ptr @208, ptr %i.e, align 8, !noalias !10387
  %i.fq = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 163 to ptr), ptr %i.fq, align 8, !noalias !10387
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10387
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  store ptr %.sroa.5.0.copyload, ptr %i.d, align 8, !noalias !10387
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10387
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload) ]
  store ptr %.sroa.9.0.copyload, ptr %i.c, align 8, !noalias !10387
  store ptr %i.e, ptr %i.f, align 8, !noalias !10387
  %i.fr = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @196, ptr %i.fr, align 8, !noalias !10387
  %i.fs = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.d, ptr %i.fs, align 8, !noalias !10387
  %i.ft = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @203, ptr %i.ft, align 8, !noalias !10387
  %i.fu = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.c, ptr %i.fu, align 8, !noalias !10387
  %i.fv = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr @207, ptr %i.fv, align 8, !noalias !10387
  %i.fw = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr %i.y, ptr %i.fw, align 8, !noalias !10387
  %i.fx = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store ptr @206, ptr %i.fx, align 8, !noalias !10387
  store i64 1, ptr %i.g, align 8, !noalias !10387
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.f, ptr %.sroa.435.0..sroa_idx.i, align 8, !noalias !10387
  %.sroa.536.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 4, ptr %.sroa.536.0..sroa_idx.i, align 8, !noalias !10387
  %i.fy = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.fp, ptr %i.fy, align 8, !noalias !10387
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.fd, ptr noundef nonnull %i.fj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fk, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g), !noalias !10387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10387
  br label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s9_0Bb_.exit

_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s9_0Bb_.exit: ; preds = %_RNCNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s9_0s_0Bd_.exit.i, %bb.aa, %bb.ab, %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !10387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.ae

bb.ae:                                            ; preds = %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s9_0Bb_.exit, %bb.e
  %.sroa.0.0 = phi i64 [ %i.ap, %bb.e ], [ %i.be, %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s9_0Bb_.exit ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize24serialize_metric_detailsNtNtNtCseqDwI8vvjGQ_10serde_json5value3ser10SerializerEB6_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10399
  store i64 0, ptr %i.d, align 8, !noalias !10399
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !10399
end_hunk_0
begin_hunk_1_@_RNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints21create_checkpoint_for00B9_:bb.a
  br i1 %i.wu, label %.body259, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.wv = getelementptr inbounds nuw i8, ptr %.val129, i64 16
  %i.ww = load i64, ptr %i.wv, align 8, !range !3, !invariant.load !4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val128, i64 noundef range(i64 1, 0) %i.wt, i64 noundef range(i64 1, 536870913) %i.ww) #40
  br label %.body259

.body259:                                         ; preds = %bb.kd, %bb.kc, %bb.ku, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit170
  %.sroa.21.31 = phi ptr [ %.sroa.21.6, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit170 ], [ %.sroa.21.6, %bb.ku ], [ %.sroa.21.3, %bb.kc ], [ %.sroa.21.3, %bb.kd ]
  %.sroa.0335.31 = phi ptr [ %.sroa.0335.6, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit170 ], [ %.sroa.0335.6, %bb.ku ], [ %.sroa.0335.3, %bb.kc ], [ %.sroa.0335.3, %bb.kd ]
  %.pn92 = phi { ptr, i32 } [ %.pn90, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit170 ], [ %.pn90, %bb.ku ], [ %i.wr, %bb.kc ], [ %i.wr, %bb.kd ]
  %i.wx = getelementptr inbounds nuw i8, ptr %1, i64 1003
  store i8 0, ptr %i.wx, align 1
  %i.wy = getelementptr inbounds nuw i8, ptr %1, i64 184
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.wy) #46
          to label %bb.dr unwind label %bb.bw

bb.ke:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit
  %i.wz = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.wz)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i262 unwind label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.xa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.wz)
          to label %.body263 unwind label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.xb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i262: ; preds = %bb.ke
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.wz)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.kh

bb.kh:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i262
  %i.xc = landingpad { ptr, i32 }
          cleanup
  br label %.body263

bb.ki:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit
  %i.xd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16847)
  call void @llvm.experimental.noalias.scope.decl(metadata !16850)
  call void @llvm.experimental.noalias.scope.decl(metadata !16853)
  %i.xe = load ptr, ptr %i.xd, align 8, !alias.scope !16856, !nonnull !4, !noundef !4
  %i.xf = atomicrmw sub ptr %i.xe, i64 1 release, align 8, !noalias !16856
  %i.xg = icmp eq i64 %i.xf, 1
  br i1 %i.xg, label %bb.kj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel10checkpoint16CheckpointWriterECs14kWLkQVSKO_14deltalake_core.exit

bb.kj:                                            ; preds = %bb.ki
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.xd) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel10checkpoint16CheckpointWriterECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  %i.xh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel10checkpoint16CheckpointWriterECs14kWLkQVSKO_14deltalake_core.exit271

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.kl, %bb.km, %bb.bv
  store i8 0, ptr %i.fz, align 2
  br label %bb.ju

bb.kl:                                            ; preds = %bb.bv
  call void @llvm.experimental.noalias.scope.decl(metadata !16857)
  call void @llvm.experimental.noalias.scope.decl(metadata !16860)
  %i.xi = load ptr, ptr %1, align 8, !alias.scope !16863, !nonnull !4, !noundef !4
  %i.xj = atomicrmw sub ptr %i.xi, i64 1 release, align 8, !noalias !16863
  %i.xk = icmp eq i64 %i.xj, 1
  br i1 %i.xk, label %bb.km, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.km:                                            ; preds = %bb.kl
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %1) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.xl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit274

bb.ko:                                            ; preds = %bb.ks, %bb.kr, %bb.kq, %bb.gv
  store i8 0, ptr %i.pv, align 8
  %i.xm = getelementptr inbounds nuw i8, ptr %1, i64 1007
  store i8 0, ptr %i.xm, align 1
  %i.xn = getelementptr inbounds nuw i8, ptr %1, i64 784 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16864)
  call void @llvm.experimental.noalias.scope.decl(metadata !16867)
  %i.xo = load ptr, ptr %i.xn, align 8, !alias.scope !16870, !nonnull !4, !noundef !4
  %i.xp = atomicrmw sub ptr %i.xo, i64 1 release, align 8, !noalias !16870
  %i.xq = icmp eq i64 %i.xp, 1
  br i1 %i.xq, label %bb.kp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit269

bb.kp:                                            ; preds = %bb.ko
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.xn) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit269 unwind label %bb.bw

bb.kq:                                            ; preds = %bb.gv
  %i.xr = getelementptr inbounds nuw i8, ptr %1, i64 792 ; 2 uses
  %i.xs = load i64, ptr %i.xr, align 8, !range !17, !noundef !4
  %.not82 = icmp eq i64 %i.xs, -9223372036854775808
  br i1 %.not82, label %bb.ko, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.xt = getelementptr inbounds nuw i8, ptr %1, i64 1007
  %i.xu = load i8, ptr %i.xt, align 1, !range !178, !noundef !4
  %i.xv = trunc nuw i8 %i.xu to i1
  br i1 %i.xv, label %bb.ks, label %bb.ko

bb.ks:                                            ; preds = %bb.kr
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.xr) #46
          to label %bb.ko unwind label %bb.bw

bb.kt:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit269
  %i.xw = getelementptr inbounds nuw i8, ptr %1, i64 264
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4tdlwR1I4n2_7parquet5arrow12async_writer16AsyncArrowWriterNtNtBJ_5store19ParquetObjectWriterEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(520) %i.xw) #46
          to label %bb.dl unwind label %bb.bw

bb.ku:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit170
  %i.xx = getelementptr inbounds nuw i8, ptr %1, i64 224
  %.val126 = load ptr, ptr %i.xx, align 8
  %i.xy = getelementptr i8, ptr %1, i64 232
  %.val127 = load ptr, ptr %i.xy, align 8, !nonnull !4, !align !18, !noundef !4
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorECs14kWLkQVSKO_14deltalake_core(ptr %.val126, ptr nonnull %.val127) #46
          to label %.body259 unwind label %bb.bw

bb.kv:                                            ; preds = %bb.dr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.21.7) ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorECs14kWLkQVSKO_14deltalake_core(ptr %.sroa.0335.7, ptr nonnull %.sroa.21.7) #46
          to label %bb.bp unwind label %bb.bw

bb.kw:                                            ; preds = %.body145
  %i.xz = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.xz) #46
          to label %.body263 unwind label %bb.bw

bb.kx:                                            ; preds = %.body263
  %i.ya = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16871)
  call void @llvm.experimental.noalias.scope.decl(metadata !16874)
  call void @llvm.experimental.noalias.scope.decl(metadata !16877)
  %i.yb = load ptr, ptr %i.ya, align 8, !alias.scope !16880, !nonnull !4, !noundef !4
  %i.yc = atomicrmw sub ptr %i.yb, i64 1 release, align 8, !noalias !16880
  %i.yd = icmp eq i64 %i.yc, 1
  br i1 %i.yd, label %bb.ky, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel10checkpoint16CheckpointWriterECs14kWLkQVSKO_14deltalake_core.exit271

bb.ky:                                            ; preds = %bb.kx
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ya) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel10checkpoint16CheckpointWriterECs14kWLkQVSKO_14deltalake_core.exit271 unwind label %bb.bw

bb.kz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel10checkpoint16CheckpointWriterECs14kWLkQVSKO_14deltalake_core.exit271
  call void @llvm.experimental.noalias.scope.decl(metadata !16881)
  call void @llvm.experimental.noalias.scope.decl(metadata !16884)
  %i.ye = load ptr, ptr %i.at, align 8, !alias.scope !16887, !nonnull !4, !noundef !4
  %i.yf = atomicrmw sub ptr %i.ye, i64 1 release, align 8, !noalias !16887
  %i.yg = icmp eq i64 %i.yf, 1
  br i1 %i.yg, label %bb.la, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit

bb.la:                                            ; preds = %bb.kz
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.at) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.bw

bb.lb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !16888)
  call void @llvm.experimental.noalias.scope.decl(metadata !16891)
  %i.yh = load ptr, ptr %1, align 8, !alias.scope !16894, !nonnull !4, !noundef !4
  %i.yi = atomicrmw sub ptr %i.yh, i64 1 release, align 8, !noalias !16894
  %i.yj = icmp eq i64 %i.yi, 1
  br i1 %i.yj, label %bb.lc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit274

bb.lc:                                            ; preds = %bb.lb
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %1) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit274 unwind label %bb.bw

bb.ld:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel6EngineEL_EECs14kWLkQVSKO_14deltalake_core.exit274
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ax) #46
          to label %bb.t unwind label %bb.bw
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0B9_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 13 uses
  %i.d = alloca [72 x i8], align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.i = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints16CHECKPOINT_REGEX, i64 32) acquire, align 8
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b, !prof !240

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints16CHECKPOINT_REGEX, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints16CHECKPOINT_REGEX, i64 32), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0ECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  call fastcc void @_RNvMs4_NtNtCsonPGffhQyS_5regex5regex6stringNtB5_5Regex11captures_at(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @_RNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints16CHECKPOINT_REGEX, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.h) #49
  %i.k = load i64, ptr %i.d, align 8, !range !1069, !noundef !4
  %.not = icmp eq i64 %i.k, 2
  br i1 %.not, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Bb_.exit.sink.split, label %bb.c

bb.c:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0ECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !16895)
  call void @llvm.experimental.noalias.scope.decl(metadata !16898)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.m = load i32, ptr %i.l, align 8, !range !11156, !alias.scope !16901, !noalias !16902, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.o = load i32, ptr %i.n, align 4, !alias.scope !16901, !noalias !16902
  %i.p = trunc nuw i32 %i.m to i1
  br i1 %i.p, label %bb.d, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_00Bb_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !16901, !noalias !16902, !nonnull !4, !noundef !4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load i64, ptr %i.s, align 8, !noalias !16905, !noundef !4 ; 3 uses
  %i.u = icmp ult i64 %i.t, 1152921504606846976
  call void @llvm.assume(i1 %i.u)
  %i.v = icmp eq i64 %i.t, 1
  br i1 %i.v, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = zext i32 %i.o to i64                     ; 2 uses
  %i.x = icmp samesign ugt i64 %i.t, %i.w
  br i1 %i.x, label %_RNvMs5_NtNtCslw7hBPHc6qc_14regex_automata4util8capturesNtB5_9GroupInfo4slot.exit.i.i, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_00Bb_.exit.thread

_RNvMs5_NtNtCslw7hBPHc6qc_14regex_automata4util8capturesNtB5_9GroupInfo4slot.exit.i.i: ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !noalias !16905, !nonnull !4, !noundef !4
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.w ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !noalias !16905, !noundef !4
  %i.ad = zext i32 %i.ac to i64
  %i.ae = load i32, ptr %i.aa, align 4, !noalias !16905, !noundef !4
  %i.af = zext i32 %i.ae to i64                   ; 3 uses
  %i.ag = sub nsw i64 %i.ad, %i.af
  %i.ah = icmp ugt i64 %i.ag, 1
  br i1 %i.ah, label %bb.g, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_00Bb_.exit.thread

bb.f:                                             ; preds = %bb.g, %bb.d
  %.sroa.038.0.i.i = phi i64 [ %i.af, %bb.g ], [ 2, %bb.d ] ; 2 uses
  %.sroa.040.0.i.i = phi i64 [ %i.an, %bb.g ], [ 3, %bb.d ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !16901, !noalias !16902, !nonnull !4, !noundef !4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !16901, !noalias !16902, !noundef !4 ; 2 uses
  %i.am = icmp ult i64 %.sroa.038.0.i.i, %i.al
  br i1 %i.am, label %bb.h, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_00Bb_.exit.thread

bb.g:                                             ; preds = %_RNvMs5_NtNtCslw7hBPHc6qc_14regex_automata4util8capturesNtB5_9GroupInfo4slot.exit.i.i
  %i.an = add nuw nsw i64 %i.af, 1
  br label %bb.f

bb.h:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.sroa.038.0.i.i
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !16905, !noundef !4 ; 5 uses
  %.not.i.i = icmp ne i64 %i.ap, 0
  %i.aq = icmp ult i64 %.sroa.040.0.i.i, %i.al
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.aq, i1 false
  br i1 %or.cond.i.i, label %bb.i, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_00Bb_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.sroa.040.0.i.i
  %i.as = load i64, ptr %i.ar, align 8, !noalias !16905, !noundef !4 ; 3 uses
  %.not44.i.i = icmp eq i64 %i.as, 0
  br i1 %.not44.i.i, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_00Bb_.exit.thread, label %bb.j

_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_00Bb_.exit.thread: ; preds = %bb.i, %bb.h, %bb.f, %_RNvMs5_NtNtCslw7hBPHc6qc_14regex_automata4util8capturesNtB5_9GroupInfo4slot.exit.i.i, %bb.e, %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata4util8captures8CapturesECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.at), !noalias !16906
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Bb_.exit.sink.split

bb.j:                                             ; preds = %bb.i
  %i.au = add i64 %i.ap, -1                       ; 7 uses
  %i.av = add i64 %i.as, -1                       ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !16895, !noalias !16906, !noundef !4 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !16895, !noalias !16906, !nonnull !4, !noundef !4 ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata4util8captures8CapturesECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.ba), !noalias !16906
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not.i.i2 = icmp ugt i64 %i.au, %i.av
  br i1 %.not.i.i2, label %bb.ag, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = icmp eq i64 %i.au, 0
  br i1 %i.bb, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not5.i.i = icmp ult i64 %i.au, %i.ax
  br i1 %.not5.i.i, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.o, %bb.n, %bb.k
  %i.bc = icmp eq i64 %i.av, 0
  br i1 %i.bc, label %bb.s, label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.bd = icmp eq i64 %i.au, %i.ax
  br i1 %i.bd, label %bb.m, label %bb.ag

bb.o:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.au
  %i.bf = load i8, ptr %i.be, align 1, !alias.scope !16907, !noalias !16910, !noundef !4
  %i.bg = icmp sgt i8 %i.bf, -65
  br i1 %i.bg, label %bb.m, label %bb.ag

bb.p:                                             ; preds = %bb.m
  %.not6.i.i = icmp ult i64 %i.av, %i.ax
  br i1 %.not6.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = icmp eq i64 %i.av, %i.ax
  br i1 %i.bh, label %bb.s, label %bb.ag

bb.r:                                             ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.av
  %i.bj = load i8, ptr %i.bi, align 1, !alias.scope !16907, !noalias !16910, !noundef !4
  %i.bk = icmp sgt i8 %i.bj, -65
  br i1 %i.bk, label %bb.s, label %bb.ag

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.m
  %i.bl = sub i64 %i.as, %i.ap                    ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.au ; 3 uses
  switch i64 %i.bl, label %thread-pre-split.i.i [
    i64 0, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Bb_.exit
    i64 1, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  %i.bn = load i8, ptr %i.bm, align 1, !alias.scope !16913, !noalias !16916, !noundef !4 ; 2 uses
  switch i8 %i.bn, label %bb.u [
    i8 43, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Bb_.exit
    i8 45, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Bb_.exit
  ]

thread-pre-split.i.i:                             ; preds = %bb.s
  %.pr.i.i = load i8, ptr %i.bm, align 1, !alias.scope !16913, !noalias !16916
  br label %bb.u

bb.u:                                             ; preds = %thread-pre-split.i.i, %bb.t
  %i.bo = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.bn, %bb.t ]
  switch i8 %i.bo, label %bb.ab [
    i8 43, label %bb.v
    i8 45, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  %i.bp = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ap
  %i.bq = add nsw i64 %i.bl, -1
  br label %bb.ab

bb.w:                                             ; preds = %bb.u
  %i.br = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ap ; 2 uses
  %i.bs = add nsw i64 %i.bl, -1                   ; 3 uses
  %i.bt = icmp samesign ult i64 %i.bl, 17
  br i1 %i.bt, label %.preheader114.i.i, label %.lr.ph.i.i

.preheader114.i.i:                                ; preds = %bb.w
  %.not103137.i.i = icmp eq i64 %i.bs, 0
  br i1 %.not103137.i.i, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Bb_.exit, label %.lr.ph141.i.i

.lr.ph.i.i:                                       ; preds = %bb.w, %bb.z
  %.sroa.0.1136.i.i = phi ptr [ %i.bu, %bb.z ], [ %i.br, %bb.w ] ; 2 uses
  %.sroa.26.1135.i.i = phi i64 [ %i.bv, %bb.z ], [ %i.bs, %bb.w ]
  %.sroa.084.0134.i.i = phi i64 [ %i.cg, %bb.z ], [ 0, %bb.w ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i.i, i64 1
  %i.bv = add nsw i64 %.sroa.26.1135.i.i, -1      ; 2 uses
  %i.bw = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i.i, i64 10) ; 2 uses
  %i.bx = extractvalue { i64, i1 } %i.bw, 0
  %i.by = extractvalue { i64, i1 } %i.bw, 1
  br i1 %i.by, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Bb_.exit, label %bb.x, !prof !52

bb.x:                                             ; preds = %.lr.ph.i.i
  %i.bz = load i8, ptr %.sroa.0.1136.i.i, align 1, !alias.scope !16913, !noalias !16916, !noundef !4
  %i.ca = zext i8 %i.bz to i32
  %i.cb = add nsw i32 %i.ca, -48                  ; 2 uses
  %i.cc = icmp ult i32 %i.cb, 10
  br i1 %i.cc, label %bb.y, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Bb_.exit

bb.y:                                             ; preds = %bb.x
  %i.cd = zext nneg i32 %i.cb to i64
  %i.ce = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.bx, i64 %i.cd) ; 2 uses
  %i.cf = extractvalue { i64, i1 } %i.ce, 1
  br i1 %i.cf, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s3_0s_0Bb_.exit, label %bb.z, !prof !52

bb.z:                                             ; preds = %bb.y
end_hunk_1
begin_hunk_2_@_RNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtB7_16DeltaScanBuilder5build0Bb_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.3.0..sroa_idx11, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.3, i64 144, i1 false)
  %i.sg = load i64, ptr %i.rl, align 8, !noundef !4 ; 2 uses
  %.not95 = icmp sgt i64 %i.sg, %i.sb
  br i1 %.not95, label %bb.hj, label %bb.hk

bb.hi:                                            ; preds = %bb.hg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  invoke fastcc void @_RNvXsC_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_3AddNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(272) %i.bx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.cb) #49
          to label %_RNvXNtCs6Po7BT7Nknu_5alloc6borrowNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNtB2_7ToOwned8to_ownedBD_.exit396 unwind label %bb.pl

bb.hj:                                            ; preds = %bb.hh
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8protocol5StatsEBK_(ptr noalias noundef align 8 dereferenceable(152) %i.bz)
          to label %bb.hl unwind label %.loopexit.split-lp

bb.hk:                                            ; preds = %bb.hh
  %i.sh = load i64, ptr %i.rm, align 8, !noundef !4
  %i.si = add i64 %i.sh, %i.sg
  store i64 %i.si, ptr %i.rl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  invoke fastcc void @_RNvXsC_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actionsNtB5_3AddNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(272) %i.by, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.cb) #49
          to label %_RNvXNtCs6Po7BT7Nknu_5alloc6borrowNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNtB2_7ToOwned8to_ownedBD_.exit398 unwind label %bb.pd

.body516:                                         ; preds = %.loopexit1061, %.loopexit.split-lp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit2.i, %.body512
  %.pn98 = phi { ptr, i32 } [ %.pn96, %.body512 ], [ %.pn.i514, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit2.i ], [ %lpad.loopexit, %.loopexit1061 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  br label %bb.pq

.loopexit1061:                                    ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit3.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body516

.loopexit.split-lp:                               ; preds = %bb.hj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body516

bb.hl:                                            ; preds = %bb.hj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEBO_(ptr noalias noundef align 8 dereferenceable(272) %i.cb)
          to label %bb.hn unwind label %.loopexit.split-lp1063

bb.hm:                                            ; preds = %.loopexit1062, %.loopexit.split-lp1063, %bb.pq
  %.pn103 = phi { ptr, i32 } [ %.pn100.pn, %bb.pq ], [ %lpad.loopexit1064, %.loopexit1062 ], [ %lpad.loopexit.split-lp1065, %.loopexit.split-lp1063 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  br label %.body390

.loopexit1062:                                    ; preds = %bb.ha
  %lpad.loopexit1064 = landingpad { ptr, i32 }
          cleanup
  br label %bb.hm

.loopexit.split-lp1063:                           ; preds = %bb.hl, %bb.pr
  %lpad.loopexit.split-lp1065 = landingpad { ptr, i32 }
          cleanup
  br label %bb.hm

bb.hn:                                            ; preds = %bb.hl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.gy, %.thread902, %bb.hn
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10734)
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.cc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEINtNtBL_6cloned6ClonedINtNtNtB4_5slice4iter4IterbEEEEB2a_.exit400 unwind label %bb.ho

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEINtNtBL_6cloned6ClonedINtNtNtB4_5slice4iter4IterbEEEEB2a_.exit: ; preds = %.body390, %bb.ho
  %.pn106 = phi { ptr, i32 } [ %i.sj, %bb.ho ], [ %.pn103.pn, %.body390 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  br label %bb.ht

bb.ho:                                            ; preds = %bb.ps, %.loopexit
  %i.sj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEINtNtBL_6cloned6ClonedINtNtNtB4_5slice4iter4IterbEEEEB2a_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEINtNtBL_6cloned6ClonedINtNtNtB4_5slice4iter4IterbEEEEB2a_.exit400: ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  %i.sk = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.sl = load i64, ptr %i.sk, align 16, !range !58, !noundef !4
  %i.sm = trunc nuw i64 %i.sl to i1
  br i1 %i.sm, label %bb.hp, label %bb.hu

bb.hp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEINtNtBL_6cloned6ClonedINtNtNtB4_5slice4iter4IterbEEEEB2a_.exit400
  %i.sn = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.so = load i64, ptr %i.sn, align 8, !noundef !4
  %i.sp = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.sq = load i64, ptr %i.sp, align 8, !noundef !4
  %i.sr = icmp slt i64 %i.sq, %i.so
  br i1 %i.sr, label %bb.hq, label %bb.hu

bb.hq:                                            ; preds = %bb.hp
  %i.ss = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.st = getelementptr inbounds nuw i8, ptr %1, i64 585
  store i8 0, ptr %i.st, align 1
  %i.su = getelementptr inbounds nuw i8, ptr %1, i64 640
  %.sroa.0741.0.copyload = load i64, ptr %i.su, align 16
  %.sroa.5742.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 648
  %.sroa.5742.0.copyload = load ptr, ptr %.sroa.5742.0..sroa_idx, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.6743.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 656
  %.sroa.6743.0.copyload = load i64, ptr %.sroa.6743.0..sroa_idx, align 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !18147
  %i.sv = icmp ult i64 %.sroa.6743.0.copyload, 33909456017848441
  call void @llvm.assume(i1 %i.sv)
  %i.sw = getelementptr inbounds nuw [272 x i8], ptr %.sroa.5742.0.copyload, i64 %.sroa.6743.0.copyload
  store ptr %.sroa.5742.0.copyload, ptr %i.m, align 8, !alias.scope !18151, !noalias !18154
  %i.sx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %.sroa.0741.0.copyload, ptr %i.sx, align 8, !alias.scope !18151, !noalias !18154
  %i.sy = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.sroa.5742.0.copyload, ptr %i.sy, align 8, !alias.scope !18151, !noalias !18154
  %i.sz = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.sw, ptr %i.sz, align 8, !alias.scope !18151, !noalias !18154
  invoke void @_RNvXs0_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB7_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendB12_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ss, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.m)
          to label %bb.hs unwind label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.ta = landingpad { ptr, i32 }
          cleanup
  br label %bb.ht

bb.hs:                                            ; preds = %bb.hq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !18147
  br label %bb.hu

bb.ht:                                            ; preds = %bb.gi, %bb.gp, %bb.em, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEINtNtBL_6cloned6ClonedINtNtNtB4_5slice4iter4IterbEEEEB2a_.exit, %bb.hr
  %.pn109.pn = phi { ptr, i32 } [ %i.ta, %bb.hr ], [ %.pn106, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEINtNtBL_6cloned6ClonedINtNtNtB4_5slice4iter4IterbEEEEB2a_.exit ], [ %i.qx, %bb.gp ], [ %i.qr, %bb.gi ], [ %i.nq, %bb.em ]
  %i.tb = getelementptr inbounds nuw i8, ptr %1, i64 672
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEB1l_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.tb) #46
          to label %.body525 unwind label %bb.z

bb.hu:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEINtNtBL_6cloned6ClonedINtNtNtB4_5slice4iter4IterbEEEEB2a_.exit400, %bb.hs, %bb.hp
  %i.tc = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.td = getelementptr i8, ptr %1, i64 688
  %.val277 = load i64, ptr %i.td, align 16, !noundef !4 ; 4 uses
  %i.te = icmp ult i64 %.val277, 33909456017848441
  call void @llvm.assume(i1 %i.te)
  %i.tf = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.tg = load i64, ptr %i.tf, align 16, !noundef !4
  %i.th = sub i64 %i.tg, %.val277                 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 16 dereferenceable(24) %i.tc, i64 24, i1 false)
  %i.ti = getelementptr inbounds nuw i8, ptr %1, i64 590 ; 2 uses
  store i8 0, ptr %i.ti, align 2
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ch, i64 40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tj, ptr noundef nonnull align 8 dereferenceable(24) %i.ra, i64 24, i1 false)
  %i.tk = getelementptr inbounds nuw i8, ptr %i.ch, i64 24 ; 2 uses
  store i64 %.val277, ptr %i.tk, align 8
  %i.tl = getelementptr inbounds nuw i8, ptr %i.ch, i64 32 ; 2 uses
  store i64 %i.th, ptr %i.tl, align 8
  %i.tm = getelementptr inbounds nuw i8, ptr %1, i64 585 ; 2 uses
  %i.tn = load i8, ptr %i.tm, align 1, !range !178, !noundef !4
  %i.to = trunc nuw i8 %i.tn to i1
  br i1 %i.to, label %bb.hv, label %bb.es

bb.hv:                                            ; preds = %bb.hu
  %i.tp = getelementptr inbounds nuw i8, ptr %1, i64 640 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.tp)
          to label %bb.hx unwind label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.tq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBU_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.tp)
          to label %.body403 unwind label %bb.hy

bb.hx:                                            ; preds = %bb.hv
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBU_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.tp)
          to label %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEB1l_.exit_crit_edge unwind label %bb.ei

._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddEEB1l_.exit_crit_edge: ; preds = %bb.hx
  %.pre1141.pre = load i64, ptr %i.tk, align 8
  %.pre1143.pre = load i64, ptr %i.tl, align 8
  br label %bb.es

bb.hy:                                            ; preds = %bb.hw
  %i.tr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.hz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.ts = landingpad { ptr, i32 }
          cleanup
  br label %.body356

.body356:                                         ; preds = %bb.eu, %bb.hz
  %eh.lpad-body357 = phi { ptr, i32 } [ %i.ts, %bb.hz ], [ %i.og, %bb.eu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  br label %bb.pb

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.thread, %bb.es, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.tt = phi i64 [ %.ph, %.thread ], [ %.pre1141, %bb.es ], [ %.pre1141, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %i.tu = phi i64 [ 0, %.thread ], [ %.pre1143, %bb.es ], [ %.pre1143, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEECs14kWLkQVSKO_14deltalake_core.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  call void @llvm.experimental.noalias.scope.decl(metadata !18156)
  call void @llvm.experimental.noalias.scope.decl(metadata !18159)
  %i.tv = invoke noundef i64 @_RNvNtCsjTPIcpFZL1T_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc405 unwind label %bb.ib

.noexc405:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEECs14kWLkQVSKO_14deltalake_core.exit
  %i.tw = load atomic i8, ptr getelementptr inbounds (i8, ptr @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 48) acquire, align 8, !noalias !18162
  %i.tx = icmp eq i8 %i.tw, 2
  br i1 %i.tx, label %bb.ic, label %bb.ia, !prof !240

bb.ia:                                            ; preds = %.noexc405
  invoke void @_RNvMs_NtNtCsjTPIcpFZL1T_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #45
          to label %bb.ic unwind label %bb.ib

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3map7HashMapINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIB1m_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEECs14kWLkQVSKO_14deltalake_core.exit511: ; preds = %.thread910, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit487, %bb.ib
  %.pn207.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ty, %bb.ib ], [ %.pn186.pn.pn.pn.pn.ph, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit487 ], [ %.pn207.pn.pn.pn913, %.thread910 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  br label %bb.pb

bb.ib:                                            ; preds = %bb.nf, %bb.lz, %bb.ia, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEECs14kWLkQVSKO_14deltalake_core.exit
  %i.ty = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3map7HashMapINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIB1m_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEECs14kWLkQVSKO_14deltalake_core.exit511

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit487.thread1188: ; preds = %bb.nh, %bb.mx, %bb.ni
  %.pn198.ph = phi { ptr, i32 } [ %.pn195.pn1033, %bb.ni ], [ %.pn195.pn, %bb.mx ], [ %.pn195.pn1033, %bb.nh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  br label %.thread910

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit487.thread1195: ; preds = %bb.mv, %.thread975
  %.pn186.pn.pn.pn.pn.ph.ph = phi { ptr, i32 } [ %i.yp, %.thread975 ], [ %.pn186.pn.pn.pn950, %bb.mv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  br label %.thread910

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit487.sink.split: ; preds = %.thread956, %.thread965, %.thread970
  %.sroa.015.11.ph.ph = phi i8 [ %.sroa.015.3, %.thread956 ], [ %.sroa.015.3, %.thread965 ], [ %.sroa.015.4988, %.thread970 ]
  %.pn186.pn.pn.pn.pn.ph.ph1220 = phi { ptr, i32 } [ %i.aah, %.thread956 ], [ %.pn173995, %.thread965 ], [ %.pn170990, %.thread970 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8780.sroa.8)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit487

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit487: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit487.sink.split, %.noexc476, %bb.mr
  %.sroa.015.11.ph = phi i8 [ %.sroa.015.3, %.noexc476 ], [ %.sroa.015.3, %bb.mr ], [ %.sroa.015.11.ph.ph, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit487.sink.split ]
  %.pn186.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn182.pn, %.noexc476 ], [ %.pn182.pn.pn1004, %bb.mr ], [ %.pn186.pn.pn.pn.pn.ph.ph1220, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit487.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  %i.tz = trunc nuw i8 %.sroa.015.11.ph to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  br i1 %i.tz, label %.thread910, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3map7HashMapINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEIB1m_NtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileEEECs14kWLkQVSKO_14deltalake_core.exit511

bb.ic:                                            ; preds = %bb.ia, %.noexc405
  %i.ua = getelementptr inbounds nuw i8, ptr %i.bv, i64 32 ; 6 uses
  store i64 %i.tv, ptr %i.ua, align 8, !alias.scope !18162
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bv, ptr noundef nonnull align 8 dereferenceable(32) @165, i64 32, i1 false)
  %i.ub = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.uc = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.ud = load ptr, ptr %i.uc, align 8, !nonnull !4, !align !18, !noundef !4
  %i.ue = getelementptr i8, ptr %i.ud, i64 24
  %.val276 = load ptr, ptr %i.ue, align 8, !nonnull !4, !noundef !4
  %i.uf = getelementptr inbounds nuw i8, ptr %.val276, i64 88
  %i.ug = load ptr, ptr %i.uf, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 688
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.val298 = load ptr, ptr %i.ui, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %.val299 = load i64, ptr %i.uj, align 8, !noundef !4 ; 2 uses
  %.idx1103 = mul nuw nsw i64 %.val299, 272
  %i.uk = getelementptr inbounds nuw i8, ptr %.val298, i64 %.idx1103
  %i.ul = icmp eq i64 %.val299, 0
  br i1 %i.ul, label %._crit_edge1102, label %.lr.ph1101

.lr.ph1101:                                       ; preds = %bb.ic
  %i.um = getelementptr i8, ptr %i.ug, i64 696
  %i.un = getelementptr i8, ptr %i.ug, i64 704
  %i.uo = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.up = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.uq = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.ur = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.us = getelementptr inbounds nuw i8, ptr %i.bu, i64 136 ; 3 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.bu, i64 152 ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.bu, i64 144
  %i.uv = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.uw = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 3 uses
  %.sroa.7748.0..sroa_idx749 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.9751.0..sroa_idx752 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.uy = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.4.0..sroa_idx.i500 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.5.0..sroa_idx.i501 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.uz = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 3 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.bv, i64 24 ; 2 uses
  br label %bb.nl

._crit_edge1102:                                  ; preds = %bb.oz, %bb.ic
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  %i.vb = getelementptr inbounds nuw i8, ptr %1, i64 552 ; 4 uses
  %.val266 = load ptr, ptr %i.vb, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %.val266, i64 16
  %.val274 = load ptr, ptr %i.vc, align 8, !nonnull !4, !noundef !4
  %i.vd = getelementptr i8, ptr %.val266, i64 24
  %.val275 = load i64, ptr %i.vd, align 8, !noundef !4
  %i.ve = getelementptr inbounds nuw i8, ptr %.val274, i64 16 ; 2 uses
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %i.ve, i64 %.val275
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !18163
  store ptr %i.ve, ptr %i.l, align 8, !alias.scope !18170, !noalias !18174
  %.sroa.5759.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.vf, ptr %.sroa.5759.0..sroa_idx, align 8, !alias.scope !18170, !noalias !18174
  %.sroa.6760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.uh, ptr %.sroa.6760.0..sroa_idx, align 8, !alias.scope !18170, !noalias !18174
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtB2n_6filter6FilterINtNtNtB2r_5slice4iter4IterBU_ENCNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtB4e_16DeltaScanBuilder5build0s3_0EEE9from_iterB4i_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bm, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l)
          to label %bb.ie unwind label %bb.id

bb.id:                                            ; preds = %._crit_edge1102
  %i.vg = landingpad { ptr, i32 }
          cleanup
  br label %bb.if

bb.ie:                                            ; preds = %._crit_edge1102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !18163
  invoke void @_RINvMs5_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB6_6Schema3newINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB12_4sync3ArcNtNtB8_5field5FieldEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.bn, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bm)
          to label %bb.ih unwind label %bb.ig

bb.if:                                            ; preds = %bb.id, %bb.ig
  %.pn136 = phi { ptr, i32 } [ %i.vh, %bb.ig ], [ %i.vg, %bb.id ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  br label %.thread914

bb.ig:                                            ; preds = %bb.ie
  %i.vh = landingpad { ptr, i32 }
          cleanup
  br label %bb.if

bb.ih:                                            ; preds = %bb.ie
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !18175
  store i64 1, ptr %i.k, align 8, !noalias !18175
  %i.vi = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 1, ptr %i.vi, align 8, !noalias !18175
  %i.vj = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.vj, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.bn, i64 64, i1 false)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !18178
  %i.vk = call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 16481) 80, i64 noundef range(i64 8, 17) 8) #40, !noalias !18178 ; 3 uses
  %i.vl = icmp eq ptr %i.vk, null
  br i1 %i.vl, label %bb.ii, label %bb.il, !prof !52

bb.ii:                                            ; preds = %bb.ih
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #48
          to label %.noexc.i409 unwind label %bb.ij, !noalias !18175

.noexc.i409:                                      ; preds = %bb.ii
  unreachable

bb.ij:                                            ; preds = %bb.ii
  %i.vm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.k) #46
          to label %.thread914 unwind label %bb.ik, !noalias !18175

bb.ik:                                            ; preds = %bb.ij
  %i.vn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !18175
  unreachable

.thread914:                                       ; preds = %bb.ij, %bb.if
  %.pn138 = phi { ptr, i32 } [ %.pn136, %bb.if ], [ %i.vm, %bb.ij ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  br label %.thread910

bb.il:                                            ; preds = %bb.ih
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.vk, ptr noundef nonnull align 8 dereferenceable(80) %i.k, i64 80, i1 false), !noalias !18175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !18175
  store ptr %i.vk, ptr %i.bo, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8763)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  %i.vo = getelementptr i8, ptr %i.ug, i64 696
  %.val270 = load ptr, ptr %i.vo, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.vp = getelementptr i8, ptr %i.ug, i64 704
  %.val271 = load i64, ptr %i.vp, align 8, !noundef !4
  %i.vq = getelementptr inbounds nuw [24 x i8], ptr %.val270, i64 %.val271
  store ptr %.val270, ptr %i.bj, align 8, !alias.scope !18181, !noalias !18184
  %i.vr = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.vq, ptr %i.vr, align 8, !alias.scope !18181, !noalias !18184
  %i.vs = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store ptr %i.vb, ptr %i.vs, align 8, !alias.scope !18181, !noalias !18184
  invoke void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENCNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtB2j_16DeltaScanBuilder5build0s4_0ENtNtCsfYVtenZkBsn_12arrow_schema5field5FieldINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB43_5error10ArrowErrorENCINvXso_B4K_IB4I_INtNtB1A_3vec3VecB3Z_EB5u_EINtNtNtB4_6traits7collect12FromIteratorIB4I_B3Z_B5u_EE9from_iterBQ_E0B6d_EB2n_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bk, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bj)
          to label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENCNCNvMs2_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtB24_16DeltaScanBuilder5build0s4_0ENtNtNtBa_6traits8iterator8Iterator7collectINtNtBc_6result6ResultINtNtB1l_3vec3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtB57_5error10ArrowErrorEEB28_.exit unwind label %.thread1028

.thread1028:                                      ; preds = %bb.il
  %i.vt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
end_hunk_2
begin_hunk_3_@_RNCNvXsf_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB7_10PostCommitNtNtNtCsbvkFyIu7lgC_4core6future11into_future10IntoFuture11into_future0Bb_:bb.a
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.adj, ptr noundef nonnull %i.adn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ado, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bm)
          to label %bb.jf unwind label %bb.je, !noalias !26177

bb.je:                                            ; preds = %bb.jd
  %i.aec = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !26173
  br label %bb.jg

bb.jf:                                            ; preds = %bb.jd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !26173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !26173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !26173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !26173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !26173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !26173
  br label %bb.js

bb.jg:                                            ; preds = %bb.je, %bb.jb
  %.pn32.pn.i.i = phi { ptr, i32 } [ %i.aec, %bb.je ], [ %.pn30.i.i, %bb.jb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !26173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !26173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !26173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !26173
  br label %bb.ns

bb.jh:                                            ; preds = %bb.iq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !26173
  %i.aed = load ptr, ptr @_RNvNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s0_10___CALLSITE, align 8, !noalias !26173, !nonnull !4, !align !18, !noundef !4
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aed, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !26173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !26173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !26173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !26173
  %i.aef = getelementptr inbounds nuw i8, ptr %1, i64 776
  %i.aeg = load i64, ptr %i.aef, align 8, !noalias !26173, !noundef !4
  invoke void @_RNvYNtNtNtCshmPyUV8PP35_6chrono6offset3utc3UtcNtB6_8TimeZone20timestamp_millis_optCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([28 x i8]) align 4 captures(none) dereferenceable(28) %i.bp, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef %i.aeg)
          to label %bb.jj unwind label %bb.ji, !noalias !26177

bb.ji:                                            ; preds = %bb.jh
  %i.aeh = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

bb.jj:                                            ; preds = %bb.jh
  invoke void @_RNvMs0_NtCshmPyUV8PP35_6chrono6offsetINtB5_11LocalResultINtNtB7_8datetime8DateTimeNtNtB5_3utc3UtcEE6unwrapCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.bq, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(28) %i.bp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @499)
          to label %bb.jm unwind label %bb.jl, !noalias !26177

bb.jk:                                            ; preds = %bb.jl, %bb.ji
  %.pn37.i.i = phi { ptr, i32 } [ %i.aei, %bb.jl ], [ %i.aeh, %bb.ji ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !26173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !26173
  br label %bb.nt

bb.jl:                                            ; preds = %bb.jj
  %i.aei = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

bb.jm:                                            ; preds = %bb.jj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !26173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !26173
  store ptr %i.bq, ptr %i.bo, align 8, !noalias !26173
  %.sroa.5324.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr @_RNvXsz_NtCshmPyUV8PP35_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset3utc3UtcENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.5324.0..sroa_idx.i.i, align 8, !noalias !26173
  store ptr @500, ptr %i.br, align 8, !noalias !26173
  %i.aej = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr %i.bo, ptr %i.aej, align 8, !noalias !26173
  store ptr %i.br, ptr %i.bs, align 8, !noalias !26173
  %i.aek = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr @196, ptr %i.aek, align 8, !noalias !26173
  store i64 1, ptr %i.bt, align 8, !noalias !26173
  %.sroa.7321.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %i.bs, ptr %.sroa.7321.0..sroa_idx.i.i, align 8, !noalias !26173
  %.sroa.8322.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store i64 1, ptr %.sroa.8322.0..sroa_idx.i.i, align 8, !noalias !26173
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  store ptr %i.aee, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !26173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !26173
  %i.ael = load ptr, ptr @_RNvNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s0_10___CALLSITE, align 8, !noalias !26228, !nonnull !4, !align !18, !noundef !4
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ael, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bt)
          to label %.noexc220.i.i unwind label %bb.jq, !noalias !26177

.noexc220.i.i:                                    ; preds = %bb.jm
  %i.aem = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !26228
  %i.aen = icmp eq i8 %i.aem, 0
  br i1 %i.aen, label %bb.jn, label %bb.jr

bb.jn:                                            ; preds = %.noexc220.i.i
  %i.aeo = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !26228 ; 2 uses
  %i.aep = icmp ult i64 %i.aeo, 6
  call void @llvm.assume(i1 %i.aep)
  %i.aeq = icmp samesign ugt i64 %i.aeo, 3
  br i1 %i.aeq, label %bb.jo, label %bb.jr

bb.jo:                                            ; preds = %bb.jn
  %i.aer = load ptr, ptr @_RNvNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s0_10___CALLSITE, align 8, !noalias !26228, !nonnull !4, !align !18, !noundef !4 ; 3 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aer, i64 32
  %i.aet = load ptr, ptr %i.aes, align 8, !noalias !26177, !nonnull !4, !noundef !4
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aer, i64 40
  %i.aev = load i64, ptr %i.aeu, align 8, !noalias !26177, !noundef !4
  store i64 4, ptr %i.p, align 8, !noalias !26228
  %.sroa.3.0..sroa_idx.i218.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.aet, ptr %.sroa.3.0..sroa_idx.i218.i.i, align 8, !noalias !26228
  %.sroa.5.0..sroa_idx.i219.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.aev, ptr %.sroa.5.0..sroa_idx.i219.i.i, align 8, !noalias !26228
  %i.aew = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc221.i.i unwind label %bb.jq, !noalias !26177 ; 2 uses

.noexc221.i.i:                                    ; preds = %bb.jo
  %i.aex = extractvalue { ptr, ptr } %i.aew, 0    ; 2 uses
  %i.aey = extractvalue { ptr, ptr } %i.aew, 1    ; 2 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 24
  %i.afa = load ptr, ptr %i.aez, align 8, !invariant.load !4, !noalias !26177, !nonnull !4
  %i.afb = invoke noundef zeroext i1 %i.afa(ptr noundef %i.aex, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p) #49
          to label %.noexc222.i.i unwind label %bb.jq, !noalias !26177, !inline_history !26231

.noexc222.i.i:                                    ; preds = %.noexc221.i.i
  br i1 %i.afb, label %bb.jp, label %bb.jr

bb.jp:                                            ; preds = %.noexc222.i.i
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aer, ptr noundef nonnull %i.aex, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aey, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bt)
          to label %bb.jr unwind label %bb.jq, !noalias !26177

bb.jq:                                            ; preds = %bb.jp, %.noexc221.i.i, %bb.jo, %bb.jm
  %i.afc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !26173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !26173
  br label %bb.nt

bb.jr:                                            ; preds = %bb.jp, %.noexc222.i.i, %bb.jn, %.noexc220.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !26173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !26173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !26173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !26173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !26173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !26173
  br label %bb.js

bb.js:                                            ; preds = %bb.jr, %bb.jf, %bb.ix, %bb.is, %bb.ir
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !26173
  %i.afd = getelementptr i8, ptr %1, i64 792      ; 3 uses
  %.val167.i.i = load ptr, ptr %i.afd, align 8, !noalias !26173, !nonnull !4, !noundef !4 ; 2 uses
  %i.afe = getelementptr i8, ptr %1, i64 800      ; 3 uses
  %.val168.i.i = load i64, ptr %i.afe, align 8, !noalias !26173, !noundef !4 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %.val168.i.i, 96
  %i.aff = getelementptr inbounds nuw i8, ptr %.val167.i.i, i64 %.idx.i.i
  %i.afg = getelementptr inbounds nuw i8, ptr %1, i64 776 ; 2 uses
  %.sroa.5334.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  store ptr %i.aff, ptr %.sroa.5334.0..sroa_idx.i.i, align 8, !alias.scope !26232, !noalias !26173
  %.sroa.6335.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 4 uses
  store ptr %i.afg, ptr %.sroa.6335.0..sroa_idx.i.i, align 8, !alias.scope !26232, !noalias !26173
  call void @llvm.experimental.noalias.scope.decl(metadata !26236)
  call void @llvm.experimental.noalias.scope.decl(metadata !26239)
  call void @llvm.experimental.noalias.scope.decl(metadata !26242)
  call void @llvm.experimental.noalias.scope.decl(metadata !26245)
  call void @llvm.experimental.noalias.scope.decl(metadata !26248)
  call void @llvm.experimental.noalias.scope.decl(metadata !26251)
  call void @llvm.experimental.noalias.scope.decl(metadata !26254)
  call void @llvm.experimental.noalias.scope.decl(metadata !26257)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !26260
  store ptr %.sroa.6335.0..sroa_idx.i.i, ptr %i.n, align 8, !noalias !26260
  %i.afh = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.sroa.6335.0..sroa_idx.i.i, ptr %i.afh, align 8, !noalias !26260
  %i.afi = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store ptr %.sroa.6335.0..sroa_idx.i.i, ptr %i.afi, align 8, !noalias !26260
  call void @llvm.experimental.noalias.scope.decl(metadata !26269)
  %i.afj = icmp eq i64 %.val168.i.i, 0
  br i1 %i.afj, label %.loopexit516.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.js
  %i.afk = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.afl = getelementptr inbounds nuw i8, ptr %i.l, i64 44
  %i.afm = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.afn = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.afo = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.afp = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.afq = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.afr = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %bb.jt

bb.jt:                                            ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0B3u_.exit.thread.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.aft = phi ptr [ %.val167.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.afu, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0B3u_.exit.thread.i.i.i.i.i.i.i.i.i.i.i ] ; 7 uses
  %i.afu = getelementptr inbounds nuw i8, ptr %i.aft, i64 96 ; 3 uses
  store ptr %i.afu, ptr %i.bg, align 8, !alias.scope !26272, !noalias !26275
  call void @llvm.experimental.noalias.scope.decl(metadata !26278)
  %i.afv = load i64, ptr %i.aft, align 8, !range !17, !alias.scope !26281, !noalias !26284, !noundef !4
  %i.afw = icmp eq i64 %i.afv, -9223372036854775808
  br i1 %i.afw, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0B3u_.exit.thread.i.i.i.i.i.i.i.i.i.i.i, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  call void @llvm.experimental.noalias.scope.decl(metadata !26287)
  call void @llvm.experimental.noalias.scope.decl(metadata !26290)
  %i.afx = getelementptr inbounds nuw i8, ptr %i.aft, i64 8
  %i.afy = load ptr, ptr %i.afx, align 8, !alias.scope !26293, !noalias !26294, !nonnull !4, !noundef !4
  %i.afz = getelementptr inbounds nuw i8, ptr %i.aft, i64 16
  %i.aga = load i64, ptr %i.afz, align 8, !alias.scope !26293, !noalias !26294, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !26298
  %i.agb = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore15DELTA_LOG_REGEX, i64 32) acquire, align 8, !noalias !26298
  %i.agc = icmp eq i32 %i.agb, 0
  br i1 %i.agc, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.jv, !prof !240

bb.jv:                                            ; preds = %bb.ju
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !26298
  store ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore15DELTA_LOG_REGEX, ptr %i.k, align 8, !noalias !26298
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !26298
  store ptr %i.k, ptr %i.j, align 8, !noalias !26298
  invoke void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore15DELTA_LOG_REGEX, i64 32), i1 noundef zeroext true, ptr noundef nonnull %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8)
          to label %.noexc224.i.i unwind label %.loopexit436.i.i, !noalias !26177

.noexc224.i.i:                                    ; preds = %bb.jv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !26298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !26298
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc224.i.i, %bb.ju
  invoke fastcc void @_RNvMs4_NtNtCsonPGffhQyS_5regex5regex6stringNtB5_5Regex11captures_at(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @_RNvNtCs14kWLkQVSKO_14deltalake_core8logstore15DELTA_LOG_REGEX, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.afy, i64 noundef %i.aga) #49
          to label %.noexc225.i.i unwind label %.loopexit436.i.i

.noexc225.i.i:                                    ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.agd = load i64, ptr %i.m, align 8, !range !1069, !noalias !26298, !noundef !4
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.agd, 2
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.jw

bb.jw:                                            ; preds = %.noexc225.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !26298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.l, ptr noundef nonnull align 8 dereferenceable(72) %i.m, i64 72, i1 false), !noalias !26298
  call void @llvm.experimental.noalias.scope.decl(metadata !26299)
  call void @llvm.experimental.noalias.scope.decl(metadata !26302)
  %i.age = load i32, ptr %i.afk, align 8, !range !11156, !alias.scope !26305, !noalias !26306, !noundef !4
  %i.agf = load i32, ptr %i.afl, align 4, !alias.scope !26305, !noalias !26306
  %i.agg = trunc nuw i32 %i.age to i1
  br i1 %i.agg, label %bb.jx, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s_00Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.jx:                                            ; preds = %bb.jw
  %i.agh = load ptr, ptr %i.afm, align 8, !alias.scope !26305, !noalias !26306, !nonnull !4, !noundef !4 ; 2 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agh, i64 32
  %i.agj = load i64, ptr %i.agi, align 8, !noalias !26309, !noundef !4 ; 3 uses
  %i.agk = icmp ult i64 %i.agj, 1152921504606846976
  call void @llvm.assume(i1 %i.agk)
  %i.agl = icmp eq i64 %i.agj, 1
  br i1 %i.agl, label %bb.jz, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.agm = zext i32 %i.agf to i64                 ; 2 uses
  %i.agn = icmp samesign ugt i64 %i.agj, %i.agm
  br i1 %i.agn, label %_RNvMs5_NtNtCslw7hBPHc6qc_14regex_automata4util8capturesNtB5_9GroupInfo4slot.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s_00Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMs5_NtNtCslw7hBPHc6qc_14regex_automata4util8capturesNtB5_9GroupInfo4slot.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.jy
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agh, i64 24
  %i.agp = load ptr, ptr %i.ago, align 8, !noalias !26309, !nonnull !4, !noundef !4
  %i.agq = getelementptr inbounds nuw [8 x i8], ptr %i.agp, i64 %i.agm ; 2 uses
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agq, i64 4
  %i.ags = load i32, ptr %i.agr, align 4, !noalias !26309, !noundef !4
  %i.agt = zext i32 %i.ags to i64
  %i.agu = load i32, ptr %i.agq, align 4, !noalias !26309, !noundef !4
  %i.agv = zext i32 %i.agu to i64                 ; 3 uses
  %i.agw = sub nsw i64 %i.agt, %i.agv
  %i.agx = icmp ugt i64 %i.agw, 1
  br i1 %i.agx, label %bb.ka, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s_00Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.jz:                                            ; preds = %bb.ka, %bb.jx
  %.sroa.038.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.agv, %bb.ka ], [ 2, %bb.jx ] ; 2 uses
  %.sroa.040.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ahb, %bb.ka ], [ 3, %bb.jx ] ; 2 uses
  %i.agy = load ptr, ptr %i.afn, align 8, !alias.scope !26305, !noalias !26306, !nonnull !4, !noundef !4 ; 2 uses
  %i.agz = load i64, ptr %i.afo, align 8, !alias.scope !26305, !noalias !26306, !noundef !4 ; 2 uses
  %i.aha = icmp ult i64 %.sroa.038.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.agz
  br i1 %i.aha, label %bb.kb, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s_00Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ka:                                            ; preds = %_RNvMs5_NtNtCslw7hBPHc6qc_14regex_automata4util8capturesNtB5_9GroupInfo4slot.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ahb = add nuw nsw i64 %i.agv, 1
  br label %bb.jz

bb.kb:                                            ; preds = %bb.jz
  %i.ahc = getelementptr inbounds nuw [8 x i8], ptr %i.agy, i64 %.sroa.038.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ahd = load i64, ptr %i.ahc, align 8, !noalias !26309, !noundef !4 ; 5 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.ahd, 0
  %i.ahe = icmp ult i64 %.sroa.040.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.agz
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 %i.ahe, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.kc, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s_00Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.kc:                                            ; preds = %bb.kb
  %i.ahf = getelementptr inbounds nuw [8 x i8], ptr %i.agy, i64 %.sroa.040.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ahg = load i64, ptr %i.ahf, align 8, !noalias !26309, !noundef !4 ; 3 uses
  %.not44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ahg, 0
  br i1 %.not44.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s_00Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.kd

_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s_00Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.kc, %bb.kb, %bb.jz, %_RNvMs5_NtNtCslw7hBPHc6qc_14regex_automata4util8capturesNtB5_9GroupInfo4slot.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.jy, %bb.jw
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata4util8captures8CapturesECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.afr)
          to label %.noexc226.i.i unwind label %.loopexit436.i.i, !noalias !26177

.noexc226.i.i:                                    ; preds = %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s_00Bb_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !26298
  br label %.loopexit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.kd:                                            ; preds = %bb.kc
  %i.ahh = add i64 %i.ahd, -1                     ; 7 uses
  %i.ahi = add i64 %i.ahg, -1                     ; 6 uses
  %i.ahj = load i64, ptr %i.afp, align 8, !alias.scope !26299, !noalias !26310, !noundef !4 ; 5 uses
  %i.ahk = load ptr, ptr %i.afq, align 8, !alias.scope !26299, !noalias !26310, !nonnull !4, !noundef !4 ; 6 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata4util8captures8CapturesECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(40) %i.afr)
          to label %.noexc227.i.i unwind label %.loopexit436.i.i, !noalias !26177

.noexc227.i.i:                                    ; preds = %bb.kd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !26298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !26298
  %.not.i.i3.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.ahh, %i.ahi
  br i1 %.not.i.i3.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.la, label %bb.ke

bb.ke:                                            ; preds = %.noexc227.i.i
  %i.ahl = icmp eq i64 %i.ahh, 0
  br i1 %i.ahl, label %bb.kg, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %.not5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.ahh, %i.ahj
  br i1 %.not5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ki, label %bb.kh

bb.kg:                                            ; preds = %bb.ki, %bb.kh, %bb.ke
  %i.ahm = icmp eq i64 %i.ahi, 0
  br i1 %i.ahm, label %bb.km, label %bb.kj

bb.kh:                                            ; preds = %bb.kf
  %i.ahn = icmp eq i64 %i.ahh, %i.ahj
  br i1 %i.ahn, label %bb.kg, label %bb.la

bb.ki:                                            ; preds = %bb.kf
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahk, i64 %i.ahh
  %i.ahp = load i8, ptr %i.aho, align 1, !alias.scope !26311, !noalias !26314, !noundef !4
  %i.ahq = icmp sgt i8 %i.ahp, -65
  br i1 %i.ahq, label %bb.kg, label %bb.la

bb.kj:                                            ; preds = %bb.kg
  %.not6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.ahi, %i.ahj
  br i1 %.not6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.kl, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  %i.ahr = icmp eq i64 %i.ahi, %i.ahj
  br i1 %i.ahr, label %bb.km, label %bb.la

bb.kl:                                            ; preds = %bb.kj
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahk, i64 %i.ahi
  %i.aht = load i8, ptr %i.ahs, align 1, !alias.scope !26311, !noalias !26314, !noundef !4
  %i.ahu = icmp sgt i8 %i.aht, -65
  br i1 %i.ahu, label %bb.km, label %bb.la

bb.km:                                            ; preds = %bb.kl, %bb.kk, %bb.kg
  %i.ahv = sub i64 %i.ahg, %i.ahd                 ; 5 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahk, i64 %i.ahh ; 3 uses
  switch i64 %i.ahv, label %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i [
    i64 0, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0B3u_.exit.thread.i.i.i.i.i.i.i.i.i.i.i
    i64 1, label %bb.kn
  ]

bb.kn:                                            ; preds = %bb.km
  %i.ahx = load i8, ptr %i.ahw, align 1, !alias.scope !26317, !noalias !26320, !noundef !4 ; 2 uses
  switch i8 %i.ahx, label %bb.ko [
    i8 43, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0B3u_.exit.thread.i.i.i.i.i.i.i.i.i.i.i
    i8 45, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0B3u_.exit.thread.i.i.i.i.i.i.i.i.i.i.i
  ]

thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.km
  %.pr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.ahw, align 1, !alias.scope !26317, !noalias !26320
  br label %bb.ko

bb.ko:                                            ; preds = %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.kn
  %i.ahy = phi i8 [ %.pr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ahx, %bb.kn ]
  switch i8 %i.ahy, label %bb.kv [
    i8 43, label %bb.kp
    i8 45, label %bb.kq
  ]

bb.kp:                                            ; preds = %bb.ko
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahk, i64 %i.ahd
  %i.aia = add nsw i64 %i.ahv, -1
  br label %bb.kv

bb.kq:                                            ; preds = %bb.ko
  %i.aib = getelementptr inbounds nuw i8, ptr %i.ahk, i64 %i.ahd ; 2 uses
  %i.aic = add nsw i64 %i.ahv, -1                 ; 3 uses
  %i.aid = icmp samesign ult i64 %i.ahv, 17
  br i1 %i.aid, label %.preheader114.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader114.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:    ; preds = %bb.kq
  %.not103137.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aic, 0
  br i1 %.not103137.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph141.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.kq, %bb.kt
  %.sroa.0.1136.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aie, %bb.kt ], [ %i.aib, %bb.kq ] ; 2 uses
  %.sroa.26.1135.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aif, %bb.kt ], [ %i.aic, %bb.kq ]
  %.sroa.084.0134.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aiq, %bb.kt ], [ 0, %bb.kq ]
  %i.aie = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1
  %i.aif = add nsw i64 %.sroa.26.1135.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.aig = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 10) ; 2 uses
  %i.aih = extractvalue { i64, i1 } %i.aig, 0
  %i.aii = extractvalue { i64, i1 } %i.aig, 1
  br i1 %i.aii, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0B3u_.exit.thread.i.i.i.i.i.i.i.i.i.i.i, label %bb.kr, !prof !52

bb.kr:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aij = load i8, ptr %.sroa.0.1136.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !26317, !noalias !26320, !noundef !4
  %i.aik = zext i8 %i.aij to i32
  %i.ail = add nsw i32 %i.aik, -48                ; 2 uses
  %i.aim = icmp ult i32 %i.ail, 10
  br i1 %i.aim, label %bb.ks, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1D_5ErrorERB1B_uINtNtNtBa_3ops12control_flow11ControlFlowTxxEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2u_B3f_uB2A_NCB3m_s_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB3f_QNCB3m_s0_0E0E0E0B3u_.exit.thread.i.i.i.i.i.i.i.i.i.i.i

bb.ks:                                            ; preds = %bb.kr
  %i.ain = zext nneg i32 %i.ail to i64
  %i.aio = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.aih, i64 %i.ain) ; 2 uses
  %i.aip = extractvalue { i64, i1 } %i.aio, 1
end_hunk_3
begin_hunk_4_@_RNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider17df_logical_schema:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i8 24, ptr %i.l, align 8
  invoke void @_RINvMs5_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB6_5Field3newRNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, i1 noundef zeroext true)
          to label %bb.ad unwind label %.body.thread53.loopexit.split-lp

bb.ac:                                            ; preds = %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE8push_mutCs14kWLkQVSKO_14deltalake_core.exit42, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  invoke void @_RINvMs5_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB6_6Schema3newINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB12_4sync3ArcNtNtB8_5field5FieldEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.k, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j)
          to label %bb.am unwind label %.body

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 1, ptr %i.h, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.cf, ptr noundef nonnull align 8 dereferenceable(112) %i.m, i64 112, i1 false)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !29320
  %i.cg = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 16481) 128, i64 noundef range(i64 8, 17) 8) #40, !noalias !29320 ; 5 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.ae, label %bb.ah, !prof !52

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #48
          to label %.noexc34 unwind label %bb.af

.noexc34:                                         ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ae
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(112) %i.cf)
          to label %.body.thread unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.ah:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.cg, ptr noundef nonnull align 8 dereferenceable(128) %i.h, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !29323)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.cg, ptr %i.a, align 8, !noalias !29323
  %i.ck = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !alias.scope !29323, !noundef !4 ; 3 uses
  %i.cm = load i64, ptr %i.p, align 8, !range !16, !alias.scope !29323, !noundef !4
  %i.cn = icmp eq i64 %i.cl, %i.cm
  br i1 %i.cn, label %bb.ai, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE8push_mutCs14kWLkQVSKO_14deltalake_core.exit42

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE8grow_oneB17_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE8push_mutCs14kWLkQVSKO_14deltalake_core.exit42 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cp = atomicrmw sub ptr %i.cg, i64 1 release, align 8, !noalias !29326
  %i.cq = icmp eq i64 %i.cp, 1
  br i1 %i.cq, label %bb.ak, label %.body.thread

bb.ak:                                            ; preds = %bb.aj
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #45
          to label %.body.thread unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE8push_mutCs14kWLkQVSKO_14deltalake_core.exit42: ; preds = %bb.ah, %bb.ai
  %i.cs = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !alias.scope !29323, !nonnull !4, !noundef !4
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cl
  store ptr %i.cg, ptr %i.cu, align 8
  %i.cv = add i64 %i.cl, 1
  store i64 %i.cv, ptr %i.ck, align 8, !alias.scope !29323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ac

bb.am:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 1, ptr %i.g, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cx, ptr noundef nonnull align 8 dereferenceable(64) %i.k, i64 64, i1 false)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !29331
  %i.cy = call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 16481) 80, i64 noundef range(i64 8, 17) 8) #40, !noalias !29331 ; 3 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.an, label %bb.aq, !prof !52

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #48
          to label %.noexc43 unwind label %bb.ao

.noexc43:                                         ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.an
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.g) #46
          to label %.body.thread49 unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.aq:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.cy, ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cy, ptr %i.dc, align 8
  store i64 -9223372036854775711, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !29334)
  call void @llvm.experimental.noalias.scope.decl(metadata !29337)
  %i.dd = load ptr, ptr %i.q, align 8, !alias.scope !29340, !nonnull !4, !noundef !4
  %i.de = atomicrmw sub ptr %i.dd, i64 1 release, align 8, !noalias !29340
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.ar, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit45

bb.ar:                                            ; preds = %bb.aq
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit45

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit45: ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  ret void

.body.thread:                                     ; preds = %.body.thread53.loopexit, %.body.thread53.loopexit.split-lp, %bb.aj, %bb.ak, %bb.af, %bb.y, %bb.z, %bb.u, %bb.n, %bb.j
  %eh.lpad-body48 = phi { ptr, i32 } [ %i.co, %bb.aj ], [ %i.ci, %bb.af ], [ %i.br, %bb.u ], [ %i.bb, %bb.j ], [ %i.bw, %bb.y ], [ %.pn.i, %bb.n ], [ %i.bw, %bb.z ], [ %i.co, %bb.ak ], [ %lpad.loopexit, %.body.thread53.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread53.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.p) #46
          to label %.body.thread49 unwind label %bb.as

bb.as:                                            ; preds = %bb.d, %.body.thread
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body.thread49, %bb.d
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider20get_pushdown_filters(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 1152921504606846976) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef range(i64 0, 384307168202282326) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  store ptr %1, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %3, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %4, ptr %i.e, align 8
  call void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source27TableProviderFilterPushDownEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB2T_6cloned6ClonedINtNtNtB2X_5slice4iter4IterRNtNtB17_4expr4ExprEENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider20get_pushdown_filters0EE9from_iterB4T_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider24resolve_file_column_name(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %1, ptr noalias noundef readonly captures(address, read_provenance) %2, i64 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 12 uses
  %i.g = alloca [4 x i8], align 4                 ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 3 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 2 uses
  %i.k = alloca [16 x i8], align 8                ; 3 uses
  %i.l = alloca [40 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.m = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i64, ptr %i.n, align 8, !noundef !4 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %.idx = shl nuw nsw i64 %i.o, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !29341
  %i.r = tail call noundef i64 @_RNvNtCsjTPIcpFZL1T_8foldhash4seed19gen_per_hasher_seed(), !noalias !29341
  %i.s = load atomic i8, ptr getelementptr inbounds (i8, ptr @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 48) acquire, align 8, !noalias !29341
  %i.t = icmp eq i8 %i.s, 2
  br i1 %i.t, label %bb.d, label %bb.b, !prof !240

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtCsjTPIcpFZL1T_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #45, !noalias !29341
  br label %bb.d

bb.c:                                             ; preds = %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTReuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReuENtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.4.0..sroa_idx.i, i64 noundef 16, i64 noundef 16)
          to label %common.resume unwind label %bb.f, !noalias !29341

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @165, i64 32, i1 false), !noalias !29341
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store i64 %i.r, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !29341
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTReuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.e, !prof !240

bb.e:                                             ; preds = %bb.d
  %i.v = invoke { i64, i64 } @_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTReuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a, i64 noundef %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.4.0..sroa_idx.i, i1 noundef zeroext true)
          to label %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTReuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.c, !noalias !29341 ; 0 uses

_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTReuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.e, %bb.d
  invoke void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider24resolve_file_column_name0ENCINvXsb_NtCs2HSpDNxY7OE_9hashbrown3setINtB4u_7HashSetReEINtNtNtBa_6traits7collect6ExtendB5d_E6extendBX_E0ENtNtB5l_8iterator8Iterator4folduNCINvNvB64_8for_each4callTB5d_uENCINvXs1l_NtB4w_3mapINtB7g_7HashMapB5d_uEIB5h_B6Z_E6extendBN_E0E0EB2R_(ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_RINvXs9_NtCs2HSpDNxY7OE_9hashbrown3setINtB6_7HashSetReEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorBO_E9from_iterINtNtNtBY_8adapters3map3MapINtNtNtB10_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider24resolve_file_column_name0EEB4n_.exit unwind label %bb.c, !noalias !29341

bb.f:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !29341
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.c ], [ %.pn32, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RINvXs9_NtCs2HSpDNxY7OE_9hashbrown3setINtB6_7HashSetReEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorBO_E9from_iterINtNtNtBY_8adapters3map3MapINtNtNtB10_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider24resolve_file_column_name0EEB4n_.exit: ; preds = %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTableTReuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtB8_6hasher18DefaultHashBuilderE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !29341
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvXs9_NtCs2HSpDNxY7OE_9hashbrown3setINtB6_7HashSetReEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorBO_E9from_iterINtNtNtBY_8adapters3map3MapINtNtNtB10_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider24resolve_file_column_name0EEB4n_.exit
  store ptr %2, ptr %i.k, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %3, ptr %i.x, align 8
  %i.y = invoke fastcc noundef zeroext i1 @_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapReuE12contains_keyeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.x unwind label %bb.j

bb.h:                                             ; preds = %_RINvXs9_NtCs2HSpDNxY7OE_9hashbrown3setINtB6_7HashSetReEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorBO_E9from_iterINtNtNtBY_8adapters3map3MapINtNtNtB10_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider24resolve_file_column_name0EEB4n_.exit
  store ptr @287, ptr %i.h, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 15, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i32 0, ptr %i.g, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 15, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %bb.o, %bb.j
  %.pn32 = phi { ptr, i32 } [ %i.ab, %bb.j ], [ %.pn, %bb.o ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  invoke void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTReuENtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef 16, i64 noundef 16)
          to label %common.resume unwind label %bb.w

bb.j:                                             ; preds = %.invoke, %bb.z, %bb.y, %bb.h, %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %bb.h
  %i.ac = load i64, ptr %i.c, align 8, !range !58, !noundef !4
  %i.ad = trunc nuw i64 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !range !17, !noundef !4 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.ad, label %bb.l, label %bb.m, !prof !52

bb.l:                                             ; preds = %bb.k
  %i.ah = load i64, ptr %i.ag, align 8
  br label %.invoke

bb.m:                                             ; preds = %bb.k
  %i.ai = load ptr, ptr %i.ag, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.aj = icmp samesign ugt i64 %i.af, 14
  call void @llvm.assume(i1 %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.ai, ptr noundef nonnull align 1 dereferenceable(15) @287, i64 15, i1 false)
  store i64 %i.af, ptr %i.f, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.ai, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 15, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %bb.n

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit, %bb.m
  %i.al = phi i64 [ %.pre40, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit ], [ 15, %bb.m ]
  %i.am = phi ptr [ %.pre, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.ai, %bb.m ]
  %i.an = invoke fastcc noundef zeroext i1 @_RINvMs3_NtCs2HSpDNxY7OE_9hashbrown3mapINtB6_7HashMapReuE12contains_keyeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.am, i64 noundef %i.al)
          to label %bb.q unwind label %bb.p

bb.o:                                             ; preds = %.body, %bb.p
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ao, %bb.p ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #46
          to label %bb.i unwind label %bb.w

bb.p:                                             ; preds = %bb.s, %bb.n
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.q:                                             ; preds = %bb.n
  br i1 %i.an, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  store i64 -9223372036854775711, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.af

bb.s:                                             ; preds = %bb.q
  %i.aq = load i32, ptr %i.g, align 4, !noundef !4
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.g, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.h, ptr %i.d, align 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.421.0..sroa_idx, align 8
  store ptr %i.g, ptr %i.ak, align 8
  store ptr @_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.425.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @709, ptr noundef nonnull %i.d)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.p

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.t

bb.t:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.v

bb.v:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.t, %bb.v
  %eh.lpad-body = phi { ptr, i32 } [ %i.au, %bb.v ], [ %i.as, %bb.t ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %bb.o

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %.pre = load ptr, ptr %.sroa.45.0..sroa_idx, align 8
  %.pre40 = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.n

bb.w:                                             ; preds = %bb.i, %bb.o
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.x:                                             ; preds = %bb.g
  br i1 %i.y, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.aa unwind label %bb.j

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.k, ptr %i.i, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.49.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @710, ptr noundef nonnull %i.i)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit37 unwind label %bb.j

bb.aa:                                            ; preds = %bb.y
end_hunk_4
begin_hunk_5_@_RNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider28partitioned_file_from_action:bb.a
  store i64 0, ptr %i.ai, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.m:                                             ; preds = %.body
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.n:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider29canonical_table_root_identity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 8 uses
  %i.b = alloca [88 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtCs14kWLkQVSKO_14deltalake_core5table19normalize_table_url(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1)
  invoke void @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next21ensure_table_root_url(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.a) #46
          to label %bb.l unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.a)
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.i, %bb.h, %bb.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.f ], [ %i.d, %bb.d ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.b) #46
          to label %bb.l unwind label %bb.k

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = invoke noundef zeroext i1 @_RNvMs_Cseo6ZV82fEK1_3urlNtB4_3Url12set_username(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
          to label %bb.g unwind label %bb.f       ; 0 uses

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit
  %i.h = invoke noundef zeroext i1 @_RNvMs_Cseo6ZV82fEK1_3urlNtB4_3Url12set_password(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.b, ptr noalias noundef readonly captures(address, read_provenance) null, i64 undef)
          to label %bb.h unwind label %bb.f       ; 0 uses

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs_Cseo6ZV82fEK1_3urlNtB4_3Url9set_query(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.b, ptr noalias noundef readonly captures(address, read_provenance) null, i64 undef)
          to label %bb.i unwind label %bb.f

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs_Cseo6ZV82fEK1_3urlNtB4_3Url12set_fragment(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.b, ptr noalias noundef readonly captures(address, read_provenance) null, i64 undef)
          to label %bb.j unwind label %bb.f

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.k:                                             ; preds = %.body, %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.l:                                             ; preds = %.body, %bb.b
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider32expr_is_exact_predicate_for_cols(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [1 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 1, ptr %i.d, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %1, ptr %i.f, align 8
  call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5applyNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider32expr_is_exact_predicate_for_cols0EB1U_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !29354)
  %i.g = load i64, ptr %i.c, align 8, !range !181, !alias.scope !29354, !noundef !4
  %.not.i = icmp eq i64 %i.g, 20
  br i1 %.not.i, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtBL_5error15DataFusionErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit, label %bb.b, !prof !240

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !29354
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @632, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @633, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @713) #48
          to label %bb.d unwind label %bb.c, !noalias !29354

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a) #46
          to label %bb.f unwind label %bb.e, !noalias !29354

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !29354
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.h

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node17TreeNodeRecursionNtNtBL_5error15DataFusionErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.j = load i8, ptr %i.d, align 1, !range !178, !noundef !4
  %i.k = trunc nuw i8 %i.j to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7session14create_session(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs4_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7sessionNtB5_19DeltaSessionContext3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7session25warn_incompatible_session(ptr noalias noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %0, ptr noundef nonnull %1, ptr nofree readonly captures(none) %.24.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [80 x i8], align 8                ; 13 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [80 x i8], align 8                ; 13 uses
  %i.n = alloca [32 x i8], align 8                ; 8 uses
  %i.o = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !align !18, !noundef !4 ; 3 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.u = load i64, ptr %i.t, align 8, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.u, ptr %i.v, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %i.s, %bb.b ], [ null, %bb.a ]
  store ptr %.sink, ptr %i.o, align 8
  %i.w = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.x = icmp ult i64 %i.w, 4
  br i1 %i.x, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.y = load atomic i8, ptr getelementptr inbounds (i8, ptr @_RNvNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7session25warn_incompatible_session10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.y, label %bb.e [
    i8 0, label %bb.l
    i8 1, label %bb.f
    i8 2, label %bb.f
  ], !prof !10371

bb.e:                                             ; preds = %bb.d
  %i.z = tail call noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7session25warn_incompatible_session10___CALLSITE) #45 ; 2 uses
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.d, %bb.e
  %.sroa.08.0 = phi i8 [ %i.z, %bb.e ], [ %i.y, %bb.d ], [ %i.y, %bb.d ]
  %i.ab = load ptr, ptr @_RNvNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7session25warn_incompatible_session10___CALLSITE, align 8, !nonnull !4, !align !18, !noundef !4
  %i.ac = tail call noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ab, i8 noundef %.sroa.08.0)
  br i1 %i.ac, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ad = load ptr, ptr @_RNvNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7session25warn_incompatible_session10___CALLSITE, align 8, !nonnull !4, !align !18, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr @714, ptr %i.l, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr inttoptr (i64 499 to ptr), ptr %i.af, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.o, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ag = call { ptr, i64 } %.24.val(ptr noundef nonnull %1) #49 ; 2 uses
  %i.ah = extractvalue { ptr, i64 } %i.ag, 0
  %i.ai = extractvalue { ptr, i64 } %i.ag, 1
  store ptr %i.ah, ptr %i.i, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.ai, ptr %i.aj, align 8
  store ptr %i.i, ptr %i.j, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.l, ptr %i.m, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @196, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %0, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr @240, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %i.k, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr @715, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.j, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store ptr @716, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store ptr %i.ak, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  store ptr @243, ptr %i.at, align 8
  store i64 1, ptr %i.n, align 8
  %.sroa.010.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.m, ptr %.sroa.010.sroa.4.0..sroa_idx, align 8
  %.sroa.010.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 5, ptr %.sroa.010.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.ae, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.au = load ptr, ptr @_RNvNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7session25warn_incompatible_session10___CALLSITE, align 8, !noalias !29357, !nonnull !4, !align !18, !noundef !4
  call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.au, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n)
  %i.av = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !29357
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %bb.h, label %_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7session25warn_incompatible_sessions_0B7_.exit

bb.h:                                             ; preds = %bb.g
  %i.ax = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !29357 ; 2 uses
  %i.ay = icmp ult i64 %i.ax, 6
  call void @llvm.assume(i1 %i.ay)
  %i.az = icmp samesign ugt i64 %i.ax, 1
  br i1 %i.az, label %bb.i, label %_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7session25warn_incompatible_sessions_0B7_.exit

bb.i:                                             ; preds = %bb.h
  %i.ba = load ptr, ptr @_RNvNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7session25warn_incompatible_session10___CALLSITE, align 8, !noalias !29357, !nonnull !4, !align !18, !noundef !4 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !4, !noundef !4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.be = load i64, ptr %i.bd, align 8, !noundef !4
  store i64 2, ptr %i.a, align 8, !noalias !29357
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.bc, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !29357
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.be, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !29357
  %i.bf = call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.bg = extractvalue { ptr, ptr } %i.bf, 0      ; 2 uses
  %i.bh = extractvalue { ptr, ptr } %i.bf, 1      ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !invariant.load !4, !nonnull !4
  %i.bk = call noundef zeroext i1 %i.bj(ptr noundef %i.bg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #49, !inline_history !29360
  br i1 %i.bk, label %bb.j, label %_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7session25warn_incompatible_sessions_0B7_.exit

bb.j:                                             ; preds = %bb.i
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ba, ptr noundef nonnull %i.bg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bh, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n)
  br label %_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7session25warn_incompatible_sessions_0B7_.exit

_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7session25warn_incompatible_sessions_0B7_.exit: ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.k

bb.k:                                             ; preds = %bb.n, %bb.o, %bb.m, %bb.l, %_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7session25warn_incompatible_sessions_0B7_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  ret void

bb.l:                                             ; preds = %bb.f, %bb.c, %bb.d, %bb.e
  %i.bl = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.bm = icmp eq i8 %i.bl, 0
  br i1 %i.bm, label %bb.m, label %bb.k

bb.m:                                             ; preds = %bb.l
  %i.bn = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.bo = icmp ult i64 %i.bn, 6
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = icmp samesign ugt i64 %i.bn, 1
  br i1 %i.bp, label %bb.n, label %bb.k

bb.n:                                             ; preds = %bb.m
  %i.bq = load ptr, ptr @_RNvNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7session25warn_incompatible_session10___CALLSITE, align 8, !nonnull !4, !align !18, !noundef !4 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !4, !noundef !4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !4
  store i64 2, ptr %i.h, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.bs, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.bu, ptr %.sroa.515.0..sroa_idx, align 8
  %i.bv = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.bw = extractvalue { ptr, ptr } %i.bv, 0      ; 2 uses
  %i.bx = extractvalue { ptr, ptr } %i.bv, 1      ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !4, !nonnull !4
  %i.ca = call noundef zeroext i1 %i.bz(ptr noundef %i.bw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h) #49
  br i1 %i.ca, label %bb.o, label %bb.k

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.cb = load ptr, ptr @_RNvNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7session25warn_incompatible_session10___CALLSITE, align 8, !nonnull !4, !align !18, !noundef !4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @714, ptr %i.e, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 499 to ptr), ptr %i.cd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.o, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ce = call { ptr, i64 } %.24.val(ptr noundef nonnull %1) #49 ; 2 uses
  %i.cf = extractvalue { ptr, i64 } %i.ce, 0
  %i.cg = extractvalue { ptr, i64 } %i.ce, 1
  store ptr %i.cf, ptr %i.b, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.cg, ptr %i.ch, align 8
  store ptr %i.b, ptr %i.c, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.e, ptr %i.f, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @196, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %0, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @240, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.d, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr @715, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr %i.c, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store ptr @716, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store ptr %i.ci, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store ptr @243, ptr %i.cr, align 8
  store i64 1, ptr %i.g, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.f, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 5, ptr %.sroa.518.0..sroa_idx, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.cc, ptr %i.cs, align 8
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bq, ptr noundef nonnull %i.bw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bx, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7session31derive_session_state_from_trait(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(none) dereferenceable(1680) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %1, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(144) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [32 x i8], align 8          ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [40 x i8], align 8                ; 4 uses
  %i.i = alloca [40 x i8], align 8                ; 4 uses
  %i.j = alloca [960 x i8], align 8               ; 4 uses
  %i.k = alloca [72 x i8], align 8                ; 8 uses
  %i.l = alloca [40 x i8], align 8                ; 5 uses
  %i.m = alloca [1608 x i8], align 8              ; 27 uses
  %i.n = alloca [1608 x i8], align 8              ; 5 uses
  %i.o = alloca [1608 x i8], align 8              ; 5 uses
  %i.p = alloca [1608 x i8], align 8              ; 5 uses
  %i.q = alloca [1608 x i8], align 8              ; 5 uses
  %i.r = alloca [1608 x i8], align 8              ; 4 uses
  %i.s = alloca [1608 x i8], align 8              ; 4 uses
  %i.t = alloca [1608 x i8], align 8              ; 4 uses
  %i.u = alloca [1608 x i8], align 8              ; 5 uses
  %i.v = alloca [1608 x i8], align 8              ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [208 x i8], align 8              ; 29 uses
  %i.ad = alloca [32 x i8], align 8               ; 7 uses
  %i.ae = alloca [24 x i8], align 8               ; 5 uses
  %i.af = alloca [8 x i8], align 8                ; 4 uses
  %i.ag = alloca [8 x i8], align 8                ; 4 uses
  %i.ah = alloca [8 x i8], align 8                ; 4 uses
  %i.ai = alloca [16 x i8], align 8               ; 5 uses
  %i.aj = alloca [8 x i8], align 8                ; 4 uses
  %i.ak = alloca [16 x i8], align 8               ; 5 uses
  %i.al = alloca [208 x i8], align 8              ; 29 uses
  %i.am = alloca [32 x i8], align 8               ; 8 uses
  %i.an = alloca [40 x i8], align 8               ; 2 uses
  %i.ao = alloca [24 x i8], align 8               ; 7 uses
  %i.ap = alloca [40 x i8], align 8               ; 2 uses
  %i.aq = alloca [24 x i8], align 8               ; 7 uses
  %i.ar = alloca [40 x i8], align 8               ; 2 uses
  %i.as = alloca [24 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !4, !nonnull !4
  %i.av = tail call noundef nonnull align 8 ptr %i.au(ptr noundef nonnull %2) #49
  call void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB17_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEE4iterCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ar, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.av)
  call void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtB6_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map6ValuesNtNtB6_6string6StringB11_EEE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.as, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ax = load ptr, ptr %i.aw, align 8, !invariant.load !4, !nonnull !4
  %i.ay = invoke noundef nonnull align 8 ptr %i.ax(ptr noundef nonnull %2)
          to label %bb.c unwind label %.thread

bb.b:                                             ; preds = %bb.br, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn81, %bb.br ], [ %.pn88, %bb.f ] ; 2 uses
  %.sroa.016.0 = phi i1 [ %.sroa.016.182, %bb.br ], [ %.sroa.016.289, %bb.f ]
  br i1 %.sroa.016.0, label %bb.bs, label %.thread130

.thread:                                          ; preds = %bb.a, %bb.c, %bb.d
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB17_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEE4iterCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ay)
          to label %bb.d unwind label %.thread

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ap, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtB6_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udaf12AggregateUDFEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map6ValuesNtNtB6_6string6StringB11_EEE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aq, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.ap)
          to label %bb.e unwind label %.thread

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.bb = load ptr, ptr %i.ba, align 8, !invariant.load !4, !nonnull !4
  %i.bc = invoke noundef nonnull align 8 ptr %i.bb(ptr noundef nonnull %2)
          to label %bb.g unwind label %.thread77

bb.f:                                             ; preds = %.thread83
  br i1 %.sroa.015.190, label %bb.br, label %bb.b

.thread77:                                        ; preds = %bb.e, %bb.g, %bb.h
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB17_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEE4iterCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bc)
          to label %bb.h unwind label %.thread77

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.an, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtB6_4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr4udwf9WindowUDFEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map6ValuesNtNtB6_6string6StringB11_EEE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ao, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.an)
          to label %bb.i unwind label %.thread77

.thread98:                                        ; preds = %bb.bk, %bb.bj, %bb.u, %bb.ab, %bb.aa, %bb.y, %bb.x, %bb.r, %.noexc67, %bb.s, %bb.o, %bb.l, %bb.k, %bb.p
  %.sroa.016.3.ph = phi i1 [ true, %bb.p ], [ true, %bb.k ], [ true, %bb.l ], [ true, %bb.o ], [ true, %bb.s ], [ true, %.noexc67 ], [ true, %bb.r ], [ true, %bb.x ], [ true, %bb.y ], [ true, %bb.aa ], [ true, %bb.ab ], [ true, %bb.u ], [ false, %bb.bj ], [ false, %bb.bk ]
  %.sroa.015.2.ph = phi i1 [ true, %bb.p ], [ true, %bb.k ], [ true, %bb.l ], [ true, %bb.o ], [ true, %bb.s ], [ true, %.noexc67 ], [ true, %bb.r ], [ true, %bb.x ], [ true, %bb.y ], [ true, %bb.aa ], [ true, %bb.ab ], [ true, %bb.u ], [ true, %bb.bj ], [ false, %bb.bk ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread83

bb.i:                                             ; preds = %bb.h
  %i.be = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.bf = icmp ult i64 %i.be, 2
  br i1 %i.bf, label %bb.j, label %bb.v

bb.j:                                             ; preds = %bb.i
  %i.bg = load atomic i8, ptr getelementptr inbounds (i8, ptr @_RNvNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7session31derive_session_state_from_trait10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.bg, label %bb.k [
    i8 0, label %bb.v
    i8 1, label %bb.l
    i8 2, label %bb.l
  ], !prof !10371

bb.k:                                             ; preds = %bb.j
  %i.bh = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7session31derive_session_state_from_trait10___CALLSITE)
          to label %bb.m unwind label %.thread98  ; 2 uses

bb.l:                                             ; preds = %bb.j, %bb.j, %bb.m
  %.sroa.06.0 = phi i8 [ %i.bh, %bb.m ], [ %i.bg, %bb.j ], [ %i.bg, %bb.j ]
  %i.bi = load ptr, ptr @_RNvNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7session31derive_session_state_from_trait10___CALLSITE, align 8, !nonnull !4, !align !18, !noundef !4
  %i.bj = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bi, i8 noundef %.sroa.06.0)
          to label %bb.n unwind label %.thread98

bb.m:                                             ; preds = %bb.k
  %i.bk = icmp eq i8 %i.bh, 0
  br i1 %i.bk, label %bb.v, label %bb.l

bb.n:                                             ; preds = %bb.l
  br i1 %i.bj, label %bb.o, label %bb.v

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.bl = load ptr, ptr @_RNvNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7session31derive_session_state_from_trait10___CALLSITE, align 8, !nonnull !4, !align !18, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store ptr @717, ptr %i.ak, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr inttoptr (i64 175 to ptr), ptr %i.bm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !invariant.load !4, !nonnull !4
  %i.bp = invoke { ptr, i64 } %i.bo(ptr noundef nonnull %2)
          to label %bb.p unwind label %.thread98  ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.br = extractvalue { ptr, i64 } %i.bp, 0
  %i.bs = extractvalue { ptr, i64 } %i.bp, 1
  store ptr %i.br, ptr %i.ai, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 %i.bs, ptr %i.bt, align 8
  store ptr %i.ai, ptr %i.aj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !4 ; 2 uses
  store i64 %i.bv, ptr %i.ah, align 8
  %i.bw = icmp ult i64 %i.bv, 1152921504606846976
  call void @llvm.assume(i1 %i.bw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !noundef !4 ; 2 uses
  store i64 %i.by, ptr %i.ag, align 8
  %i.bz = icmp ult i64 %i.by, 1152921504606846976
  call void @llvm.assume(i1 %i.bz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !noundef !4 ; 2 uses
  store i64 %i.cb, ptr %i.af, align 8
  %i.cc = icmp ult i64 %i.cb, 1152921504606846976
  call void @llvm.assume(i1 %i.cc)
  store ptr %i.ak, ptr %i.al, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr @196, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %1, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store ptr @240, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store ptr %i.aj, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  store ptr @716, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  store ptr @166, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  store ptr @243, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  store ptr @166, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  store ptr @243, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  store ptr @166, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  store ptr @243, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  store ptr @166, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.al, i64 104
  store ptr @243, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.al, i64 112
  store ptr %i.ah, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.al, i64 120
  store ptr @206, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  store ptr %i.ag, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.al, i64 136
  store ptr @206, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.al, i64 144
  store ptr %i.af, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.al, i64 152
  store ptr @206, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.al, i64 160
  store ptr @166, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.al, i64 168
  store ptr @243, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.al, i64 176
  store ptr @166, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.al, i64 184
  store ptr @243, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.al, i64 192
  store ptr @166, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.al, i64 200
  store ptr @243, ptr %i.db, align 8
  store i64 1, ptr %i.am, align 8
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.al, ptr %.sroa.08.sroa.4.0..sroa_idx, align 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 13, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr %i.bq, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.dc = load ptr, ptr @_RNvNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7session31derive_session_state_from_trait10___CALLSITE, align 8, !noalias !29361, !nonnull !4, !align !18, !noundef !4
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.am)
          to label %.noexc unwind label %.thread98

.noexc:                                           ; preds = %bb.p
  %i.dd = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !29361
  %i.de = icmp eq i8 %i.dd, 0
  br i1 %i.de, label %bb.q, label %bb.t

bb.q:                                             ; preds = %.noexc
  %i.df = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !29361 ; 2 uses
  %i.dg = icmp ult i64 %i.df, 6
  call void @llvm.assume(i1 %i.dg)
  %i.dh = icmp samesign ugt i64 %i.df, 3
  br i1 %i.dh, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.di = load ptr, ptr @_RNvNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7session31derive_session_state_from_trait10___CALLSITE, align 8, !noalias !29361, !nonnull !4, !align !18, !noundef !4 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dk = load ptr, ptr %i.dj, align 8, !nonnull !4, !noundef !4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  %i.dm = load i64, ptr %i.dl, align 8, !noundef !4
  store i64 4, ptr %i.f, align 8, !noalias !29361
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.dk, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !29361
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.dm, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !29361
  %i.dn = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc67 unwind label %.thread98 ; 2 uses

.noexc67:                                         ; preds = %bb.r
  %i.do = extractvalue { ptr, ptr } %i.dn, 0      ; 2 uses
  %i.dp = extractvalue { ptr, ptr } %i.dn, 1      ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !invariant.load !4, !nonnull !4
  %i.ds = invoke noundef zeroext i1 %i.dr(ptr noundef %i.do, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f) #49
          to label %.noexc68 unwind label %.thread98, !inline_history !29364

.noexc68:                                         ; preds = %.noexc67
  br i1 %i.ds, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.noexc68
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.di, ptr noundef nonnull %i.do, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dp, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.am)
          to label %bb.t unwind label %.thread98

bb.t:                                             ; preds = %.noexc68, %bb.q, %.noexc, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.u

bb.u:                                             ; preds = %bb.z, %bb.ac, %bb.w, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.m, i64 960
  store i64 -9223372036854775808, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.m, i64 984
  store i64 -9223372036854775808, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.m, i64 1032
  store i64 -9223372036854775808, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.m, i64 1056
  store i64 -9223372036854775808, ptr %i.dw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.m, i64 1296
end_hunk_5
begin_hunk_6_@_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBO_9MergePlan7execute00s0_0INtB4_6FnMut1TNtNtCs6Po7BT7Nknu_5alloc6string6StringTINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapB2o_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtBO_8MergeBinEEE8call_mutBS_:bb.a
  %i.cg = load i64, ptr %i.cf, align 8, !range !3, !invariant.load !4, !noalias !33428
  %i.ch = add nsw i64 %i.cg, -1
  %i.ci = and i64 %i.ch, -16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ax, i64 112
  %i.cm = load ptr, ptr %i.cl, align 8, !invariant.load !4, !noalias !33428, !nonnull !4
  %i.cn = invoke { ptr, ptr } %i.cm(ptr noundef nonnull %i.ck, ptr noalias noundef nonnull align 1 captures(address) dereferenceable(17) %i.f)
          to label %bb.ad unwind label %bb.ac, !noalias !33428 ; 2 uses

bb.ab:                                            ; preds = %bb.z
  call void @llvm.trap()
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize8MergeBinEBM_(ptr noalias noundef align 8 dereferenceable(32) %i.g) #46
          to label %bb.aj unwind label %bb.ai, !noalias !33428

bb.ad:                                            ; preds = %bb.aa
  %i.cp = extractvalue { ptr, ptr } %i.cn, 0
  %i.cq = extractvalue { ptr, ptr } %i.cn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !33426
  %i.cr = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1920) %i.cr, ptr noundef nonnull align 16 dereferenceable(1920) %i.q, i64 1920, i1 false), !noalias !33426
  %i.cs = getelementptr inbounds nuw i8, ptr %i.j, i64 2088
  store ptr %i.ca, ptr %i.cs, align 8, !noalias !33426
  %i.ct = getelementptr inbounds nuw i8, ptr %i.j, i64 2016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.ct, ptr noundef nonnull align 8 dereferenceable(72) %i.u, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !33426
  %i.cu = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %i.cp, ptr %i.cu, align 16, !noalias !33426
  %i.cv = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr %i.cq, ptr %i.cv, align 8, !noalias !33426
  %i.cw = getelementptr inbounds nuw i8, ptr %i.j, i64 3360
  store i8 0, ptr %i.cw, align 16, !noalias !33426
  %i.cx = getelementptr inbounds nuw i8, ptr %i.j, i64 3361
  store i8 0, ptr %i.cx, align 1, !noalias !33426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !33426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !33426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !33426
  %i.cy = invoke noundef nonnull ptr @_RINvNtNtCskQDtHcQtBkN_5tokio4task5spawn5spawnNCINvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBQ_9MergePlan13rewrite_filesNCNvBM_11read_zorder0E0EBU_(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(5472) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @194)
          to label %bb.af unwind label %bb.ae, !noalias !33428

bb.ae:                                            ; preds = %bb.ad
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %.critedge14.i

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !33426
  store ptr %i.cy, ptr %0, align 8, !alias.scope !33421, !noalias !33467
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.da, align 8, !alias.scope !33421, !noalias !33467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !33426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !33426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !33426
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.t)
          to label %_RNCNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBb_9MergePlan7execute00s0_0Bf_.exit unwind label %bb.ag, !noalias !33421

bb.ag:                                            ; preds = %bb.af
  %i.db = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.t)
          to label %common.resume.i unwind label %bb.ah, !noalias !33421

bb.ah:                                            ; preds = %bb.ag
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !33421
  unreachable

common.resume.i:                                  ; preds = %.critedge14.i, %bb.ag
  %common.resume.op.i = phi { ptr, i32 } [ %i.db, %bb.ag ], [ %.pn10.pn22.i, %.critedge14.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.ai:                                            ; preds = %bb.ap, %.critedge14.i, %bb.ao, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10datafusion17ZOrderExecContextEEB1o_.exit.i, %.noexc19.i, %bb.an, %.thread28.i, %bb.al, %bb.aj, %bb.ac, %bb.k
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47, !noalias !33421
  unreachable

bb.aj:                                            ; preds = %bb.ac
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %i.h) #46
          to label %bb.ak unwind label %bb.ai, !noalias !33428

bb.ak:                                            ; preds = %bb.aj
  %i.de = atomicrmw sub ptr %i.ca, i64 1 release, align 8, !noalias !33468
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.al, label %.thread28.i

bb.al:                                            ; preds = %bb.ak
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize19MergeTaskParametersE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #45
          to label %.thread28.i unwind label %bb.ai, !noalias !33428

.thread28.i:                                      ; preds = %bb.al, %bb.ak
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBO_9MergePlan11read_zorder0EBS_(ptr noundef nonnull align 16 %i.q) #46
          to label %.critedge14.i unwind label %bb.ai, !noalias !33428

bb.am:                                            ; preds = %bb.n
  %i.dg = landingpad { ptr, i32 }
          cleanup
  %i.dh = atomicrmw sub ptr %i.at, i64 1 release, align 8, !noalias !33473
  %i.di = icmp eq i64 %i.dh, 1
  br i1 %i.di, label %bb.an, label %.noexc19.i

bb.an:                                            ; preds = %bb.am
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l) #45
          to label %.noexc19.i unwind label %bb.ai, !noalias !33428

.noexc19.i:                                       ; preds = %bb.an, %bb.am
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEBM_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m) #46
          to label %.critedge.i unwind label %bb.ai, !noalias !33428

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10datafusion17ZOrderExecContextEEB1o_.exit.i: ; preds = %bb.k, %.critedge.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize8MergeBinEBM_(ptr noalias noundef align 8 dereferenceable(32) %i.p) #46
          to label %bb.ao unwind label %bb.ai, !noalias !33428

bb.ao:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10datafusion17ZOrderExecContextEEB1o_.exit.i, %bb.b
  %.pn10.pn.ph.i = phi { ptr, i32 } [ %i.w, %bb.b ], [ %.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10datafusion17ZOrderExecContextEEB1o_.exit.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize8MergeBinEBM_(ptr noalias noundef align 8 dereferenceable(32) %i.r) #46
          to label %bb.ap unwind label %bb.ai, !noalias !33428

.critedge14.i:                                    ; preds = %bb.ap, %.thread28.i, %bb.ae
  %.pn10.pn22.i = phi { ptr, i32 } [ %i.cz, %bb.ae ], [ %.pn10.pn.ph.i, %bb.ap ], [ %i.co, %.thread28.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.t) #46
          to label %common.resume.i unwind label %bb.ai, !noalias !33421

bb.ap:                                            ; preds = %bb.ao
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %i.s) #46
          to label %.critedge14.i unwind label %bb.ai, !noalias !33428

_RNCNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBb_9MergePlan7execute00s0_0Bf_.exit: ; preds = %bb.af
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.t), !noalias !33421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtCs8CRAYtH5WmW_12futures_util3fnsNCNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBO_9MergePlan7execute00s_0INtB4_6FnMut1TINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtBO_8MergeBinEE8call_mutBS_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(104) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [72 x i8], align 8                ; 4 uses
  %i.h = alloca [3648 x i8], align 16             ; 12 uses
  %i.i = alloca [792 x i8], align 8               ; 12 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [32 x i8], align 8                ; 8 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
  %i.y = alloca [24 x i8], align 8                ; 7 uses
  %i.z = alloca [32 x i8], align 8                ; 7 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [32 x i8], align 8               ; 8 uses
  %i.ae = alloca [32 x i8], align 8               ; 10 uses
  %i.af = alloca [72 x i8], align 8               ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33481)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !33483
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.af, ptr noundef nonnull readonly align 8 dereferenceable(104) %2, i64 72, i1 false), !noalias !33485
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !33483
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ag, i64 32, i1 false), !noalias !33485
  %i.ah = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !33483
  %i.ai = icmp ult i64 %i.ah, 2
  br i1 %i.ai, label %bb.b, label %bb.m

.thread.loopexit.i:                               ; preds = %bb.ak, %bb.ai, %bb.ah, %bb.ac, %.noexc108.i, %bb.ab, %bb.z, %bb.w, %bb.v
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.thread.i

.thread.loopexit.split-lp.i:                      ; preds = %bb.r, %bb.p, %bb.o, %bb.j, %.noexc102.i, %bb.i, %bb.g, %bb.d, %bb.c
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.thread.i

bb.b:                                             ; preds = %bb.a
  %i.aj = load atomic i8, ptr getelementptr inbounds (i8, ptr @_RNvNCNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBd_9MergePlan7execute00s_010___CALLSITE, i64 16) monotonic, align 8, !noalias !33483 ; 3 uses
  switch i8 %i.aj, label %bb.c [
    i8 0, label %bb.m
    i8 1, label %bb.d
    i8 2, label %bb.d
  ], !prof !10371

bb.c:                                             ; preds = %bb.b
  %i.ak = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBd_9MergePlan7execute00s_010___CALLSITE)
          to label %bb.e unwind label %.thread.loopexit.split-lp.i, !noalias !33483 ; 2 uses

bb.d:                                             ; preds = %bb.b, %bb.e, %bb.b
  %.sroa.06.0.i = phi i8 [ %i.ak, %bb.e ], [ %i.aj, %bb.b ], [ %i.aj, %bb.b ]
  %i.al = load ptr, ptr @_RNvNCNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBd_9MergePlan7execute00s_010___CALLSITE, align 8, !noalias !33483, !nonnull !4, !align !18, !noundef !4
  %i.am = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.al, i8 noundef %.sroa.06.0.i)
          to label %bb.f unwind label %.thread.loopexit.split-lp.i, !noalias !33483

bb.e:                                             ; preds = %bb.c
  %i.an = icmp eq i8 %i.ak, 0
  br i1 %i.an, label %bb.m, label %bb.d

bb.f:                                             ; preds = %bb.d
  br i1 %i.am, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !33483
  %i.ao = load ptr, ptr @_RNvNCNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBd_9MergePlan7execute00s_010___CALLSITE, align 8, !noalias !33483, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !33483
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !33483
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !33483
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !33483, !noundef !4 ; 2 uses
  store i64 %i.ar, ptr %i.aa, align 8, !noalias !33483
  %i.as = icmp ult i64 %i.ar, 33909456017848441
  tail call void @llvm.assume(i1 %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !33483
  store ptr %i.aa, ptr %i.z, align 8, !noalias !33483
  %.sroa.433.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.433.0..sroa_idx.i, align 8, !noalias !33483
  %i.at = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.af, ptr %i.at, align 8, !noalias !33483
  %.sroa.437.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr @_RNvXs_NtCsbpG6u9KFjWn_8indexmap3mapINtB4_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.437.0..sroa_idx.i, align 8, !noalias !33483
  store ptr @195, ptr %i.ab, align 8, !noalias !33483
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.z, ptr %i.au, align 8, !noalias !33483
  store ptr %i.ab, ptr %i.ac, align 8, !noalias !33483
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr @196, ptr %i.av, align 8, !noalias !33483
  store i64 1, ptr %i.ad, align 8, !noalias !33483
  %.sroa.08.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ac, ptr %.sroa.08.sroa.4.0..sroa_idx.i, align 8, !noalias !33483
  %.sroa.08.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx.i, align 8, !noalias !33483
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr %i.ap, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !33483
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !33483
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ad)
          to label %.noexc.i unwind label %.thread.loopexit.split-lp.i, !noalias !33483

.noexc.i:                                         ; preds = %bb.g
  %i.aw = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !33486
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.h, label %bb.k

bb.h:                                             ; preds = %.noexc.i
  %i.ay = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !33486 ; 2 uses
  %i.az = icmp ult i64 %i.ay, 6
  call void @llvm.assume(i1 %i.az)
  %i.ba = icmp samesign ugt i64 %i.ay, 3
  br i1 %i.ba, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bb = load ptr, ptr @_RNvNCNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBd_9MergePlan7execute00s_010___CALLSITE, align 8, !noalias !33486, !nonnull !4, !align !18, !noundef !4 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !33483, !nonnull !4, !noundef !4
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bf = load i64, ptr %i.be, align 8, !noalias !33483, !noundef !4
  store i64 4, ptr %i.b, align 8, !noalias !33486
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.bd, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !33486
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.bf, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !33486
  %i.bg = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc102.i unwind label %.thread.loopexit.split-lp.i, !noalias !33483 ; 2 uses

.noexc102.i:                                      ; preds = %bb.i
  %i.bh = extractvalue { ptr, ptr } %i.bg, 0      ; 2 uses
  %i.bi = extractvalue { ptr, ptr } %i.bg, 1      ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !invariant.load !4, !noalias !33483, !nonnull !4
  %i.bl = invoke noundef zeroext i1 %i.bk(ptr noundef %i.bh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b) #49
          to label %.noexc103.i unwind label %.thread.loopexit.split-lp.i, !noalias !33483, !inline_history !33489

.noexc103.i:                                      ; preds = %.noexc102.i
  br i1 %i.bl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.noexc103.i
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bb, ptr noundef nonnull %i.bh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bi, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ad)
          to label %bb.k unwind label %.thread.loopexit.split-lp.i, !noalias !33483

bb.k:                                             ; preds = %bb.j, %.noexc103.i, %bb.h, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !33483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !33483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !33483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !33483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !33483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !33483
  br label %bb.l

bb.l:                                             ; preds = %bb.s, %bb.q, %bb.n, %bb.m, %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !33483, !nonnull !4, !noundef !4 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !noalias !33483, !noundef !4 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.bp, 272
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.idx.i
  %i.br = icmp eq i64 %i.bp, 0
  br i1 %i.br, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %.sroa.459.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.019.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.019.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.3.0..sroa_idx.i105.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i106.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.364.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.565.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.469.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.471.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.572.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  br label %bb.t

bb.m:                                             ; preds = %bb.f, %bb.e, %bb.b, %bb.a
  %i.bx = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !33483
  %i.by = icmp eq i8 %i.bx, 0
  br i1 %i.by, label %bb.n, label %bb.l

bb.n:                                             ; preds = %bb.m
  %i.bz = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !33483 ; 2 uses
  %i.ca = icmp ult i64 %i.bz, 6
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = icmp samesign ugt i64 %i.bz, 3
  br i1 %i.cb, label %bb.o, label %bb.l

bb.o:                                             ; preds = %bb.n
  %i.cc = load ptr, ptr @_RNvNCNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBd_9MergePlan7execute00s_010___CALLSITE, align 8, !noalias !33483, !nonnull !4, !align !18, !noundef !4 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !noalias !33483, !nonnull !4, !noundef !4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %i.cg = load i64, ptr %i.cf, align 8, !noalias !33483, !noundef !4
  store i64 4, ptr %i.y, align 8, !noalias !33483
  %.sroa.342.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.ce, ptr %.sroa.342.0..sroa_idx.i, align 8, !noalias !33483
  %.sroa.543.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 %i.cg, ptr %.sroa.543.0..sroa_idx.i, align 8, !noalias !33483
  %i.ch = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.p unwind label %.thread.loopexit.split-lp.i, !noalias !33483 ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.ci = extractvalue { ptr, ptr } %i.ch, 0      ; 2 uses
  %i.cj = extractvalue { ptr, ptr } %i.ch, 1      ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !4, !noalias !33483, !nonnull !4
  %i.cm = invoke noundef zeroext i1 %i.cl(ptr noundef %i.ci, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y)
          to label %bb.q unwind label %.thread.loopexit.split-lp.i, !noalias !33483

bb.q:                                             ; preds = %bb.p
  br i1 %i.cm, label %bb.r, label %bb.l

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !33483
  %i.cn = load ptr, ptr @_RNvNCNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBd_9MergePlan7execute00s_010___CALLSITE, align 8, !noalias !33483, !nonnull !4, !align !18, !noundef !4
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !33483
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !33483
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !33483
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !noalias !33483, !noundef !4 ; 2 uses
  store i64 %i.cq, ptr %i.u, align 8, !noalias !33483
  %i.cr = icmp ult i64 %i.cq, 33909456017848441
  call void @llvm.assume(i1 %i.cr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !33483
  store ptr %i.u, ptr %i.t, align 8, !noalias !33483
  %.sroa.447.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.447.0..sroa_idx.i, align 8, !noalias !33483
  %i.cs = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.af, ptr %i.cs, align 8, !noalias !33483
  %.sroa.451.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr @_RNvXs_NtCsbpG6u9KFjWn_8indexmap3mapINtB4_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.451.0..sroa_idx.i, align 8, !noalias !33483
  store ptr @195, ptr %i.v, align 8, !noalias !33483
  %i.ct = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.t, ptr %i.ct, align 8, !noalias !33483
  store ptr %i.v, ptr %i.w, align 8, !noalias !33483
  %i.cu = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @196, ptr %i.cu, align 8, !noalias !33483
  store i64 1, ptr %i.x, align 8, !noalias !33483
  %.sroa.453.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.w, ptr %.sroa.453.0..sroa_idx.i, align 8, !noalias !33483
  %.sroa.554.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 1, ptr %.sroa.554.0..sroa_idx.i, align 8, !noalias !33483
  %i.cv = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr %i.co, ptr %i.cv, align 8, !noalias !33483
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !33483
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !33483
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cc, ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cj, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x)
          to label %bb.s unwind label %.thread.loopexit.split-lp.i, !noalias !33483

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !33483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !33483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !33483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !33483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !33483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !33483
  br label %bb.l

._crit_edge.i:                                    ; preds = %bb.ae, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !33483
  %i.cw = load ptr, ptr %1, align 8, !alias.scope !33481, !noalias !33490, !nonnull !4, !align !18, !noundef !4 ; 4 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !noalias !33483, !nonnull !4, !noundef !4 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !noalias !33483, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.da = atomicrmw add ptr %i.cx, i64 1 monotonic, align 8, !noalias !33483
  %i.db = icmp slt i64 %i.da, 0
  br i1 %i.db, label %bb.an, label %bb.am

bb.t:                                             ; preds = %bb.ae, %.lr.ph.i
  %.sroa.09.0129.i = phi ptr [ %i.bn, %.lr.ph.i ], [ %i.dc, %bb.ae ] ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.09.0129.i, i64 272 ; 2 uses
  %i.dd = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !33483
  %i.de = icmp ult i64 %i.dd, 2
  br i1 %i.de, label %bb.u, label %bb.af

bb.u:                                             ; preds = %bb.t
  %i.df = load atomic i8, ptr getelementptr inbounds (i8, ptr @_RNvNCNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBd_9MergePlan7execute00s_0s_10___CALLSITE, i64 16) monotonic, align 8, !noalias !33483 ; 3 uses
  switch i8 %i.df, label %bb.v [
    i8 0, label %bb.af
    i8 1, label %bb.w
    i8 2, label %bb.w
  ], !prof !10371

bb.v:                                             ; preds = %bb.u
  %i.dg = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBd_9MergePlan7execute00s_0s_10___CALLSITE)
          to label %bb.x unwind label %.thread.loopexit.i, !noalias !33483 ; 2 uses

bb.w:                                             ; preds = %bb.u, %bb.x, %bb.u
  %.sroa.017.0.i = phi i8 [ %i.dg, %bb.x ], [ %i.df, %bb.u ], [ %i.df, %bb.u ]
  %i.dh = load ptr, ptr @_RNvNCNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBd_9MergePlan7execute00s_0s_10___CALLSITE, align 8, !noalias !33483, !nonnull !4, !align !18, !noundef !4
  %i.di = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dh, i8 noundef %.sroa.017.0.i)
          to label %bb.y unwind label %.thread.loopexit.i, !noalias !33483

bb.x:                                             ; preds = %bb.v
  %i.dj = icmp eq i8 %i.dg, 0
  br i1 %i.dj, label %bb.af, label %bb.w

bb.y:                                             ; preds = %bb.w
  br i1 %i.di, label %bb.z, label %bb.af

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !33483
  %i.dk = load ptr, ptr @_RNvNCNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBd_9MergePlan7execute00s_0s_10___CALLSITE, align 8, !noalias !33483, !nonnull !4, !align !18, !noundef !4 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !33483
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !33483
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.09.0129.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !33483
  store ptr %i.dm, ptr %i.p, align 8, !noalias !33483
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.459.0..sroa_idx.i, align 8, !noalias !33483
  store ptr @197, ptr %i.q, align 8, !noalias !33483
  store ptr %i.p, ptr %i.bs, align 8, !noalias !33483
  store ptr %i.q, ptr %i.r, align 8, !noalias !33483
  store ptr @196, ptr %i.bt, align 8, !noalias !33483
  store i64 1, ptr %i.s, align 8, !noalias !33483
  store ptr %i.r, ptr %.sroa.019.sroa.4.0..sroa_idx.i, align 8, !noalias !33483
  store i64 1, ptr %.sroa.019.sroa.5.0..sroa_idx.i, align 8, !noalias !33483
  store ptr %i.dl, ptr %.sroa.420.0..sroa_idx.i, align 8, !noalias !33483
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !33483
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s)
          to label %.noexc107.i unwind label %.thread.loopexit.i, !noalias !33483

.noexc107.i:                                      ; preds = %bb.z
  %i.dn = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !33491
  %i.do = icmp eq i8 %i.dn, 0
  br i1 %i.do, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %.noexc107.i
  %i.dp = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !33491 ; 2 uses
  %i.dq = icmp ult i64 %i.dp, 6
  call void @llvm.assume(i1 %i.dq)
  %i.dr = icmp samesign ugt i64 %i.dp, 3
  br i1 %i.dr, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.ds = load ptr, ptr @_RNvNCNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBd_9MergePlan7execute00s_0s_10___CALLSITE, align 8, !noalias !33491, !nonnull !4, !align !18, !noundef !4 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.du = load ptr, ptr %i.dt, align 8, !noalias !33483, !nonnull !4, !noundef !4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 40
  %i.dw = load i64, ptr %i.dv, align 8, !noalias !33483, !noundef !4
  store i64 4, ptr %i.a, align 8, !noalias !33491
  store ptr %i.du, ptr %.sroa.3.0..sroa_idx.i105.i, align 8, !noalias !33491
  store i64 %i.dw, ptr %.sroa.5.0..sroa_idx.i106.i, align 8, !noalias !33491
  %i.dx = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc108.i unwind label %.thread.loopexit.i, !noalias !33483 ; 2 uses

.noexc108.i:                                      ; preds = %bb.ab
  %i.dy = extractvalue { ptr, ptr } %i.dx, 0      ; 2 uses
  %i.dz = extractvalue { ptr, ptr } %i.dx, 1      ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !invariant.load !4, !noalias !33483, !nonnull !4
  %i.ec = invoke noundef zeroext i1 %i.eb(ptr noundef %i.dy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #49
          to label %.noexc109.i unwind label %.thread.loopexit.i, !noalias !33483, !inline_history !33494

.noexc109.i:                                      ; preds = %.noexc108.i
  br i1 %i.ec, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.noexc109.i
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ds, ptr noundef nonnull %i.dy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dz, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s)
          to label %bb.ad unwind label %.thread.loopexit.i, !noalias !33483

bb.ad:                                            ; preds = %bb.ac, %.noexc109.i, %bb.aa, %.noexc107.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !33483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !33483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !33483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !33483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !33483
  br label %bb.ae

bb.ae:                                            ; preds = %bb.al, %bb.aj, %bb.ag, %bb.af, %bb.ad
  %i.ed = icmp eq ptr %i.dc, %i.bq
  br i1 %i.ed, label %._crit_edge.i, label %bb.t

bb.af:                                            ; preds = %bb.y, %bb.x, %bb.u, %bb.t
  %i.ee = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !33483
  %i.ef = icmp eq i8 %i.ee, 0
  br i1 %i.ef, label %bb.ag, label %bb.ae

bb.ag:                                            ; preds = %bb.af
  %i.eg = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !33483 ; 2 uses
  %i.eh = icmp ult i64 %i.eg, 6
  call void @llvm.assume(i1 %i.eh)
  %i.ei = icmp samesign ugt i64 %i.eg, 3
  br i1 %i.ei, label %bb.ah, label %bb.ae

bb.ah:                                            ; preds = %bb.ag
  %i.ej = load ptr, ptr @_RNvNCNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBd_9MergePlan7execute00s_0s_10___CALLSITE, align 8, !noalias !33483, !nonnull !4, !align !18, !noundef !4 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  %i.el = load ptr, ptr %i.ek, align 8, !noalias !33483, !nonnull !4, !noundef !4
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 40
  %i.en = load i64, ptr %i.em, align 8, !noalias !33483, !noundef !4
  store i64 4, ptr %i.o, align 8, !noalias !33483
  store ptr %i.el, ptr %.sroa.364.0..sroa_idx.i, align 8, !noalias !33483
  store i64 %i.en, ptr %.sroa.565.0..sroa_idx.i, align 8, !noalias !33483
  %i.eo = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.ai unwind label %.thread.loopexit.i, !noalias !33483 ; 2 uses

bb.ai:                                            ; preds = %bb.ah
  %i.ep = extractvalue { ptr, ptr } %i.eo, 0      ; 2 uses
  %i.eq = extractvalue { ptr, ptr } %i.eo, 1      ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = load ptr, ptr %i.er, align 8, !invariant.load !4, !noalias !33483, !nonnull !4
  %i.et = invoke noundef zeroext i1 %i.es(ptr noundef %i.ep, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o)
          to label %bb.aj unwind label %.thread.loopexit.i, !noalias !33483

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.et, label %bb.ak, label %bb.ae

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !33483
  %i.eu = load ptr, ptr @_RNvNCNCNCNvMs7_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtBd_9MergePlan7execute00s_0s_10___CALLSITE, align 8, !noalias !33483, !nonnull !4, !align !18, !noundef !4
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !33483
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !33483
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.09.0129.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !33483
  store ptr %i.ew, ptr %i.k, align 8, !noalias !33483
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.469.0..sroa_idx.i, align 8, !noalias !33483
  store ptr @197, ptr %i.l, align 8, !noalias !33483
  store ptr %i.k, ptr %i.bu, align 8, !noalias !33483
  store ptr %i.l, ptr %i.m, align 8, !noalias !33483
  store ptr @196, ptr %i.bv, align 8, !noalias !33483
  store i64 1, ptr %i.n, align 8, !noalias !33483
  store ptr %i.m, ptr %.sroa.471.0..sroa_idx.i, align 8, !noalias !33483
  store i64 1, ptr %.sroa.572.0..sroa_idx.i, align 8, !noalias !33483
  store ptr %i.ev, ptr %i.bw, align 8, !noalias !33483
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !33483
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !33483
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ej, ptr noundef nonnull %i.ep, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.eq, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n)
          to label %bb.al unwind label %.thread.loopexit.i, !noalias !33483

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !33483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !33483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !33483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !33483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !33483
  br label %bb.ae

bb.am:                                            ; preds = %._crit_edge.i
  store ptr %i.cx, ptr %i.j, align 8, !noalias !33483
  %i.ex = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.cz, ptr %i.ex, align 8, !noalias !33483
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !33483
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !33483
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneBN_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae)
          to label %bb.ao unwind label %bb.aw, !noalias !33483

bb.an:                                            ; preds = %._crit_edge.i
  call void @llvm.trap()
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.ey = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !noalias !33483, !nonnull !4, !noundef !4 ; 3 uses
  %i.fa = load i64, ptr %i.e, align 8, !range !16, !noalias !33483, !noundef !4
  %i.fb = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.fc = load i64, ptr %i.fb, align 8, !noalias !33483, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !33483
  %i.fd = icmp ult i64 %i.fc, 33909456017848441
  call void @llvm.assume(i1 %i.fd)
  %i.fe = getelementptr inbounds nuw [272 x i8], ptr %i.ez, i64 %i.fc
  store i64 0, ptr %i.i, align 8, !noalias !33483
  %.sroa.021.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 616
  store ptr %i.ez, ptr %.sroa.021.sroa.4.0..sroa_idx.i, align 8, !noalias !33483
  %.sroa.021.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 624
  store ptr %i.ez, ptr %.sroa.021.sroa.5.0..sroa_idx.i, align 8, !noalias !33483
  %.sroa.021.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 632
  store i64 %i.fa, ptr %.sroa.021.sroa.6.0..sroa_idx.i, align 8, !noalias !33483
  %.sroa.021.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 640
  store ptr %i.fe, ptr %.sroa.021.sroa.7.0..sroa_idx.i, align 8, !noalias !33483
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 648
  store ptr %i.cx, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !33483
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 656
  store ptr %i.cz, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !33483
  %i.ff = getelementptr inbounds nuw i8, ptr %i.i, i64 664
  store i64 3, ptr %i.ff, align 8, !noalias !33483
end_hunk_6
