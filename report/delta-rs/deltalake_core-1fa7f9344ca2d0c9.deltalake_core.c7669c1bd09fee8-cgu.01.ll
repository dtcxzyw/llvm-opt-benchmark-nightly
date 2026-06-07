inline.NumInlined: 11461
inline.NumDeleted: 4051
begin_hunk_0_@_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories7actionsNtB2_13ActionFactory7add_raw:bb.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories9FileStatsEBM_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit3.i
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %1)
  ret void

bb.ai:                                            ; preds = %.thread, %.body19, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit31, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit, %.body28, %bb.ac
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.body19
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #42
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit31 unwind label %bb.ai

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit31: ; preds = %.thread, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit
  %.pn.pn44 = phi { ptr, i32 } [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.n, %.thread ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories9FileStatsEBM_(ptr noalias noundef align 8 dereferenceable(152) %2) #42
          to label %.body28 unwind label %bb.ai

.thread:                                          ; preds = %bb.b
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEENtNtNtB1w_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %3)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB4_6option6OptionB1B_EEECs14kWLkQVSKO_14deltalake_core.exit31 unwind label %bb.ai

bb.aj:                                            ; preds = %.body28
  resume { ptr, i32 } %.pn15
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf4scanNtB2_21DeltaCdfTableProvider7try_new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 16 captures(none) dereferenceable(144) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(128) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [80 x i8], align 8                ; 7 uses
  %i.f = alloca [128 x i8], align 8               ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [64 x i8], align 8                ; 4 uses
  %i.i = alloca [128 x i8], align 8               ; 5 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [96 x i8], align 16               ; 9 uses
  %i.m = alloca [8 x i8], align 8                 ; 8 uses
  %i.n = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !range !65, !noundef !8
  %.not = icmp eq i64 %i.p, -9223372036854775808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvMs0_NtCs14kWLkQVSKO_14deltalake_core6errorsNtB6_15DeltaTableError7genericReEB8_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @618, i64 noundef 55)
          to label %bb.g unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RINvMs0_NtCs14kWLkQVSKO_14deltalake_core6errorsNtB6_15DeltaTableError7genericReEB8_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @618, i64 noundef 55)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.g, %bb.c, %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.e:                                             ; preds = %bb.c
  %.sroa.020.0.copyload = load i64, ptr %i.l, align 16
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.421.0.copyload = load ptr, ptr %.sroa.421.0..sroa_idx, align 8
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.330.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.522.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.020.0.copyload, ptr %i.r, align 16
  %.sroa.229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.421.0.copyload, ptr %.sroa.229.0..sroa_idx, align 8
  store i64 1, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8load_cdf14CdfLoadBuilderEBM_(ptr noalias noundef align 8 dereferenceable(128) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.ab, %bb.e
  ret void

bb.g:                                             ; preds = %bb.b
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBK_(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.l)
          to label %bb.h unwind label %bb.d

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.s = invoke noundef nonnull ptr @_RNvXs2_NtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtNtB7_6kernel8snapshot13EagerSnapshotNtB5_16DataFusionMixins12input_schema(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o)
          to label %bb.i unwind label %bb.d       ; 3 uses

bb.i:                                             ; preds = %bb.h
  store ptr %i.s, ptr %i.m, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !8, !noundef !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.w = load i64, ptr %i.v, align 8, !noundef !8 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29762)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !29765
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef range(i64 0, 1152921504606846976) %i.w, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.i
  %i.y = load i64, ptr %i.d, align 8, !range !64, !noalias !29765, !noundef !8
  %i.z = trunc nuw i64 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !65, !noalias !29765, !noundef !8 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.z, label %bb.j, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i, !prof !3

bb.j:                                             ; preds = %.noexc
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !29765
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ab, i64 %i.ad) #41
          to label %.noexc41 unwind label %bb.m

.noexc41:                                         ; preds = %bb.j
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.noexc
  %i.ae = load ptr, ptr %i.ac, align 8, !noalias !29765, !nonnull !8, !noundef !8 ; 2 uses
  %i.af = icmp ule i64 %i.w, %i.ab
  call void @llvm.assume(i1 %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !29765
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.w
  %i.ah = icmp eq i64 %i.ab, 0
  br i1 %i.ah, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i, %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.10.023.i = phi i64 [ %i.ai, %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.ab, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i ]
  %.sroa.013.022.i = phi ptr [ %i.an, %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.x, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i ] ; 3 uses
  %.sroa.7.021.i = phi i64 [ %i.am, %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i ], [ 0, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i ] ; 2 uses
  %i.ai = add i64 %.sroa.10.023.i, -1             ; 2 uses
  %i.aj = icmp eq ptr %.sroa.013.022.i, %i.ag
  br i1 %i.aj, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %.val12.i = load ptr, ptr %.sroa.013.022.i, align 8, !alias.scope !29762, !noalias !29767, !nonnull !8, !noundef !8 ; 2 uses
  %i.ak = atomicrmw add ptr %.val12.i, i64 1 monotonic, align 8, !noalias !29765
  %i.al = icmp slt i64 %i.ak, 0
  br i1 %i.al, label %bb.l, label %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i

bb.l:                                             ; preds = %bb.k
  call void @llvm.trap()
  unreachable

_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.k
  %i.am = add nuw nsw i64 %.sroa.7.021.i, 1
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.013.022.i, i64 8
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.sroa.7.021.i
  store ptr %.val12.i, ptr %i.ao, align 8, !noalias !29765
  %i.ap = icmp eq i64 %i.ai, 0
  br i1 %i.ap, label %.loopexit, label %.lr.ph.i

bb.m:                                             ; preds = %bb.j, %bb.i
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29768)
  call void @llvm.experimental.noalias.scope.decl(metadata !29771)
  %i.ar = load ptr, ptr %i.m, align 8, !alias.scope !29774, !nonnull !8, !noundef !8
  %i.as = atomicrmw sub ptr %i.ar, i64 1 release, align 8, !noalias !29774
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.n, label %bb.al

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m) #45
          to label %bb.al unwind label %bb.ac

.loopexit:                                        ; preds = %_RNvXsu_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit.i, %.lr.ph.i, %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i
  store i64 %i.ab, ptr %i.n, align 8, !noalias !29762
  %.sroa.4.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store ptr %i.ae, ptr %.sroa.4.0..sroa_idx60, align 8, !noalias !29762
  %.sroa.5.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  store i64 %i.w, ptr %.sroa.5.0..sroa_idx61, align 8, !noalias !29762
  call void @llvm.experimental.noalias.scope.decl(metadata !29775)
  call void @llvm.experimental.noalias.scope.decl(metadata !29778)
  %i.au = load ptr, ptr %i.m, align 8, !alias.scope !29781, !nonnull !8, !noundef !8
  %i.av = atomicrmw sub ptr %i.au, i64 1 release, align 8, !noalias !29781
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit44

bb.o:                                             ; preds = %.loopexit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit44 unwind label %bb.p

bb.p:                                             ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.q, %bb.o, %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE5force0ECs14kWLkQVSKO_14deltalake_core.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit44: ; preds = %.loopexit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ay = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf20ADD_PARTITION_SCHEMA, i64 24) acquire, align 8
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE5force0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.q, !prof !215

bb.q:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @_RNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf20ADD_PARTITION_SCHEMA, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  invoke void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf20ADD_PARTITION_SCHEMA, i64 24), i1 noundef zeroext true, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @30, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32)
          to label %.noexc45 unwind label %bb.p

.noexc45:                                         ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE5force0ECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE5force0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.noexc45, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit44
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @_RNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion3cdf20ADD_PARTITION_SCHEMA)
          to label %bb.r unwind label %bb.p

bb.r:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE5force0ECs14kWLkQVSKO_14deltalake_core.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !8, !noundef !8 ; 4 uses
  %i.bc = load i64, ptr %i.k, align 8, !range !231, !noundef !8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !noundef !8 ; 3 uses
  %i.bf = icmp ult i64 %i.be, 82351536043346213
  call void @llvm.assume(i1 %i.bf)
  %.idx = mul nuw nsw i64 %i.be, 112
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.bb, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  store ptr %i.bb, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.bc, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  store ptr %i.bg, ptr %.sroa.615.0..sroa_idx, align 8
  %i.bh = icmp eq i64 %i.be, 0
  br i1 %i.bh, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.lr.ph

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.lr.ph: ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  br label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit

.body:                                            ; preds = %bb.af, %bb.ag, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.bo, %bb.u ], [ %i.cc, %bb.af ], [ %i.cc, %bb.ag ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %bb.aj unwind label %bb.ac

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.lr.ph, %bb.ai
  %i.bk = phi ptr [ %i.bb, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.lr.ph ], [ %i.ck, %bb.ai ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29782)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 112
  store ptr %i.bl, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !29782, !noalias !29785
  %.sroa.0.0.copyload55 = load i64, ptr %i.bk, align 8, !noalias !29782 ; 2 uses
  %.not36 = icmp eq i64 %.sroa.0.0.copyload55, -9223372036854775808
  br i1 %.not36, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.s

bb.s:                                             ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.756.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.756.0..sroa_idx57, i64 104, i1 false)
  store i64 1, ptr %i.f, align 8
  store i64 1, ptr %i.bi, align 8
  store i64 %.sroa.0.0.copyload55, ptr %i.bj, align 8
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !29787
  %i.bm = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 7409) 128, i64 noundef range(i64 8, 17) 8) #46, !noalias !29787 ; 5 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.t, label %bb.ad, !prof !308

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #41
          to label %.noexc47 unwind label %bb.u

.noexc47:                                         ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(112) %i.bj)
          to label %.body unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit, %bb.ai, %bb.r
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit50 unwind label %bb.p

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit50: ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.i, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  invoke void @_RINvMs5_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB6_6Schema3newINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB12_4sync3ArcNtNtB8_5field5FieldEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.h, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit50
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body39

.body39:                                          ; preds = %bb.z, %bb.w
  %eh.lpad-body40 = phi { ptr, i32 } [ %i.bq, %bb.w ], [ %i.bv, %bb.z ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8load_cdf14CdfLoadBuilderEBM_(ptr noalias noundef align 8 dereferenceable(128) %i.i) #42
          to label %bb.ak unwind label %bb.ac

bb.x:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 1, ptr %i.e, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bs, ptr noundef nonnull align 8 dereferenceable(64) %i.h, i64 64, i1 false)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !29790
  %i.bt = call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 7409) 80, i64 noundef range(i64 8, 17) 8) #46, !noalias !29790 ; 3 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.y, label %bb.ab, !prof !308

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #41
          to label %.noexc51 unwind label %bb.z

.noexc51:                                         ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.e) #42
          to label %.body39 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.ab:                                            ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bt, ptr noundef nonnull align 8 dereferenceable(80) %i.e, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.bx, ptr noundef nonnull align 8 dereferenceable(128) %i.i, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.bt, ptr %.sroa.417.0..sroa_idx, align 8
  store i64 0, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.f

bb.ac:                                            ; preds = %.body, %bb.n, %bb.al, %bb.aj, %.body39
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.ad:                                            ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.bm, ptr noundef nonnull align 8 dereferenceable(128) %i.f, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !29793)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bm, ptr %i.a, align 8, !noalias !29793
  %i.bz = load i64, ptr %.sroa.5.0..sroa_idx61, align 8, !alias.scope !29793, !noundef !8 ; 3 uses
  %i.ca = load i64, ptr %i.n, align 8, !range !231, !alias.scope !29793, !noundef !8
  %i.cb = icmp eq i64 %i.bz, %i.ca
  br i1 %i.cb, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE8grow_oneB17_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.ai unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = atomicrmw sub ptr %i.bm, i64 1 release, align 8, !noalias !29796
  %i.ce = icmp eq i64 %i.cd, 1
  br i1 %i.ce, label %bb.ag, label %.body

bb.ag:                                            ; preds = %bb.af
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #45
          to label %.body unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.ai:                                            ; preds = %bb.ae, %bb.ad
  %i.cg = load ptr, ptr %.sroa.4.0..sroa_idx60, align 8, !alias.scope !29793, !nonnull !8, !noundef !8
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.bz
  store ptr %i.bm, ptr %i.ch, align 8
  %i.ci = add i64 %i.bz, 1
  store i64 %i.ci, ptr %.sroa.5.0..sroa_idx61, align 8, !alias.scope !29793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cj = load ptr, ptr %.sroa.615.0..sroa_idx, align 8, !alias.scope !29801, !noalias !29785, !nonnull !8, !noundef !8
end_hunk_0
begin_hunk_1_@_RNvMs0_NtCs14kWLkQVSKO_14deltalake_core10operationsNtB5_8DeltaOps8load_cdf:bb.a
  %i.b = load <2 x ptr>, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.03.0.copyload = load i64, ptr %i.c, align 8 ; 2 uses
  %.not = icmp eq i64 %.sroa.03.0.copyload, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.55.0..sroa_idx, i64 24, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.03.0.copyload, ptr %i.d, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x ptr> %i.b, ptr %i.e, align 8
  store i64 0, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 0, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr null, ptr %i.j, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeEEB1a_(ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtCs14kWLkQVSKO_14deltalake_core10operationsNtB5_8DeltaOps8optimize(ptr dead_on_unwind noalias noundef writable sret([496 x i8]) align 8 captures(none) dereferenceable(496) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(120) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !8, !align !216, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.0.0.copyload = load i64, ptr %i.f, align 8 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, i64 24, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  store i64 %.sroa.0.0.copyload, ptr %i.a, align 8
  invoke void @_RNvMs3_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtB5_15OptimizeBuilder3new(ptr noalias noundef nonnull sret([496 x i8]) align 8 captures(none) dereferenceable(496) %0, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.e, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeEEB1a_(ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeEEB1a_(ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  ret void

bb.f:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigEBM_.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtCs14kWLkQVSKO_14deltalake_core8protocolNtB5_12PartialStats8as_stats(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([152 x i8]) align 8 captures(none) dereferenceable(152) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(152) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.512.sroa.0 = alloca [24 x i8], align 8   ; 5 uses
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  store ptr null, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  store ptr null, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.h = load i64, ptr %i.g, align 8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.sroa.0.0.copyload, ptr %i.b, align 8
  %.sroa.3.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3.0..sroa_idx, i64 40, i1 false)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.i = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @308)
          to label %bb.e unwind label %.thread    ; 2 uses

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit39
  br i1 %.sroa.014.1, label %bb.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEEB2D_.exit

.thread:                                          ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  %i.k = extractvalue { i64, i64 } %i.i, 0
  %i.l = extractvalue { i64, i64 } %i.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @305, i64 32, i1 false)
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.k, ptr %.sroa.422.0..sroa_idx, align 8
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.l, ptr %.sroa.523.0..sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.03.0.copyload = load ptr, ptr %i.d, align 8 ; 2 uses
  %.not35 = icmp eq ptr %.sroa.03.0.copyload, null
  br i1 %.not35, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.03.0.copyload, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx5, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, i64 40, i1 false)
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.m = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @308)
          to label %bb.j unwind label %bb.i       ; 2 uses

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit39: ; preds = %bb.n, %bb.i
  %.sroa.014.1 = phi i1 [ true, %bb.i ], [ false, %bb.n ]
  %.pn = phi { ptr, i32 } [ %i.n, %bb.i ], [ %i.r, %bb.n ] ; 2 uses
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB1v_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %bb.d unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit39

bb.j:                                             ; preds = %bb.h
  %i.o = extractvalue { i64, i64 } %i.m, 0
  %i.p = extractvalue { i64, i64 } %i.m, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @305, i64 32, i1 false)
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.o, ptr %.sroa.425.0..sroa_idx, align 8
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.p, ptr %.sroa.526.0..sroa_idx, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.512.sroa.0)
  %.sroa.06.0.copyload = load ptr, ptr %i.c, align 8 ; 2 uses
  %.not36 = icmp eq ptr %.sroa.06.0.copyload, null
  br i1 %.not36, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.58.sroa.5.0..sroa.58.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.58.sroa.5.0.copyload = load i64, ptr %.sroa.58.sroa.5.0..sroa.58.0..sroa_idx.sroa_idx, align 8
  %.sroa.58.sroa.4.0..sroa.58.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.58.sroa.4.0.copyload = load i64, ptr %.sroa.58.sroa.4.0..sroa.58.0..sroa_idx.sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.512.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.58.0..sroa_idx, i64 24, i1 false)
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.q = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @308)
          to label %bb.o unwind label %bb.n       ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB1v_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit39 unwind label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.s = extractvalue { i64, i64 } %i.q, 0
  %i.t = extractvalue { i64, i64 } %i.q, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.512.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds (i8, ptr @305, i64 8), i64 24, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.sroa.512.sroa.5.0 = phi i64 [ %.sroa.58.sroa.4.0.copyload, %bb.l ], [ %i.s, %bb.o ]
  %.sroa.010.0 = phi ptr [ %.sroa.06.0.copyload, %bb.l ], [ @304, %bb.o ]
  %.sroa.512.sroa.6.0 = phi i64 [ %.sroa.58.sroa.5.0.copyload, %bb.l ], [ %i.t, %bb.o ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %i.h, ptr %i.u, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.sroa.010.0, ptr %i.w, align 8
  %.sroa.512.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.512.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.512.sroa.0, i64 24, i1 false)
  %.sroa.512.sroa.5.0..sroa.512.0..sroa_idx13.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %.sroa.512.sroa.5.0, ptr %.sroa.512.sroa.5.0..sroa.512.0..sroa_idx13.sroa_idx, align 8
  %.sroa.512.sroa.6.0..sroa.512.0..sroa_idx13.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %.sroa.512.sroa.6.0, ptr %.sroa.512.sroa.6.0..sroa.512.0..sroa_idx13.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.512.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.q:                                             ; preds = %bb.t, %bb.s, %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEB2h_.exit39
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

.noexc:                                           ; preds = %bb.s, %bb.r
  %i.y = load ptr, ptr %i.d, align 8
  %i.z = icmp eq ptr %i.y, null
  %or.cond = select i1 %.sroa.015.045.not, i1 true, i1 %i.z
  br i1 %or.cond, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEEB2D_.exit, label %bb.t

bb.r:                                             ; preds = %.thread, %bb.d
  %.pn.pn47 = phi { ptr, i32 } [ %i.j, %.thread ], [ %.pn, %bb.d ] ; 2 uses
  %.sroa.015.045.not = phi i1 [ false, %.thread ], [ true, %bb.d ]
  %i.aa = load ptr, ptr %i.c, align 8, !alias.scope !29853, !noundef !8
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.noexc, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnCountStatEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB1v_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %.noexc unwind label %bb.q

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEEB2D_.exit: ; preds = %bb.d, %bb.t, %.noexc
  %.pn.pn4651 = phi { ptr, i32 } [ %.pn, %bb.d ], [ %.pn.pn47, %.noexc ], [ %.pn.pn47, %bb.t ]
  resume { ptr, i32 } %.pn.pn4651

bb.t:                                             ; preds = %.noexc
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB1v_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs14kWLkQVSKO_14deltalake_core8protocol15ColumnValueStatEEEB2D_.exit unwind label %bb.q
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations4loadNtB5_11LoadBuilder18with_session_state(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(88) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29856)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !29856, !noundef !8 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8PD1TAMvwcd_18datafusion_session7session7SessionEL_EEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !29859
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8PD1TAMvwcd_18datafusion_session7session7SessionEL_EEECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs8PD1TAMvwcd_18datafusion_session7session7SessionEL_E9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8PD1TAMvwcd_18datafusion_session7session7SessionEL_EEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  store ptr %2, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr %3, ptr %i.g, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations4load11LoadBuilderEBM_(ptr noalias noundef align 8 dereferenceable(88) %1) #42
          to label %bb.f unwind label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8PD1TAMvwcd_18datafusion_session7session7SessionEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b, %bb.a, %bb.c
  store ptr %2, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr %3, ptr %i.h, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6deleteNtB5_13DeleteBuilder18with_session_state(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([544 x i8]) align 16 captures(none) dereferenceable(544) %0, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(544) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29864)
  %i.b = load ptr, ptr %i.a, align 16, !alias.scope !29864, !noundef !8 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8PD1TAMvwcd_18datafusion_session7session7SessionEL_EEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !29867
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8PD1TAMvwcd_18datafusion_session7session7SessionEL_EEECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs8PD1TAMvwcd_18datafusion_session7session7SessionEL_E9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8PD1TAMvwcd_18datafusion_session7session7SessionEL_EEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  store ptr %2, ptr %i.a, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 168
  store ptr %3, ptr %i.g, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations6delete13DeleteBuilderEBM_(ptr noalias noundef align 16 dereferenceable(544) %1) #42
          to label %bb.f unwind label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8PD1TAMvwcd_18datafusion_session7session7SessionEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b, %bb.a, %bb.c
  store ptr %2, ptr %i.a, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 168
  store ptr %3, ptr %i.h, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(544) %0, ptr noundef nonnull align 16 dereferenceable(544) %1, i64 544, i1 false)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6deleteNtB5_13DeleteBuilder22with_commit_properties(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([544 x i8]) align 16 captures(none) dereferenceable(544) %0, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(544) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(88) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 440 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 464
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions11TransactionEEB1l_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.a) #42
          to label %.body unwind label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions11TransactionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBN_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions11TransactionEEB1l_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions11TransactionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBU_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.a)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions11TransactionEEB1l_.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECs14kWLkQVSKO_14deltalake_core.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions11TransactionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBU_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16CommitPropertiesEBM_.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions11TransactionEEB1l_.exit.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.c, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.g, %bb.f ], [ %i.d, %bb.c ], [ %i.c, %bb.b ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 88, i1 false)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations6delete13DeleteBuilderEBM_(ptr noalias noundef align 16 dereferenceable(544) %1) #42
          to label %bb.h unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16CommitPropertiesEBM_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions11TransactionEEB1l_.exit.i
end_hunk_1
begin_hunk_2_@_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations16filesystem_checkNtB4_22FileSystemCheckBuilder22with_commit_properties:bb.a
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations16filesystem_check22FileSystemCheckBuilderEBM_(ptr noalias noundef align 8 dereferenceable(160) %1) #42
          to label %bb.h unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16CommitPropertiesEBM_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions11TransactionEEB1l_.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 88, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1, i64 160, i1 false)
  ret void

bb.g:                                             ; preds = %.body
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.h:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations16filesystem_checkNtB4_22FileSystemCheckBuilder27with_custom_execute_handler(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(160) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31641)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !31641, !noundef !8 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !31644
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  store ptr %2, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 144
  store ptr %3, ptr %i.g, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations16filesystem_check22FileSystemCheckBuilderEBM_(ptr noalias noundef align 8 dereferenceable(160) %1) #42
          to label %bb.f unwind label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EEEB1F_.exit: ; preds = %bb.b, %bb.a, %bb.c
  store ptr %2, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 144
  store ptr %3, ptr %i.h, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1, i64 160, i1 false)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations16filesystem_checkNtB4_22FileSystemCheckBuilder3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %2, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs3_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB5_16CommitPropertiesNtNtCsbvkFyIu7lgC_4core7default7Default7default(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = atomicrmw sub ptr %1, i64 1 release, align 8, !noalias !31649
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %2, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 0, ptr %i.k, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr null, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.f, %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit: ; preds = %bb.b, %bb.c
  %i.n = load i64, ptr %i.c, align 8, !range !65, !alias.scope !31654, !noundef !8
  %i.o = icmp eq i64 %i.n, -9223372036854775808
  br i1 %i.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEEB18_.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEBM_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEEB18_.exit unwind label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEEB18_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EEB1j_.exit, %bb.f
  resume { ptr, i32 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations8load_cdfNtB4_14CdfLoadBuilder19get_add_action_type(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(64) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31657
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 6, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !31657
  %i.b = load i64, ptr %i.a, align 8, !range !64, !noalias !31657, !noundef !8
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !65, !noalias !31657, !noundef !8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RINvXs_NvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, !prof !3

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8, !noalias !31657
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #41, !noalias !31657
  unreachable

_RINvXs_NvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !noalias !31657, !nonnull !8, !noundef !8 ; 2 uses
  %i.i = icmp ugt i64 %i.e, 5
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !31657
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.h, ptr noundef nonnull align 1 dereferenceable(6) @662, i64 6, i1 false), !noalias !31661
  store i128 19, ptr %0, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 16
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.h, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 6, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 16
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations8load_cdfNtB4_14CdfLoadBuilder22get_remove_action_type(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(64) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31662
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 6, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !31662
  %i.b = load i64, ptr %i.a, align 8, !range !64, !noalias !31662, !noundef !8
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !65, !noalias !31662, !noundef !8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RINvXs_NvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit, !prof !3

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8, !noalias !31662
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #41, !noalias !31662
  unreachable

_RINvXs_NvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !noalias !31662, !nonnull !8, !noundef !8 ; 2 uses
  %i.i = icmp ugt i64 %i.e, 5
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !31662
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.h, ptr noundef nonnull align 1 dereferenceable(6) @73, i64 6, i1 false), !noalias !31666
  store i128 19, ptr %0, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 16
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.h, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 6, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 16
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factoriesNtB4_11TestSchemas6simple() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factoriesNtB6_11TestSchemas6simple6SIMPLE, i64 144) acquire, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE5force0ECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b, !prof !215

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factoriesNtB6_11TestSchemas6simple6SIMPLE, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factoriesNtB6_11TestSchemas6simple6SIMPLE, i64 144), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE5force0ECs14kWLkQVSKO_14deltalake_core.exit

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE5force0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %bb.b
  ret ptr @_RNvNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factoriesNtB6_11TestSchemas6simple6SIMPLE
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core8logstore7storageNtB4_26DefaultObjectStoreRegistry3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @308) ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0
  %i.c = extractvalue { i64, i64 } %i.a, 1
  tail call void @_RNvMs1_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EE24with_capacity_and_hasherCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, i64 noundef 0, i64 noundef %i.b, i64 noundef %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB8_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE16check_unnest_argB1l_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  %i.h = alloca [24 x i8], align 8                ; 2 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %i.k = alloca [24 x i8], align 8                ; 10 uses
  %i.l = alloca [24 x i8], align 8                ; 2 uses
  %i.m = alloca [40 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RNvXNtCs8VI8w5SIoU4_15datafusion_expr11expr_schemaNtNtB4_4expr4ExprNtB2_13ExprSchemable8get_type(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.m, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) @429)
  %i.o = load i64, ptr %i.m, align 8, !range !43, !noundef !8 ; 2 uses
  %.not = icmp eq i64 %i.o, 20
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.615.0.copyload = load i64, ptr %.sroa.615.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.sroa.217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.217.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store i64 %i.o, ptr %0, align 8
  %.sroa.318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.615.0.copyload, ptr %.sroa.318.0..sroa_idx, align 8
  br label %bb.af

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  %i.q = load i8, ptr %i.n, align 8, !range !6825, !noundef !8
  switch i8 %i.q, label %bb.d [
    i8 0, label %bb.f
    i8 27, label %bb.s
    i8 29, label %bb.s
    i8 30, label %bb.s
    i8 32, label %bb.s
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !31667
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, -9223372036854775808) 54, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  %i.r = load i64, ptr %i.b, align 8, !range !64, !noalias !31667, !noundef !8
  %i.s = trunc nuw i64 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !65, !noalias !31667, !noundef !8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.v, !prof !3

bb.e:                                             ; preds = %.noexc
  %i.w = load i64, ptr %i.v, align 8, !noalias !31667
  br label %.invoke

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31680
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 34, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc64 unwind label %bb.h

.noexc64:                                         ; preds = %bb.f
  %i.x = load i64, ptr %i.a, align 8, !range !64, !noalias !31680, !noundef !8
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !65, !noalias !31680, !noundef !8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.y, label %bb.g, label %bb.i, !prof !3

bb.g:                                             ; preds = %.noexc64
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !31680
  br label %.invoke

.invoke:                                          ; preds = %bb.e, %bb.g
  %i.ad = phi i64 [ %i.aa, %bb.g ], [ %i.u, %bb.e ]
  %i.ae = phi i64 [ %i.ac, %bb.g ], [ %i.w, %bb.e ]
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ad, i64 %i.ae) #41
          to label %.cont unwind label %bb.h

.cont:                                            ; preds = %.invoke
  unreachable

.body72:                                          ; preds = %bb.ad, %bb.q, %bb.h, %.body80, %.body
  %.pn51.pn = phi { ptr, i32 } [ %.pn51, %.body80 ], [ %.pn, %.body ], [ %i.au, %bb.q ], [ %i.af, %bb.h ], [ %i.bl, %bb.ad ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.n) #42
          to label %bb.ag unwind label %bb.t

bb.h:                                             ; preds = %.invoke, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i85, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i71, %bb.f, %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body72

bb.i:                                             ; preds = %.noexc64
  %i.ag = load ptr, ptr %i.ab, align 8, !noalias !31680, !nonnull !8, !noundef !8 ; 2 uses
  %i.ah = icmp ugt i64 %i.aa, 33
  call void @llvm.assume(i1 %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !31680
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) %i.ag, ptr noundef nonnull readonly align 1 dereferenceable(34) @663, i64 range(i64 0, -9223372036854775808) 34, i1 false), !noalias !31693
  store i64 %i.aa, ptr %i.k, align 8
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.ag, ptr %.sroa.491.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 34, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.k unwind label %bb.j

.body:                                            ; preds = %bb.o, %bb.j, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.n ], [ %i.ai, %bb.j ], [ %i.as, %bb.o ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k) #42
          to label %.body72 unwind label %bb.t

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.l, %bb.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.i
  %i.aj = load i64, ptr %i.d, align 8, !range !64, !noundef !8
  %i.ak = trunc nuw i64 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.am = load i64, ptr %i.al, align 8, !range !65, !noundef !8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.ak, label %bb.l, label %bb.m, !prof !3

bb.l:                                             ; preds = %bb.k
  %i.ao = load i64, ptr %i.an, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.am, i64 %i.ao) #41
          to label %bb.u unwind label %bb.j

bb.m:                                             ; preds = %bb.k
  %i.ap = load ptr, ptr %i.an, align 8, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.am, ptr %i.j, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.ap, ptr %.sroa.422.0..sroa_idx, align 8
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %.sroa.523.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.k, ptr %i.i, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.427.0..sroa_idx, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.j, ptr %i.aq, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.431.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @52, ptr noundef nonnull %i.i)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit68 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #42
          to label %.body unwind label %bb.t

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit68: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.o

bb.o:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit68
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body unwind label %bb.p

bb.p:                                             ; preds = %bb.o
end_hunk_2
begin_hunk_3_@_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a

bb.gs:                                            ; preds = %bb.bh
  %i.tk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #42
          to label %bb.bq unwind label %bb.bp

bb.gt:                                            ; preds = %bb.bh
  %i.tl = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tl, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.tm, ptr noundef nonnull align 8 dereferenceable(88) %i.i, i64 88, i1 false)
  store i64 64, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.bm
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtNtCs14kWLkQVSKO_14deltalake_core8logstore7storageNtB5_11LimitConfigNtNtB7_6config12TryUpdateKey14try_update_key(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) initializes((0, 9)) %0, ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 7 uses
  switch i64 %3, label %bb.e [
    i64 15, label %bb.b
    i64 17, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %2, align 1
  %i.c = xor i64 %i.b, 7164786529787208045
  %i.d = getelementptr i8, ptr %2, i64 7
  %i.e = load i64, ptr %i.d, align 1
  %i.f = xor i64 %i.e, 8746956283274491235
  %i.g = or i64 %i.c, %i.f
  %i.h = icmp ne i64 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.d, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore6config11parse_usize(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5)
  %i.k = load i64, ptr %i.a, align 16, !range !296, !noundef !8 ; 2 uses
  %.not = icmp eq i64 %i.k, -9223372036854775711
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.n = load i128, ptr %2, align 1
  %i.o = xor i128 %i.n, 140137038154194223340287374849053978467
  %i.p = getelementptr i8, ptr %2, i64 16
  %i.q = load i8, ptr %i.p, align 1
  %i.r = zext i8 %i.q to i128
  %i.s = xor i128 %i.r, 116
  %i.t = or i128 %i.o, %i.s
  %i.u = icmp ne i128 %i.t, 0
  %i.v = zext i1 %i.u to i32
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.c, label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.a, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.x, align 8
  store i64 -9223372036854775711, ptr %0, align 16
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.e
  ret void

bb.g:                                             ; preds = %bb.c
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %.sroa.312.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(80) %.sroa.69.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.k, ptr %0, align 16
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %.sroa.211.0..sroa_idx, align 8
  br label %bb.f

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 1, ptr %1, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.m, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.z, align 8
  store i64 -9223372036854775711, ptr %0, align 16
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtNtCs14kWLkQVSKO_14deltalake_core8logstore7storageNtB5_11LimitConfigNtNtB7_6config12TryUpdateKey21load_from_environment(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [96 x i8], align 16               ; 7 uses
  %i.k = alloca [96 x i8], align 16               ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %i.m = alloca [32 x i8], align 8                ; 9 uses
  %i.n = load i64, ptr %1, align 8, !range !64, !noundef !8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.c, label %bb.b

.sink.split.sink.split:                           ; preds = %bb.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs2pqxYH9ZEk8_3std3env8VarErrorEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.m)
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  store i64 -9223372036854775711, ptr %0, align 16
  ret void

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RINvNtCs2pqxYH9ZEk8_3std3env3varReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.m, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1098, i64 noundef 30)
  %i.p = load i64, ptr %i.m, align 8, !range !64, !noundef !8
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %.sink.split.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !8, !noundef !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noundef !8
  invoke void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core8logstore6config11parse_usize(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef %i.v)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.l, %bb.f
  %.pn = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.ac, %bb.l ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #42
          to label %.body unwind label %bb.ae

bb.f:                                             ; preds = %bb.u, %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %bb.d
  %i.x = load i64, ptr %i.k, align 16, !range !296, !noundef !8
  %.not27 = icmp eq i64 %i.x, -9223372036854775711
  br i1 %.not27, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.z = load i64, ptr %i.y, align 8, !noundef !8
  store i64 1, ptr %1, align 8
  store i64 %i.z, ptr %i.o, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.ac, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ad

bb.l:                                             ; preds = %bb.s, %bb.aa, %bb.y, %bb.x, %bb.p, %bb.o
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBK_(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.j) #42
          to label %bb.e unwind label %bb.ae

bb.m:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.j, ptr noundef nonnull align 16 dereferenceable(96) %i.k, i64 96, i1 false)
  %i.ad = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ae = icmp ult i64 %i.ad, 4
  br i1 %i.ae, label %bb.n, label %bb.v

bb.n:                                             ; preds = %bb.m
  %i.af = load atomic i8, ptr getelementptr inbounds (i8, ptr @_RNvNvXs6_NtNtCs14kWLkQVSKO_14deltalake_core8logstore7storageNtB7_11LimitConfigNtNtB9_6config12TryUpdateKey21load_from_environment10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.af, label %bb.o [
    i8 0, label %bb.v
    i8 1, label %bb.p
    i8 2, label %bb.p
  ], !prof !33325

bb.o:                                             ; preds = %bb.n
  %i.ag = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvXs6_NtNtCs14kWLkQVSKO_14deltalake_core8logstore7storageNtB7_11LimitConfigNtNtB9_6config12TryUpdateKey21load_from_environment10___CALLSITE)
          to label %bb.q unwind label %bb.l       ; 2 uses

bb.p:                                             ; preds = %bb.n, %bb.n, %bb.q
  %.sroa.06.0 = phi i8 [ %i.ag, %bb.q ], [ %i.af, %bb.n ], [ %i.af, %bb.n ]
  %i.ah = load ptr, ptr @_RNvNvXs6_NtNtCs14kWLkQVSKO_14deltalake_core8logstore7storageNtB7_11LimitConfigNtNtB9_6config12TryUpdateKey21load_from_environment10___CALLSITE, align 8, !nonnull !8, !align !216, !noundef !8
  %i.ai = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ah, i8 noundef %.sroa.06.0)
          to label %bb.r unwind label %bb.l

bb.q:                                             ; preds = %bb.o
  %i.aj = icmp eq i8 %i.ag, 0
  br i1 %i.aj, label %bb.v, label %bb.p

bb.r:                                             ; preds = %bb.p
  br i1 %i.ai, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ak = load ptr, ptr @_RNvNvXs6_NtNtCs14kWLkQVSKO_14deltalake_core8logstore7storageNtB7_11LimitConfigNtNtB9_6config12TryUpdateKey21load_from_environment10___CALLSITE, align 8, !nonnull !8, !align !216, !noundef !8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.j, ptr %i.f, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs2_NtCs14kWLkQVSKO_14deltalake_core6errorsNtB5_15DeltaTableErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.413.0..sroa_idx, align 8
  store ptr @1099, ptr %i.g, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.f, ptr %i.am, align 8
  store ptr %i.g, ptr %i.h, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @332, ptr %i.an, align 8
  store i64 1, ptr %i.i, align 8
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.h, ptr %.sroa.08.sroa.4.0..sroa_idx, align 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.al, ptr %.sroa.4.0..sroa_idx, align 8
  invoke fastcc void @_RNCNvXs6_NtNtCs14kWLkQVSKO_14deltalake_core8logstore7storageNtB7_11LimitConfigNtNtB9_6config12TryUpdateKey21load_from_environment0Bb_(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.i)
          to label %bb.t unwind label %bb.l

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.u

bb.u:                                             ; preds = %bb.z, %bb.ab, %bb.w, %bb.v, %bb.t
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBK_(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.j)
          to label %bb.ac unwind label %bb.f

bb.v:                                             ; preds = %bb.q, %bb.n, %bb.m, %bb.r
  %i.ao = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.w, label %bb.u

bb.w:                                             ; preds = %bb.v
  %i.aq = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ar = icmp ult i64 %i.aq, 6
  call void @llvm.assume(i1 %i.ar)
  %i.as = icmp samesign ugt i64 %i.aq, 1
  br i1 %i.as, label %bb.x, label %bb.u

bb.x:                                             ; preds = %bb.w
  %i.at = load ptr, ptr @_RNvNvXs6_NtNtCs14kWLkQVSKO_14deltalake_core8logstore7storageNtB7_11LimitConfigNtNtB9_6config12TryUpdateKey21load_from_environment10___CALLSITE, align 8, !nonnull !8, !align !216, !noundef !8 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !8, !noundef !8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !8
  store i64 2, ptr %i.e, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.av, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.ax, ptr %.sroa.517.0..sroa_idx, align 8
  %i.ay = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.y unwind label %bb.l       ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.az = extractvalue { ptr, ptr } %i.ay, 0      ; 2 uses
  %i.ba = extractvalue { ptr, ptr } %i.ay, 1      ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !invariant.load !8, !nonnull !8
  %i.bd = invoke noundef zeroext i1 %i.bc(ptr noundef %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
          to label %bb.z unwind label %bb.l

bb.z:                                             ; preds = %bb.y
  br i1 %i.bd, label %bb.aa, label %bb.u

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.be = load ptr, ptr @_RNvNvXs6_NtNtCs14kWLkQVSKO_14deltalake_core8logstore7storageNtB7_11LimitConfigNtNtB9_6config12TryUpdateKey21load_from_environment10___CALLSITE, align 8, !nonnull !8, !align !216, !noundef !8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.j, ptr %i.a, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs2_NtCs14kWLkQVSKO_14deltalake_core6errorsNtB5_15DeltaTableErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.421.0..sroa_idx, align 8
  store ptr @1099, ptr %i.b, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.a, ptr %i.bg, align 8
  store ptr %i.b, ptr %i.c, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @332, ptr %i.bh, align 8
  store i64 1, ptr %i.d, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.c, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 1, ptr %.sroa.524.0..sroa_idx, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.bf, ptr %i.bi, align 8
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at, ptr noundef nonnull %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ba, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d)
          to label %bb.ab unwind label %bb.l

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.u

bb.ac:                                            ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.i

.body:                                            ; preds = %bb.ad, %bb.j, %bb.e
  %.pn29 = phi { ptr, i32 } [ %.pn, %bb.e ], [ %i.bl, %bb.ad ], [ %i.aa, %bb.j ]
  %i.bj = load i64, ptr %i.m, align 8, !range !64, !noundef !8
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.af, label %bb.ag

bb.ad:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.bm = load i64, ptr %i.m, align 8, !range !64, !noundef !8
  %i.bn = trunc nuw i64 %i.bm to i1
  br i1 %i.bn, label %.sink.split.sink.split, label %.sink.split

bb.ae:                                            ; preds = %bb.ag, %bb.l, %bb.e
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.af:                                            ; preds = %bb.ag, %.body
  resume { ptr, i32 } %.pn29

bb.ag:                                            ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs2pqxYH9ZEk8_3std3env8VarErrorEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.m) #42
          to label %bb.af unwind label %bb.ae
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs6_NvXs0_NvXNvNtCs14kWLkQVSKO_14deltalake_core8protocols9_1__NtBg_14DeltaOperationNtNtCs1gOyXocuPRE_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1o_7Visitor10visit_enumNtB5_s0_9___VisitorB2z_9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1100, i64 noundef 36)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6c_NtCs4lawaffTVVK_9sqlparser3astNtB6_13ExtractSyntaxNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !89, !noundef !8
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 5, i64 4
  %.1 = select i1 %i.b, ptr @1102, ptr @1101
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs6n_NtCs4lawaffTVVK_9sqlparser3astNtB6_13CeilFloorKindNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !5638, !noundef !8
  %i.b = icmp eq i64 %i.a, 44
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RNvXsl_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(48) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c) #44
  store i64 44, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RNvXsF_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_13DateTimeFieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) #44
  br label %bb.d
end_hunk_3
begin_hunk_4_@_RNvYNCNvNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factoriesNtBb_11TestSchemas6simple6SIMPLE0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBf_:bb.a

bb.e:                                             ; preds = %bb.d
  %i.x = load i64, ptr %i.w, align 8, !noalias !36213
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.v, i64 %i.x) #41
          to label %bb.w unwind label %bb.c, !noalias !36213

bb.f:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.w, align 8, !noalias !36213, !nonnull !8, !noundef !8 ; 2 uses
  %i.z = icmp samesign ugt i64 %i.v, 1
  tail call void @llvm.assume(i1 %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !36213
  store i16 25705, ptr %i.y, align 1, !noalias !36213
  store i64 %i.v, ptr %i.l, align 8, !noalias !36213
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.y, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !36213
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 2, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !36213
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 0, ptr %i.aa, align 1, !noalias !36213
  store i8 0, ptr %i.k, align 8, !noalias !36213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !36213
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !noalias !36213
  invoke void @_RINvMs7_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructField3newNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB6_8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.b, i1 noundef zeroext true)
          to label %bb.g unwind label %bb.c, !noalias !36213

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !36213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !36213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !36213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !36213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !36213
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 5, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.j unwind label %bb.i, !noalias !36213

bb.h:                                             ; preds = %bb.n, %bb.i
  %.pn.i = phi { ptr, i32 } [ %i.ab, %bb.i ], [ %i.al, %bb.n ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.m) #42
          to label %bb.y unwind label %bb.x, !noalias !36213

bb.i:                                             ; preds = %bb.l, %bb.k, %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %bb.g
  %i.ac = load i64, ptr %i.d, align 8, !range !64, !noalias !36213, !noundef !8
  %i.ad = trunc nuw i64 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !range !65, !noalias !36213, !noundef !8 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.ad, label %bb.k, label %bb.l, !prof !3

bb.k:                                             ; preds = %bb.j
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !36213
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.af, i64 %i.ah) #41
          to label %bb.w unwind label %bb.i, !noalias !36213

bb.l:                                             ; preds = %bb.j
  %i.ai = load ptr, ptr %i.ag, align 8, !noalias !36213, !nonnull !8, !noundef !8 ; 2 uses
  %i.aj = icmp samesign ugt i64 %i.af, 4
  call void @llvm.assume(i1 %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !36213
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ai, ptr noundef nonnull align 1 dereferenceable(5) @477, i64 5, i1 false), !noalias !36213
  store i64 %i.af, ptr %i.i, align 8, !noalias !36213
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.ai, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !36213
  %.sroa.66.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 5, ptr %.sroa.66.0..sroa_idx.i, align 8, !noalias !36213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !36213
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store i8 2, ptr %i.ak, align 1, !noalias !36213
  store i8 0, ptr %i.h, align 8, !noalias !36213
  invoke void @_RINvMs7_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructField3newNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB6_8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.h, i1 noundef zeroext true)
          to label %bb.m unwind label %bb.i, !noalias !36213

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !36213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !36213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !36213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !36213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !36213
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 8, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.o unwind label %bb.n, !noalias !36213

bb.n:                                             ; preds = %bb.q, %bb.p, %bb.m
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.j) #42
          to label %bb.h unwind label %bb.x, !noalias !36213

bb.o:                                             ; preds = %bb.m
  %i.am = load i64, ptr %i.c, align 8, !range !64, !noalias !36213, !noundef !8
  %i.an = trunc nuw i64 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !65, !noalias !36213, !noundef !8 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.an, label %bb.p, label %bb.q, !prof !3

bb.p:                                             ; preds = %bb.o
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !36213
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ap, i64 %i.ar) #41
          to label %bb.w unwind label %bb.n, !noalias !36213

bb.q:                                             ; preds = %bb.o
  %i.as = load ptr, ptr %i.aq, align 8, !noalias !36213, !nonnull !8, !noundef !8 ; 2 uses
  %i.at = icmp samesign ugt i64 %i.ap, 7
  call void @llvm.assume(i1 %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !36213
  store i64 7234304265016340333, ptr %i.as, align 1, !noalias !36213
  store i64 %i.ap, ptr %i.f, align 8, !noalias !36213
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.as, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !36213
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 8, ptr %.sroa.69.0..sroa_idx.i, align 8, !noalias !36213
  invoke void @_RINvMs7_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_11StructField3newNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB6_8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.k, i1 noundef zeroext true)
          to label %bb.r unwind label %bb.n, !noalias !36213

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !36213
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.p, ptr noundef nonnull align 8 dereferenceable(96) %i.m, i64 96, i1 false), !noalias !36213
  %i.au = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.au, ptr noundef nonnull align 8 dereferenceable(96) %i.j, i64 96, i1 false), !noalias !36213
  %i.av = getelementptr inbounds nuw i8, ptr %i.p, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.av, ptr noundef nonnull align 8 dereferenceable(96) %i.g, i64 96, i1 false), !noalias !36213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !36213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !36213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !36213
  store i64 3, ptr %i.n, align 8, !noalias !36213
  %i.aw = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.p, ptr %i.aw, align 8, !noalias !36213
  %i.ax = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 3, ptr %i.ax, align 8, !noalias !36213
  call void @_RINvMsb_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructType7try_newINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtB6_11StructFieldEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.n), !noalias !36213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !36213
  call void @llvm.experimental.noalias.scope.decl(metadata !36216)
  call void @llvm.experimental.noalias.scope.decl(metadata !36219)
  %i.ay = load i64, ptr %i.o, align 16, !range !65, !alias.scope !36219, !noalias !36221, !noundef !8
  %i.az = icmp eq i64 %i.ay, -9223372036854775808
  br i1 %i.az, label %bb.s, label %_RNCNvNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factoriesNtB8_11TestSchemas6simple6SIMPLE0Bc_.exit, !prof !3

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36222
  %i.ba = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull readonly align 16 dereferenceable(96) %i.ba, i64 96, i1 false), !noalias !36221
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @478, i64 noundef 30, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @512, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @480) #41
          to label %bb.u unwind label %bb.t, !noalias !36222

bb.t:                                             ; preds = %bb.s
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.a) #42
          to label %common.resume.i unwind label %bb.v, !noalias !36222

bb.u:                                             ; preds = %bb.s
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !36222
  unreachable

common.resume.i:                                  ; preds = %bb.y, %bb.t
  %common.resume.op.i = phi { ptr, i32 } [ %.pn12.i, %bb.y ], [ %i.bb, %bb.t ]
  resume { ptr, i32 } %common.resume.op.i

bb.w:                                             ; preds = %bb.p, %bb.k, %bb.e
  unreachable

bb.x:                                             ; preds = %bb.n, %bb.h
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !36213
  unreachable

bb.y:                                             ; preds = %bb.h, %bb.c
  %.pn12.i = phi { ptr, i32 } [ %i.r, %bb.c ], [ %.pn.i, %bb.h ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef 288, i64 noundef 8) #46, !noalias !36213
  br label %common.resume.i

_RNCNvNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factoriesNtB8_11TestSchemas6simple6SIMPLE0Bc_.exit: ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull readonly align 16 dereferenceable(144) %i.o, i64 144, i1 false), !alias.scope !36223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !36213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @_RNvYNCNvNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtBd_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts15ROW_COUNTS_EVAL0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceBj_() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 7 uses
  %i.e = alloca [64 x i8], align 8                ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [96 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.j = load atomic i32, ptr getelementptr inbounds (i8, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core6kernel13ARROW_HANDLER, i64 8) acquire, align 8
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expression22ArrowEvaluationHandlerEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.b, !prof !215

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core6kernel13ARROW_HANDLER, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @_RNvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds (i8, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core6kernel13ARROW_HANDLER, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expression22ArrowEvaluationHandlerEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expression22ArrowEvaluationHandlerEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.b, %bb.a
  %i.l = load ptr, ptr @_RNvNtCs14kWLkQVSKO_14deltalake_core6kernel13ARROW_HANDLER, align 8, !nonnull !8, !noundef !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.n = call noundef nonnull align 8 ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6fields14log_schema_ref()
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !8, !noundef !8 ; 4 uses
  %i.p = atomicrmw add ptr %i.o, i64 1 monotonic, align 8
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expression22ArrowEvaluationHandlerEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i
  store ptr %i.o, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 3, ptr %.sroa.428.0..sroa_idx.i, align 8
  %.sroa.529.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr @481, ptr %.sroa.529.0..sroa_idx.i, align 8
  %.sroa.630.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 3, ptr %.sroa.630.0..sroa_idx.i, align 8
  %.sroa.731.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr @482, ptr %.sroa.731.0..sroa_idx.i, align 8
  %.sroa.832.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 12, ptr %.sroa.832.0..sroa_idx.i, align 8
  %.sroa.933.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr @57, ptr %.sroa.933.0..sroa_idx.i, align 8
  %.sroa.1034.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 10, ptr %.sroa.1034.0..sroa_idx.i, align 8
  invoke void @_RINvXs_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_namesNtB5_10ColumnNameINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorReE9from_iterINtNtNtB1s_5array4iter8IntoIterB2j_Kj3_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.e)
          to label %bb.e unwind label %.body.thread5.i

.body.thread5.i:                                  ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.d:                                             ; preds = %_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expression22ArrowEvaluationHandlerEE5force0ECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 1, ptr %i.d, align 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 1, ptr %i.t, align 16
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !36224
  %i.u = call noundef align 16 dereferenceable_or_null(128) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 7409) 128, i64 noundef range(i64 8, 17) 16) #46, !noalias !36224 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.f, label %bb.i, !prof !308

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 128) #41
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(112) %i.t)
          to label %.body.thread.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.u, ptr noundef nonnull align 16 dereferenceable(128) %i.d, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store i8 1, ptr %i.y, align 1
  store i8 0, ptr %i.g, align 8
  call void @_RNvXs0_NtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expressionNtB5_22ArrowEvaluationHandlerNtB9_17EvaluationHandler24new_expression_evaluator(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.m, ptr noundef nonnull %i.o, ptr noundef nonnull %i.u, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !36227)
  %i.z = load i64, ptr %i.i, align 16, !range !3931, !alias.scope !36227, !noundef !8
  %.not.i.i = icmp eq i64 %i.z, -9223372036854775743
  br i1 %.not.i.i, label %_RNCNvNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtBa_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts15ROW_COUNTS_EVAL0Bg_.exit, label %bb.j, !prof !215

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36227
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull readonly align 16 dereferenceable(96) %i.i, i64 96, i1 false)
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @483, i64 noundef 37, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @512, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @485) #41
          to label %bb.l unwind label %bb.k, !noalias !36227

bb.k:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.a) #42
          to label %common.resume.i unwind label %bb.m, !noalias !36227

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43, !noalias !36227
  unreachable

common.resume.i:                                  ; preds = %bb.n, %.body.thread.i, %bb.k
  %common.resume.op.i = phi { ptr, i32 } [ %i.aa, %bb.k ], [ %eh.lpad-body4.i, %.body.thread.i ], [ %eh.lpad-body4.i, %bb.n ]
  resume { ptr, i32 } %common.resume.op.i

.body.thread.i:                                   ; preds = %bb.g, %.body.thread5.i
  %eh.lpad-body4.i = phi { ptr, i32 } [ %i.r, %.body.thread5.i ], [ %i.w, %bb.g ] ; 2 uses
  %i.ac = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !36230
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.n, label %common.resume.i

bb.n:                                             ; preds = %.body.thread.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h) #45
          to label %common.resume.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

_RNCNvNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtBa_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_counts15ROW_COUNTS_EVAL0Bg_.exit: ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !36227, !nonnull !8, !noundef !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ai = load ptr, ptr %i.ah, align 16, !alias.scope !36227, !nonnull !8, !align !216, !noundef !8
  %i.aj = insertvalue { ptr, ptr } poison, ptr %i.ag, 0
  %i.ak = insertvalue { ptr, ptr } %i.aj, ptr %i.ai, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret { ptr, ptr } %i.ak
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 0, 4) i8 @_RNvYNtNtCs2xb0BKvnu80_21datafusion_datasource6source14DataSourceExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan18cardinality_effectCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret i8 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtNtCs2xb0BKvnu80_21datafusion_datasource6source14DataSourceExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan23supports_limit_pushdownCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs2y6mmZ7bjoM_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #22 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1810, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs5wg436RVUAP_24datafusion_physical_plan10projection14ProjectionExecNtNtB6_14execution_plan13ExecutionPlan10with_fetchCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0, i64 range(i64 0, 2) %1, i64 %2) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYNtNtCs5wg436RVUAP_24datafusion_physical_plan10projection14ProjectionExecNtNtB6_14execution_plan13ExecutionPlan13repartitionedCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1, i64 %2, ptr noalias readonly align 8 captures(none) %3) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8
  store i64 20, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { i64, i64 } @_RNvYNtNtCs5wg436RVUAP_24datafusion_physical_plan10projection14ProjectionExecNtNtB6_14execution_plan13ExecutionPlan5fetchCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { i64, i64 } { i64 0, i64 undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs5wg436RVUAP_24datafusion_physical_plan11repartition15RepartitionExecNtNtB6_14execution_plan13ExecutionPlan10with_fetchCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0, i64 range(i64 0, 2) %1, i64 %2) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYNtNtCs5wg436RVUAP_24datafusion_physical_plan11repartition15RepartitionExecNtNtB6_14execution_plan13ExecutionPlan23supports_limit_pushdownCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret i1 false
}

end_hunk_4
begin_hunk_5_@_RNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr18evaluate_selectionCs14kWLkQVSKO_14deltalake_core:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit86: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 10, ptr %i.cw, align 16
  store i128 51, ptr %0, align 16
  br label %bb.au

bb.bf:                                            ; preds = %bb.ay
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr19evaluate_statisticsCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([320 x i8]) align 16 captures(address) dereferenceable(320) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 1152921504606846976) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  %i.b = alloca [64 x i8], align 16               ; 4 uses
  %i.c = alloca [64 x i8], align 16               ; 9 uses
  %.sroa.615 = alloca [40 x i8], align 16         ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 13 uses
  %i.e = alloca [128 x i8], align 16              ; 7 uses
  %.sroa.68 = alloca [40 x i8], align 16          ; 6 uses
  %i.f = alloca [128 x i8], align 16              ; 19 uses
  %i.g = alloca [24 x i8], align 8                ; 11 uses
  %i.h = alloca [40 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %3
  call void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterRNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr19evaluate_statistics0ENtNtB1B_19interval_arithmetic8IntervalINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENCINvXso_B6e_IB6c_INtNtCs6Po7BT7Nknu_5alloc3vec3VecB5z_EB6Y_EINtNtNtB4_6traits7collect12FromIteratorIB6c_B5z_B6Y_EE9from_iterBQ_E0B8f_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.h, ptr noundef nonnull %2, ptr noundef nonnull %i.j)
  %i.k = load i64, ptr %i.h, align 8, !range !43, !noundef !8 ; 2 uses
  %.not = icmp eq i64 %i.k, 20
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.626.0.copyload = load i64, ptr %.sroa.626.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.sroa.228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.228.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.k, ptr %i.m, align 16
  %.sroa.329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.626.0.copyload, ptr %.sroa.329.0..sroa_idx, align 16
  store i128 54, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.ap

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !8
  %i.r = getelementptr inbounds nuw [128 x i8], ptr %i.o, i64 %i.q
  invoke void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalEINtB4_18SpecFromIterNestedB13_INtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterB14_EE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull %i.o, ptr noundef nonnull %i.r)
          to label %bb.e unwind label %bb.d

.body:                                            ; preds = %bb.au, %bb.s, %bb.d, %.body42
  %.pn40 = phi { ptr, i32 } [ %.pn38, %.body42 ], [ %i.ab, %bb.s ], [ %i.s, %bb.d ], [ %i.aw, %bb.au ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.i) #42
          to label %common.resume unwind label %bb.ax

bb.d:                                             ; preds = %bb.av, %bb.t, %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.68)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr15evaluate_boundsCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([128 x i8]) align 16 captures(none) dereferenceable(128) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nonnull readonly align 8 captures(address, read_provenance) poison, i64 poison)
          to label %bb.g unwind label %bb.f

.body42:                                          ; preds = %bb.ar, %bb.ak, %bb.k, %bb.f, %bb.ay, %bb.j
  %.pn38 = phi { ptr, i32 } [ %i.z, %bb.j ], [ %.pn53, %bb.ay ], [ %lpad.thr_comm.split-lp, %bb.k ], [ %i.t, %bb.f ], [ %i.am, %bb.ak ], [ %i.as, %bb.ar ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.g) #42
          to label %.body unwind label %bb.ax

bb.f:                                             ; preds = %bb.as, %bb.al, %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body42

bb.g:                                             ; preds = %bb.e
  %i.u = load i128, ptr %i.e, align 16, !range !6772, !noundef !8 ; 2 uses
  %i.v = icmp eq i128 %i.u, 50
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.68, ptr noundef nonnull align 16 dereferenceable(40) %i.w, i64 40, i1 false)
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.x, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.68, i64 40, i1 false)
  store i128 54, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.68)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalECs14kWLkQVSKO_14deltalake_core.exit46

bb.i:                                             ; preds = %bb.g
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.632.0..sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.68, i64 40, i1 false)
  store i128 %i.u, ptr %i.f, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.68)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmeticNtB2_8Interval9data_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.f)
          to label %bb.l unwind label %.thread

bb.j:                                             ; preds = %bb.m
  br i1 %.sroa.020.2, label %bb.ay, label %.body42

.thread:                                          ; preds = %bb.ag, %bb.ai, %bb.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.k:                                             ; preds = %bb.q
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body42

bb.l:                                             ; preds = %bb.i
  %i.y = invoke fastcc noundef zeroext i1 @_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @759)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.ah, %bb.ae, %bb.ac, %bb.ab, %bb.z, %bb.x, %bb.w, %bb.p, %bb.o, %bb.l
  %.sroa.020.2 = phi i1 [ true, %bb.ah ], [ true, %bb.z ], [ true, %bb.ae ], [ true, %bb.ac ], [ true, %bb.ab ], [ true, %bb.x ], [ true, %bb.w ], [ true, %bb.p ], [ false, %bb.o ], [ true, %bb.l ]
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.d) #42
          to label %bb.j unwind label %bb.ax

bb.n:                                             ; preds = %bb.l
  br i1 %i.y, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, ptr noundef nonnull align 16 dereferenceable(128) %i.f, i64 128, i1 false)
  invoke void @_RNvMNtCs90oH6M0AZ2B_22datafusion_expr_common10statisticsNtB2_12Distribution17new_from_interval(ptr noalias noundef nonnull sret([320 x i8]) align 16 captures(address) dereferenceable(320) %0, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(128) %i.a)
          to label %bb.q unwind label %bb.m

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.615)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.aa = invoke noundef zeroext i1 @_RNvXs_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4_11ScalarValueNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.f, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) @1822)
          to label %bb.v unwind label %bb.m

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.d)
          to label %bb.r unwind label %bb.k

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.al, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecRNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalECs14kWLkQVSKO_14deltalake_core.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body unwind label %bb.u

bb.t:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalECs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.d

bb.u:                                             ; preds = %bb.s
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.v:                                             ; preds = %bb.p
  br i1 %i.aa, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.ae = invoke noundef zeroext i1 @_RNvXs_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4_11ScalarValueNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.ad, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) getelementptr inbounds (i8, ptr @1822, i64 64))
          to label %bb.y unwind label %bb.m

bb.x:                                             ; preds = %bb.v, %bb.y
  %i.af = invoke noundef zeroext i1 @_RNvXs_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4_11ScalarValueNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.f, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) @1823)
          to label %bb.aa unwind label %bb.m

bb.y:                                             ; preds = %bb.w
  br i1 %i.ae, label %bb.z, label %bb.x

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValue7new_one(ptr noalias noundef nonnull sret([64 x i8]) align 16 captures(none) dereferenceable(64) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %bb.af unwind label %bb.m

bb.aa:                                            ; preds = %bb.x
  br i1 %i.af, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.ah = invoke noundef zeroext i1 @_RNvXs_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB4_11ScalarValueNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.ag, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) getelementptr inbounds (i8, ptr @1823, i64 64))
          to label %bb.ad unwind label %bb.m

bb.ac:                                            ; preds = %bb.aa, %bb.ad
  invoke void @_RNvXsf_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValueINtNtCsbvkFyIu7lgC_4core7convert7TryFromRNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeE8try_from(ptr noalias noundef nonnull sret([64 x i8]) align 16 captures(address) dereferenceable(64) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %bb.af unwind label %bb.m

bb.ad:                                            ; preds = %bb.ab
  br i1 %i.ah, label %bb.ae, label %bb.ac

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvMs3_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValue8new_zero(ptr noalias noundef nonnull sret([64 x i8]) align 16 captures(none) dereferenceable(64) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %bb.af unwind label %bb.m

bb.af:                                            ; preds = %bb.z, %bb.ae, %bb.ac
  %i.ai = load i128, ptr %i.c, align 16, !range !6772, !noundef !8 ; 2 uses
  %i.aj = icmp eq i128 %i.ai, 50
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.615, ptr noundef nonnull align 16 dereferenceable(40) %i.ak, i64 40, i1 false)
  br i1 %i.aj, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.al, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.615, i64 40, i1 false)
  store i128 54, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.615)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.d)
          to label %bb.aq unwind label %.thread

bb.ah:                                            ; preds = %bb.af
  %.sroa.635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.635.0.copyload = load i64, ptr %.sroa.635.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i128 %i.ai, ptr %i.b, align 16
  %.sroa.615.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.615.0..sroa_idx16, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.615, i64 40, i1 false)
  %.sroa.817.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.635.0.copyload, ptr %.sroa.817.0..sroa_idx18, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.615)
  invoke void @_RNvMNtCs90oH6M0AZ2B_22datafusion_expr_common10statisticsNtB2_12Distribution13new_bernoulli(ptr noalias noundef nonnull sret([320 x i8]) align 16 captures(none) dereferenceable(320) %0, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(64) %i.b)
          to label %bb.ai unwind label %bb.m

bb.ai:                                            ; preds = %bb.ah
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.d)
          to label %bb.aj unwind label %.thread

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(128) %i.f)
          to label %bb.al unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.an) #42
          to label %.body42 unwind label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.ao)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.f

bb.am:                                            ; preds = %bb.ak
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.an

bb.an:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalEECs14kWLkQVSKO_14deltalake_core.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

common.resume:                                    ; preds = %.body, %bb.az, %bb.an
  %common.resume.op = phi { ptr, i32 } [ %i.az, %bb.az ], [ %i.aq, %bb.an ], [ %.pn40, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalEECs14kWLkQVSKO_14deltalake_core.exit
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalEECs14kWLkQVSKO_14deltalake_core.exit52, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalEECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.aq:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(128) %i.f)
          to label %bb.as unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.at) #42
          to label %.body42 unwind label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.au)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalECs14kWLkQVSKO_14deltalake_core.exit46 unwind label %bb.f

bb.at:                                            ; preds = %bb.ar
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalECs14kWLkQVSKO_14deltalake_core.exit46: ; preds = %bb.as, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecRNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.av unwind label %bb.au

bb.au:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalECs14kWLkQVSKO_14deltalake_core.exit46
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body unwind label %bb.aw

bb.av:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalECs14kWLkQVSKO_14deltalake_core.exit46
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalEECs14kWLkQVSKO_14deltalake_core.exit50 unwind label %bb.d

bb.aw:                                            ; preds = %bb.au
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.ax:                                            ; preds = %bb.ay, %bb.m, %.body42, %.body
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.ay:                                            ; preds = %.thread, %bb.j
  %.pn53 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread ], [ %i.z, %bb.j ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(128) %i.f) #42
          to label %.body42 unwind label %bb.ax

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalEECs14kWLkQVSKO_14deltalake_core.exit50: ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalEECs14kWLkQVSKO_14deltalake_core.exit52 unwind label %bb.az

bb.az:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalEECs14kWLkQVSKO_14deltalake_core.exit50
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalEECs14kWLkQVSKO_14deltalake_core.exit52: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalEECs14kWLkQVSKO_14deltalake_core.exit50
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %bb.ap
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr20propagate_statisticsCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %3, i64 noundef range(i64 0, 1152921504606846976) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 13 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = alloca [128 x i8], align 16              ; 7 uses
  %.sroa.68 = alloca [40 x i8], align 16          ; 6 uses
  %i.d = alloca [128 x i8], align 16              ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 11 uses
  %i.f = alloca [40 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %4 ; 2 uses
  call void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterRNtNtCs90oH6M0AZ2B_22datafusion_expr_common10statistics12DistributionENCNvYNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11expressions6column6ColumnNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExpr20propagate_statistics0ENtNtB1B_19interval_arithmetic8IntervalINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENCINvXso_B6f_IB6d_INtNtCs6Po7BT7Nknu_5alloc3vec3VecB5A_EB6Z_EINtNtNtB4_6traits7collect12FromIteratorIB6d_B5A_B6Z_EE9from_iterBQ_E0B8g_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.f, ptr noundef nonnull %3, ptr noundef nonnull %i.h)
  %i.i = load i64, ptr %i.f, align 8, !range !43, !noundef !8 ; 2 uses
  %.not = icmp eq i64 %i.i, 20
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
end_hunk_5
