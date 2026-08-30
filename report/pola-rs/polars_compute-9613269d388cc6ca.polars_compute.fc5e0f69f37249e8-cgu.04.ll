Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_compute-9613269d388cc6ca.polars_compute.fc5e0f69f37249e8-cgu.04?download=true
inline.NumInlined: 4737
inline.NumDeleted: 1173
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 153
loop-unroll.NumUnrolled: 163
begin_hunk_0_@_RINvNtNtCslFlrwjHoTci_14polars_compute6gather7binview22take_binview_uncheckedShEB6_:bb.a
bb.an:                                            ; preds = %bb.am
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.eq)
          to label %.thread15.thread unwind label %bb.aj, !dbg !109449, !noalias !109210

_RNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB5_22BinaryViewArrayGenericShE2gcCslFlrwjHoTci_14polars_compute.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECslFlrwjHoTci_14polars_compute.exit12.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !109452, !noalias !109061
  br label %_RNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB5_22BinaryViewArrayGenericShE8maybe_gcCslFlrwjHoTci_14polars_compute.exit, !dbg !109184

bb.ao:                                            ; preds = %bb.i
  %i.et = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericShEECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.i) #36
          to label %.thread15.thread unwind label %bb.ap, !dbg !109453, !noalias !109051

bb.ap:                                            ; preds = %bb.ao
  %i.eu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #34, !dbg !109454, !noalias !109051
  unreachable, !dbg !109454

_RNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB5_22BinaryViewArrayGenericShE8maybe_gcCslFlrwjHoTci_14polars_compute.exit: ; preds = %_RNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB5_22BinaryViewArrayGenericShE2gcCslFlrwjHoTci_14polars_compute.exit.i, %bb.l, %bb.j, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !109455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !108981
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !108981
  ret void, !dbg !109456

bb.aq:                                            ; preds = %bb.b, %bb.c
  %i.ev = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECslFlrwjHoTci_14polars_compute(ptr noalias noundef align 8 dereferenceable(32) %i.h) #36
          to label %.thread unwind label %bb.ar, !dbg !109050

bb.ar:                                            ; preds = %bb.as, %bb.at, %bb.aq
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #34, !dbg !109457
  unreachable, !dbg !109457

.thread15:                                        ; preds = %bb.as, %.thread
  br i1 %.sroa.03.014, label %bb.at, label %.thread15.thread, !dbg !108981

.thread:                                          ; preds = %bb.aq, %.thread18
  %.sroa.03.014 = phi i1 [ true, %.thread18 ], [ false, %bb.aq ]
  %.pn12 = phi { ptr, i32 } [ %i.t, %.thread18 ], [ %i.ev, %bb.aq ] ; 2 uses
  %i.ex = load ptr, ptr %i.k, align 8, !dbg !109458, !alias.scope !109460, !noundef !15
  %i.ey = icmp eq ptr %i.ex, null, !dbg !109458
  br i1 %i.ey, label %.thread15, label %bb.as, !dbg !109458

bb.as:                                            ; preds = %.thread
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %.thread15 unwind label %bb.ar, !dbg !109463

.thread15.thread:                                 ; preds = %bb.ao, %bb.an, %bb.am, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferIBH_hEEECslFlrwjHoTci_14polars_compute.exit17.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECslFlrwjHoTci_14polars_compute.exit.i.i, %bb.at, %.thread15
  %.pn1122 = phi { ptr, i32 } [ %.pn12, %.thread15 ], [ %.pn12, %bb.at ], [ %.pn.i.i, %bb.an ], [ %.pn6.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECslFlrwjHoTci_14polars_compute.exit.i.i ], [ %.pn.i.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferIBH_hEEECslFlrwjHoTci_14polars_compute.exit17.i.i ], [ %i.et, %bb.ao ], [ %.pn.i.i, %bb.am ]
  resume { ptr, i32 } %.pn1122, !dbg !109457

bb.at:                                            ; preds = %.thread15
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEECslFlrwjHoTci_14polars_compute(ptr noalias noundef align 8 dereferenceable(24) %i.l) #36
          to label %.thread15.thread unwind label %bb.ar, !dbg !108981
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute6gather7binview22take_binview_uncheckedeEB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %2) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !109466 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [160 x i8], align 8               ; 4 uses
  %i.d = alloca [128 x i8], align 8               ; 8 uses
  %i.e = alloca [160 x i8], align 8               ; 11 uses
  %i.f = alloca [56 x i8], align 8                ; 9 uses
  %i.g = alloca [128 x i8], align 8               ; 13 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 5 uses
  %i.j = alloca [128 x i8], align 8               ; 19 uses
  %i.k = alloca [56 x i8], align 8                ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !109467
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !109468
  %i.o = load ptr, ptr %i.n, align 8, !dbg !109468, !noundef !15
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !109473
  %i.q = load i64, ptr %i.p, align 8, !dbg !109473, !noundef !15
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !109474 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !dbg !109474, !noundef !15
  %.not = icmp eq ptr %i.s, null, !dbg !109474
  %. = select i1 %.not, ptr null, ptr %i.r, !dbg !109479
  call void @_RINvNtNtCslFlrwjHoTci_14polars_compute6gather9primitive34take_values_and_validity_uncheckedNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEB6_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.k, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.o, i64 noundef %i.q, ptr noundef align 8 %., ptr noundef nonnull align 8 %2), !dbg !109467
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !109480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !109480
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !109481
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !109481
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false), !dbg !109481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !109482
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !109483
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !109485
  invoke fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.b unwind label %.thread18, !dbg !109486

.thread18:                                        ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.thread, !dbg !109487

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !109488
  %i.v = invoke noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE8from_vecCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.m)
          to label %bb.c unwind label %bb.az, !dbg !109489

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE12from_storageCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull %i.v)
          to label %bb.d unwind label %bb.az, !dbg !109496

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !109497
  %i.x = load ptr, ptr %i.w, align 8, !dbg !109497, !nonnull !15, !noundef !15 ; 4 uses
  %i.y = load i64, ptr %i.x, align 8, !dbg !109504, !range !712, !noundef !15
  %i.z = icmp eq i64 %i.y, 3, !dbg !109508
  br i1 %i.z, label %bb.f, label %bb.e, !dbg !109508

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 24, !dbg !109509
  %i.ab = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8, !dbg !109516 ; 0 uses
  br label %bb.f, !dbg !109519

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !109520
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !109520, !noundef !15
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !109521
  %i.af = load i64, ptr %i.ae, align 8, !dbg !109521, !noundef !15
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 80, !dbg !109522 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !dbg !109529
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !109530
  %i.ai = load i64, ptr %i.ah, align 8, !dbg !109530, !noundef !15 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109533), !dbg !109483
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109536), !dbg !109483
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109538), !dbg !109483
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.i, i64 32, i1 false), !dbg !109522, !alias.scope !109540, !noalias !109542
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 32, !dbg !109522
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !109522, !alias.scope !109544, !noalias !109545
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 56, !dbg !109522
  store ptr %i.x, ptr %i.ak, align 8, !dbg !109522, !alias.scope !109546, !noalias !109547
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 64, !dbg !109522 ; 2 uses
  store ptr %i.ad, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !109522, !alias.scope !109546, !noalias !109547
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 72, !dbg !109522 ; 2 uses
  store i64 %i.af, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !109522, !alias.scope !109546, !noalias !109547
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 112, !dbg !109522 ; 3 uses
  store i64 -1, ptr %i.al, align 8, !dbg !109522, !alias.scope !109548, !noalias !109549
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 120, !dbg !109522
  store i64 %i.ai, ptr %i.am, align 8, !dbg !109522, !alias.scope !109548, !noalias !109549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !109550
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !109550
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109551), !dbg !109554
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109555), !dbg !109554
  %i.an = icmp ult i64 %i.ai, 16385, !dbg !109557
  br i1 %i.an, label %bb.g, label %bb.h, !dbg !109557

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.j, i64 128, i1 false), !dbg !109560, !alias.scope !109561
  br label %_RNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB5_22BinaryViewArrayGenericeE8maybe_gcCslFlrwjHoTci_14polars_compute.exit, !dbg !109562

bb.h:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 24, !dbg !109564
  %i.ap = load atomic i64, ptr %i.ao acquire, align 8, !dbg !109575, !noalias !109551
  %i.aq = icmp eq i64 %i.ap, 1, !dbg !109577
  br i1 %i.aq, label %bb.i, label %bb.s, !dbg !109577

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !109578, !noalias !109561
  %i.ar = load atomic i64, ptr %i.al monotonic, align 8, !dbg !109591, !alias.scope !109555, !noalias !109551 ; 2 uses
  %i.as = icmp eq i64 %i.ar, -1, !dbg !109593
  br i1 %i.as, label %bb.j, label %bb.t, !dbg !109593

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 40, !dbg !109595
  %i.au = load ptr, ptr %i.at, align 8, !dbg !109595, !alias.scope !109555, !noalias !109551, !nonnull !15, !noundef !15 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 48, !dbg !109602
  %i.aw = load i64, ptr %i.av, align 8, !dbg !109602, !alias.scope !109555, !noalias !109551, !noundef !15
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.aw, !dbg !109603
  %i.ay = load ptr, ptr %i.ag, align 8, !dbg !109612, !alias.scope !109555, !noalias !109551, !noundef !15
  %.not.i.i = icmp eq ptr %i.ay, null, !dbg !109612
  %..i.i = select i1 %.not.i.i, ptr null, ptr %i.ag, !dbg !109615
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtNtNtBb_5array7binview4view4ViewENCNvMs4_B2H_INtB2H_22BinaryViewArrayGenericeE8len_iter0ENtNtB7_8iterator10BitmapIterE17new_with_validityCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.f, ptr noundef nonnull %i.au, ptr noundef nonnull %i.ax, ptr noundef align 8 %..i.i)
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !dbg !109616, !noalias !109551

.noexc.i:                                         ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !109617), !dbg !109620
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !109627
  %.promoted.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !109637, !noalias !109561
  %.promoted18.i.i.i = load ptr, ptr %i.az, align 8, !alias.scope !109617, !noalias !109561 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.promoted20.i.i.i = load i64, ptr %i.bb, align 8, !alias.scope !109617, !noalias !109561
  %.phi.trans.insert.i.i.i.promoted.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !alias.scope !109617, !noalias !109561
  %.promoted24.i.i.i = load i64, ptr %i.bc, align 8, !alias.scope !109617, !noalias !109561
  %.promoted25.i.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !109617, !noalias !109561
  br label %bb.k, !dbg !109640

bb.k:                                             ; preds = %bb.r, %.noexc.i
  %i.bd = phi ptr [ %.promoted25.i.i.i, %.noexc.i ], [ %3, %bb.r ] ; 6 uses
  %i.be = phi i64 [ %.promoted24.i.i.i, %.noexc.i ], [ %4, %bb.r ] ; 5 uses
  %.pre.i.i.i23.i.i.i = phi i64 [ %.phi.trans.insert.i.i.i.promoted.i.i.i, %.noexc.i ], [ %.pre.i.i.i21.i.i.i, %bb.r ] ; 3 uses
  %i.bf = phi i64 [ %.promoted20.i.i.i, %.noexc.i ], [ %5, %bb.r ] ; 3 uses
  %i.bg = phi ptr [ %.promoted18.i.i.i, %.noexc.i ], [ %6, %bb.r ] ; 3 uses
  %i.bh = phi ptr [ %.promoted18.i.i.i, %.noexc.i ], [ %7, %bb.r ] ; 5 uses
  %i.bi = phi ptr [ %.promoted.i.i.i, %.noexc.i ], [ %8, %bb.r ] ; 5 uses
  %.sroa.0.0.i.i.i = phi i64 [ 0, %.noexc.i ], [ %i.cg, %bb.r ], !dbg !109641 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !109642), !dbg !109643
  %.not.i.i.i.i = icmp eq ptr %i.bi, null, !dbg !109644
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.l, !dbg !109645

bb.l:                                             ; preds = %bb.k
  %i.bj = icmp eq ptr %i.bi, %i.bg, !dbg !109646
  br i1 %i.bj, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericeE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCslFlrwjHoTci_14polars_compute.exit.i.i.i.i.i, label %bb.m, !dbg !109659

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 16, !dbg !109660
  %.val.i.i.i.i.i.i = load i32, ptr %i.bi, align 4, !dbg !109663, !noalias !109669, !noundef !15
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericeE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCslFlrwjHoTci_14polars_compute.exit.i.i.i.i.i, !dbg !109674

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericeE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCslFlrwjHoTci_14polars_compute.exit.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %i.bl = phi ptr [ %i.bk, %bb.m ], [ %i.bi, %bb.l ] ; 2 uses
  %.sroa.3.0.i.i.i.i.i.i = phi i32 [ %.val.i.i.i.i.i.i, %bb.m ], [ undef, %bb.l ]
  %.sroa.0.0.i.i.i.i.i.i = phi i32 [ 1, %bb.m ], [ 0, %bb.l ], !dbg !109675
  %i.bm = icmp eq i64 %i.bf, 0, !dbg !109676
  br i1 %i.bm, label %bb.n, label %._crit_edge.i.i.i.i.i.i, !dbg !109676

bb.n:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericeE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCslFlrwjHoTci_14polars_compute.exit.i.i.i.i.i
  %i.bn = icmp eq i64 %i.be, 0, !dbg !109683
  br i1 %i.bn, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit.i.i.i.i.i.i, !dbg !109683

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit.i.i.i.i.i.i: ; preds = %bb.n
  %.sroa.0.0.i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.be, i64 64), !dbg !109684 ; 2 uses
  %i.bo = sub nuw i64 %i.be, %.sroa.0.0.i.i.i.i.i.i.i, !dbg !109686
  %.sroa.02.0.copyload.i.i.i.i.i.i = load i64, ptr %i.bd, align 1, !dbg !109687, !noalias !109694
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bd, i64 8, !dbg !109697
  br label %._crit_edge.i.i.i.i.i.i, !dbg !109712

._crit_edge.i.i.i.i.i.i:                          ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit.i.i.i.i.i.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericeE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCslFlrwjHoTci_14polars_compute.exit.i.i.i.i.i
  %i.bq = phi ptr [ %i.bp, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit.i.i.i.i.i.i ], [ %i.bd, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericeE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCslFlrwjHoTci_14polars_compute.exit.i.i.i.i.i ]
  %i.br = phi i64 [ %i.bo, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit.i.i.i.i.i.i ], [ %i.be, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericeE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCslFlrwjHoTci_14polars_compute.exit.i.i.i.i.i ]
  %i.bs = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit.i.i.i.i.i.i ], [ %i.bf, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericeE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCslFlrwjHoTci_14polars_compute.exit.i.i.i.i.i ], !dbg !109713
  %i.bt = phi i64 [ %.sroa.02.0.copyload.i.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit.i.i.i.i.i.i ], [ %.pre.i.i.i23.i.i.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericeE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCslFlrwjHoTci_14polars_compute.exit.i.i.i.i.i ], !dbg !109715 ; 2 uses
  %i.bu = trunc i64 %i.bt to i8, !dbg !109715
  %i.bv = lshr i64 %i.bt, 1, !dbg !109716
  %i.bw = add i64 %i.bs, -1, !dbg !109713
  %i.bx = and i8 %i.bu, 1, !dbg !109717
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, !dbg !109718

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.n
  %i.by = phi ptr [ %i.bq, %._crit_edge.i.i.i.i.i.i ], [ %i.bd, %bb.n ] ; 2 uses
  %i.bz = phi i64 [ %i.br, %._crit_edge.i.i.i.i.i.i ], [ 0, %bb.n ] ; 2 uses
  %.pre.i.i.i22.i.i.i = phi i64 [ %i.bv, %._crit_edge.i.i.i.i.i.i ], [ %.pre.i.i.i23.i.i.i, %bb.n ] ; 2 uses
  %i.ca = phi i64 [ %i.bw, %._crit_edge.i.i.i.i.i.i ], [ 0, %bb.n ] ; 2 uses
  %.sroa.0.0.i9.i.i.i.i.i = phi i8 [ %i.bx, %._crit_edge.i.i.i.i.i.i ], [ 2, %bb.n ], !dbg !109719
  %i.cb = invoke { i8, i32 } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipmECslFlrwjHoTci_14polars_compute(i8 noundef %.sroa.0.0.i9.i.i.i.i.i, i32 noundef %.sroa.0.0.i.i.i.i.i.i, i32 %.sroa.3.0.i.i.i.i.i.i)
          to label %.noexc5.i unwind label %.loopexit.i, !dbg !109720, !noalias !109551 ; 2 uses

.noexc5.i:                                        ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i
  %i.cc = extractvalue { i8, i32 } %i.cb, 0, !dbg !109722
  switch i8 %i.cc, label %bb.o [
    i8 2, label %_RINvYINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtNtBc_5array7binview4view4ViewENCNvMs4_B2C_INtB2C_22BinaryViewArrayGenericeE8len_iter0ENtNtB8_8iterator10BitmapIterENtNtNtB1q_6traits8iterator8Iterator4foldjNCINvB1m_8map_foldINtNtB1s_6option6OptionmEjjNCNvB3c_15total_bytes_len0NCINvXsK_NtB4z_5accumjNtB6s_3Sum3sumIB1k_B3_B5T_EE0E0ECslFlrwjHoTci_14polars_compute.exit.i.i
    i8 0, label %bb.r
  ], !dbg !109723

bb.o:                                             ; preds = %.noexc5.i
  %i.cd = extractvalue { i8, i32 } %i.cb, 1, !dbg !109722
  br label %bb.r, !dbg !109726

bb.p:                                             ; preds = %bb.k
  %i.ce = icmp eq ptr %i.bh, %i.bd, !dbg !109737
  br i1 %i.ce, label %_RINvYINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtNtBc_5array7binview4view4ViewENCNvMs4_B2C_INtB2C_22BinaryViewArrayGenericeE8len_iter0ENtNtB8_8iterator10BitmapIterENtNtNtB1q_6traits8iterator8Iterator4foldjNCINvB1m_8map_foldINtNtB1s_6option6OptionmEjjNCNvB3c_15total_bytes_len0NCINvXsK_NtB4z_5accumjNtB6s_3Sum3sumIB1k_B3_B5T_EE0E0ECslFlrwjHoTci_14polars_compute.exit.i.i, label %bb.q, !dbg !109742

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bh, i64 16, !dbg !109743 ; 2 uses
  %.val.i.i.i.i.i = load i32, ptr %i.bh, align 4, !dbg !109745, !noalias !109748, !noundef !15
  br label %bb.r, !dbg !109751

bb.r:                                             ; preds = %bb.q, %bb.o, %.noexc5.i
  %3 = phi ptr [ %i.bd, %bb.q ], [ %i.by, %bb.o ], [ %i.by, %.noexc5.i ]
  %4 = phi i64 [ %i.be, %bb.q ], [ %i.bz, %bb.o ], [ %i.bz, %.noexc5.i ]
  %.pre.i.i.i21.i.i.i = phi i64 [ %.pre.i.i.i23.i.i.i, %bb.q ], [ %.pre.i.i.i22.i.i.i, %bb.o ], [ %.pre.i.i.i22.i.i.i, %.noexc5.i ]
  %5 = phi i64 [ %i.bf, %bb.q ], [ %i.ca, %bb.o ], [ %i.ca, %.noexc5.i ]
  %6 = phi ptr [ %i.cf, %bb.q ], [ %i.bg, %bb.o ], [ %i.bg, %.noexc5.i ]
  %7 = phi ptr [ %i.cf, %bb.q ], [ %i.bh, %bb.o ], [ %i.bh, %.noexc5.i ]
  %8 = phi ptr [ null, %bb.q ], [ %i.bl, %bb.o ], [ %i.bl, %.noexc5.i ]
  %.sroa.0.0.i.pn.i.ph.i.i.i = phi i32 [ %.val.i.i.i.i.i, %bb.q ], [ %i.cd, %bb.o ], [ 0, %.noexc5.i ]
  %.sroa.02.0.i.i.i.i.i = zext i32 %.sroa.0.0.i.pn.i.ph.i.i.i to i64, !dbg !109754
  %i.cg = add i64 %.sroa.0.0.i.i.i, %.sroa.02.0.i.i.i.i.i, !dbg !109762
  br label %bb.k, !dbg !109640

_RINvYINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtNtBc_5array7binview4view4ViewENCNvMs4_B2C_INtB2C_22BinaryViewArrayGenericeE8len_iter0ENtNtB8_8iterator10BitmapIterENtNtNtB1q_6traits8iterator8Iterator4foldjNCINvB1m_8map_foldINtNtB1s_6option6OptionmEjjNCNvB3c_15total_bytes_len0NCINvXsK_NtB4z_5accumjNtB6s_3Sum3sumIB1k_B3_B5T_EE0E0ECslFlrwjHoTci_14polars_compute.exit.i.i: ; preds = %bb.p, %.noexc5.i
  store atomic i64 %.sroa.0.0.i.i.i, ptr %i.al monotonic, align 8, !dbg !109765, !alias.scope !109555, !noalias !109551
  br label %bb.t, !dbg !109774

bb.s:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.j, i64 128, i1 false), !dbg !109775, !alias.scope !109561
  br label %_RNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB5_22BinaryViewArrayGenericeE8maybe_gcCslFlrwjHoTci_14polars_compute.exit, !dbg !109562

bb.t:                                             ; preds = %_RINvYINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtNtBc_5array7binview4view4ViewENCNvMs4_B2C_INtB2C_22BinaryViewArrayGenericeE8len_iter0ENtNtB8_8iterator10BitmapIterENtNtNtB1q_6traits8iterator8Iterator4foldjNCINvB1m_8map_foldINtNtB1s_6option6OptionmEjjNCNvB3c_15total_bytes_len0NCINvXsK_NtB4z_5accumjNtB6s_3Sum3sumIB1k_B3_B5T_EE0E0ECslFlrwjHoTci_14polars_compute.exit.i.i, %bb.i
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.i.i.i, %_RINvYINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtNtBc_5array7binview4view4ViewENCNvMs4_B2C_INtB2C_22BinaryViewArrayGenericeE8len_iter0ENtNtB8_8iterator10BitmapIterENtNtNtB1q_6traits8iterator8Iterator4foldjNCINvB1m_8map_foldINtNtB1s_6option6OptionmEjjNCNvB3c_15total_bytes_len0NCINvXsK_NtB4z_5accumjNtB6s_3Sum3sumIB1k_B3_B5T_EE0E0ECslFlrwjHoTci_14polars_compute.exit.i.i ], [ %i.ar, %bb.i ], !dbg !109776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !109777, !noalias !109561
  %i.ch = getelementptr inbounds nuw i8, ptr %i.j, i64 48, !dbg !109778
  %i.ci = load i64, ptr %i.ch, align 8, !dbg !109778, !alias.scope !109555, !noalias !109551, !noundef !15 ; 2 uses
  %i.cj = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !109784, !alias.scope !109555, !noalias !109551, !nonnull !15, !noundef !15 ; 3 uses
  %i.ck = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !109793, !alias.scope !109555, !noalias !109551, !noundef !15 ; 5 uses
  %i.cl = icmp eq i64 %i.ck, 0, !dbg !109794
  br i1 %i.cl, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3d_22BinaryViewArrayGenericeE25total_unshared_buffer_len0NCINvXsK_NtB1J_5accumjNtB55_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECslFlrwjHoTci_14polars_compute.exit.i, label %.preheader.i.preheader, !dbg !109807

.preheader.i.preheader:                           ; preds = %bb.t
  %xtraiter = and i64 %i.ck, 1, !dbg !109808
  %i.cm = icmp eq i64 %i.ck, 1, !dbg !109808
  br i1 %i.cm, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new, !dbg !109808

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i64 %i.ck, -2, !dbg !109808
  br label %.preheader.i, !dbg !109808

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.sroa.04.0.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.de, %.preheader.i ], !dbg !109812 ; 3 uses
  %.sroa.02.0.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.dd, %.preheader.i ], !dbg !109813
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.1, %.preheader.i ]
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %.sroa.04.0.i.i, !dbg !109814 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !109817), !dbg !109820
  call void @llvm.experimental.noalias.scope.decl(metadata !109821), !dbg !109824
  %i.co = load ptr, ptr %i.cn, align 8, !dbg !109827, !alias.scope !109836, !noalias !109551, !nonnull !15, !noundef !15
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24, !dbg !109837
  %i.cq = load atomic i64, ptr %i.cp acquire, align 8, !dbg !109844, !noalias !109846
  %i.cr = icmp ugt i64 %i.cq, 1, !dbg !109847
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 16, !dbg !109847
  %i.ct = load i64, ptr %i.cs, align 8, !dbg !109847, !alias.scope !109836, !noalias !109551
  %.sroa.0.0.i.i.i.i = select i1 %i.cr, i64 0, i64 %i.ct, !dbg !109847
  %i.cu = add i64 %.sroa.0.0.i.i.i.i, %.sroa.02.0.i.i, !dbg !109848
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %.sroa.04.0.i.i, !dbg !109814 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24, !dbg !109814
  call void @llvm.experimental.noalias.scope.decl(metadata !109851), !dbg !109820
  call void @llvm.experimental.noalias.scope.decl(metadata !109853), !dbg !109824
  %i.cx = load ptr, ptr %i.cw, align 8, !dbg !109827, !alias.scope !109855, !noalias !109551, !nonnull !15, !noundef !15
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24, !dbg !109837
  %i.cz = load atomic i64, ptr %i.cy acquire, align 8, !dbg !109844, !noalias !109856
  %i.da = icmp ugt i64 %i.cz, 1, !dbg !109847
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 40, !dbg !109847
  %i.dc = load i64, ptr %i.db, align 8, !dbg !109847, !alias.scope !109855, !noalias !109551
  %.sroa.0.0.i.i.i.i.1 = select i1 %i.da, i64 0, i64 %i.dc, !dbg !109847
  %i.dd = add i64 %.sroa.0.0.i.i.i.i.1, %i.cu, !dbg !109848 ; 3 uses
  %i.de = add nuw i64 %.sroa.04.0.i.i, 2, !dbg !109857 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2, !dbg !109808 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !109808
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3d_22BinaryViewArrayGenericeE25total_unshared_buffer_len0NCINvXsK_NtB1J_5accumjNtB55_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECslFlrwjHoTci_14polars_compute.exit.i.loopexit.unr-lcssa, label %.preheader.i, !dbg !109808

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3d_22BinaryViewArrayGenericeE25total_unshared_buffer_len0NCINvXsK_NtB1J_5accumjNtB55_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECslFlrwjHoTci_14polars_compute.exit.i.loopexit.unr-lcssa: ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !109808
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3d_22BinaryViewArrayGenericeE25total_unshared_buffer_len0NCINvXsK_NtB1J_5accumjNtB55_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECslFlrwjHoTci_14polars_compute.exit.i, label %.preheader.i.epil.preheader, !dbg !109808

.preheader.i.epil.preheader:                      ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3d_22BinaryViewArrayGenericeE25total_unshared_buffer_len0NCINvXsK_NtB1J_5accumjNtB55_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECslFlrwjHoTci_14polars_compute.exit.i.loopexit.unr-lcssa, %.preheader.i.preheader
  %.sroa.04.0.i.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.de, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3d_22BinaryViewArrayGenericeE25total_unshared_buffer_len0NCINvXsK_NtB1J_5accumjNtB55_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECslFlrwjHoTci_14polars_compute.exit.i.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.dd, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3d_22BinaryViewArrayGenericeE25total_unshared_buffer_len0NCINvXsK_NtB1J_5accumjNtB55_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECslFlrwjHoTci_14polars_compute.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod37 = trunc i64 %i.ck to i1, !dbg !109808
  call void @llvm.assume(i1 %lcmp.mod37), !dbg !109808
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %.sroa.04.0.i.i.epil.init, !dbg !109814 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !109817), !dbg !109820
  call void @llvm.experimental.noalias.scope.decl(metadata !109821), !dbg !109824
  %i.dg = load ptr, ptr %i.df, align 8, !dbg !109827, !alias.scope !109836, !noalias !109551, !nonnull !15, !noundef !15
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24, !dbg !109837
  %i.di = load atomic i64, ptr %i.dh acquire, align 8, !dbg !109844, !noalias !109846
  %i.dj = icmp ugt i64 %i.di, 1, !dbg !109847
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 16, !dbg !109847
  %i.dl = load i64, ptr %i.dk, align 8, !dbg !109847, !alias.scope !109836, !noalias !109551
  %.sroa.0.0.i.i.i.i.epil = select i1 %i.dj, i64 0, i64 %i.dl, !dbg !109847
  %i.dm = add i64 %.sroa.0.0.i.i.i.i.epil, %.sroa.02.0.i.i.epil.init, !dbg !109848
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3d_22BinaryViewArrayGenericeE25total_unshared_buffer_len0NCINvXsK_NtB1J_5accumjNtB55_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECslFlrwjHoTci_14polars_compute.exit.i, !dbg !109860

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3d_22BinaryViewArrayGenericeE25total_unshared_buffer_len0NCINvXsK_NtB1J_5accumjNtB55_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECslFlrwjHoTci_14polars_compute.exit.i: ; preds = %.preheader.i.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3d_22BinaryViewArrayGenericeE25total_unshared_buffer_len0NCINvXsK_NtB1J_5accumjNtB55_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECslFlrwjHoTci_14polars_compute.exit.i.loopexit.unr-lcssa, %bb.t
  %.sroa.0.0.i6.i = phi i64 [ 0, %bb.t ], [ %i.dd, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3d_22BinaryViewArrayGenericeE25total_unshared_buffer_len0NCINvXsK_NtB1J_5accumjNtB55_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECslFlrwjHoTci_14polars_compute.exit.i.loopexit.unr-lcssa ], [ %i.dm, %.preheader.i.epil.preheader ], !dbg !109813
  %i.dn = shl i64 %i.ci, 4, !dbg !109860          ; 2 uses
  %i.do = mul i64 %i.ci, 12, !dbg !109861
  %i.dp = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i.i, i64 %i.do), !dbg !109862
  %i.dq = add i64 %i.dp, %i.dn, !dbg !109860      ; 2 uses
  %i.dr = add i64 %.sroa.0.0.i6.i, %i.dn, !dbg !109865 ; 2 uses
  %i.ds = call i64 @llvm.usub.sat.i64(i64 %i.dr, i64 %i.dq), !dbg !109866
  %i.dt = icmp ugt i64 %i.ds, 16383, !dbg !109869
  %i.du = shl i64 %i.dq, 2
  %i.dv = icmp uge i64 %i.dr, %i.du
  %or.cond.i = and i1 %i.dv, %i.dt, !dbg !109869
  br i1 %or.cond.i, label %bb.v, label %bb.u, !dbg !109869

bb.u:                                             ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3d_22BinaryViewArrayGenericeE25total_unshared_buffer_len0NCINvXsK_NtB1J_5accumjNtB55_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECslFlrwjHoTci_14polars_compute.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.j, i64 128, i1 false), !dbg !109871, !alias.scope !109561
  br label %_RNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB5_22BinaryViewArrayGenericeE8maybe_gcCslFlrwjHoTci_14polars_compute.exit, !dbg !109872

bb.v:                                             ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3d_22BinaryViewArrayGenericeE25total_unshared_buffer_len0NCINvXsK_NtB1J_5accumjNtB55_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECslFlrwjHoTci_14polars_compute.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !109873, !noalias !109561
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.g, ptr noundef nonnull align 8 dereferenceable(128) %i.j, i64 128, i1 false), !dbg !109873, !noalias !109551
  call void @llvm.experimental.noalias.scope.decl(metadata !109874), !dbg !109877
  %i.dw = getelementptr inbounds nuw i8, ptr %i.g, i64 56, !dbg !109878 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.g, i64 72, !dbg !109878
  %i.dy = load i64, ptr %i.dx, align 8, !dbg !109878, !alias.scope !109874, !noalias !109883, !noundef !15 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 0, !dbg !109885
  br i1 %i.dz, label %bb.w, label %bb.x, !dbg !109885

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.j, i64 128, i1 false), !dbg !109886, !alias.scope !109561
  br label %_RNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB5_22BinaryViewArrayGenericeE2gcCslFlrwjHoTci_14polars_compute.exit.i, !dbg !109887

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !109888, !noalias !109889
  %i.ea = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !109890 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.g, i64 48, !dbg !109890
  %i.ec = load i64, ptr %i.eb, align 8, !dbg !109890, !alias.scope !109874, !noalias !109883, !noundef !15 ; 3 uses
  invoke void @_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayeE13with_capacityCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.e, i64 noundef %i.ec)
          to label %bb.z unwind label %bb.y, !dbg !109895, !noalias !109896

.body.thread.i.i:                                 ; preds = %bb.at, %.body.i.i.i, %.body.i.i, %bb.y
  %.pn.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %bb.at ], [ %lpad.thr_comm.split-lp.i.i, %.body.i.i ], [ %i.ed, %bb.y ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ] ; 3 uses
  %.sroa.03.0.i.i = phi i1 [ true, %bb.at ], [ true, %.body.i.i ], [ true, %bb.y ], [ false, %.body.i.i.i ], !dbg !109897
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.g) #36
          to label %bb.au unwind label %bb.as, !dbg !109887, !noalias !109898

bb.y:                                             ; preds = %bb.x
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

bb.z:                                             ; preds = %bb.x
  %i.ee = getelementptr inbounds nuw i8, ptr %i.g, i64 64, !dbg !109899
  %i.ef = load ptr, ptr %i.ee, align 8, !dbg !109899, !alias.scope !109874, !noalias !109883, !noundef !15
  %i.eg = getelementptr inbounds nuw i8, ptr %i.g, i64 40, !dbg !109905
  %i.eh = load ptr, ptr %i.eg, align 8, !dbg !109905, !alias.scope !109874, !noalias !109883, !nonnull !15, !noundef !15 ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.ec, 4, !dbg !109912
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.idx.i.i, !dbg !109912
  %.not29.i.i = icmp eq i64 %i.ec, 0, !dbg !109923
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !109932

.lr.ph.i.i:                                       ; preds = %bb.z
  %i.ej = getelementptr inbounds nuw i8, ptr %i.e, i64 144 ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br label %bb.aa, !dbg !109932

bb.aa:                                            ; preds = %_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayeE19push_view_uncheckedCslFlrwjHoTci_14polars_compute.exit.i.i, %.lr.ph.i.i
  %.sroa.0.030.i.i = phi ptr [ %i.eh, %.lr.ph.i.i ], [ %i.fo, %_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayeE19push_view_uncheckedCslFlrwjHoTci_14polars_compute.exit.i.i ] ; 3 uses
  %i.em = load <4 x i32>, ptr %.sroa.0.030.i.i, align 4, !dbg !109933, !noalias !109896 ; 3 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %.sroa.0.030.i.i, align 4, !dbg !109933, !noalias !109896 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !109935), !dbg !109938
  call void @llvm.experimental.noalias.scope.decl(metadata !109939), !dbg !109938
  %i.en = icmp ult i32 %.sroa.0.0.copyload.i.i, 13, !dbg !109941
  br i1 %i.en, label %bb.ad, label %bb.ab, !dbg !109941

bb.ab:                                            ; preds = %bb.aa
  %i.eo = extractelement <4 x i32> %i.em, i64 2, !dbg !109945
  %i.ep = zext i32 %i.eo to i64, !dbg !109945     ; 2 uses
  %i.eq = icmp samesign ugt i64 %i.dy, %i.ep, !dbg !109946
  call void @llvm.assume(i1 %i.eq), !dbg !109951
  %i.er = getelementptr inbounds nuw [24 x i8], ptr %i.ef, i64 %i.ep, !dbg !109952
  %i.es = extractelement <4 x i32> %i.em, i64 3, !dbg !109953
  %i.et = zext i32 %i.es to i64, !dbg !109953
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 8, !dbg !109955
  %i.ev = load ptr, ptr %i.eu, align 8, !dbg !109955, !alias.scope !109939, !noalias !109961, !noundef !15
  %i.ew = zext i32 %.sroa.0.0.copyload.i.i to i64, !dbg !109963 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.et, !dbg !109964
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !109974, !noalias !109980
  %i.ey = load i64, ptr %i.ej, align 8, !dbg !109974, !alias.scope !109981, !noalias !109984, !noundef !15
  %i.ez = add i64 %i.ey, %i.ew, !dbg !109974
  store i64 %i.ez, ptr %i.ej, align 8, !dbg !109974, !alias.scope !109981, !noalias !109984
  invoke void @_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayeE22push_value_into_bufferCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(160) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ex, i64 noundef range(i64 0, 4294967296) %i.ew)
          to label %.noexc.i.i unwind label %bb.at, !dbg !109986, !noalias !109896

.noexc.i.i:                                       ; preds = %bb.ab
  %i.fa = load i64, ptr %i.ek, align 8, !dbg !109987, !alias.scope !109992, !noalias !109995, !noundef !15 ; 3 uses
  %i.fb = load i64, ptr %i.e, align 8, !dbg !109997, !range !169, !alias.scope !109992, !noalias !109995, !noundef !15
  %i.fc = icmp eq i64 %i.fa, %i.fb, !dbg !110000
  br i1 %i.fc, label %bb.ac, label %_RINvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB6_22MutableBinaryViewArrayeE26push_value_ignore_validityReECslFlrwjHoTci_14polars_compute.exit.i.i.i, !dbg !110000

bb.ac:                                            ; preds = %.noexc.i.i
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE8grow_oneBU_(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.e)
          to label %_RINvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB6_22MutableBinaryViewArrayeE26push_value_ignore_validityReECslFlrwjHoTci_14polars_compute.exit.i.i.i unwind label %bb.at, !dbg !110001, !noalias !109896

_RINvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB6_22MutableBinaryViewArrayeE26push_value_ignore_validityReECslFlrwjHoTci_14polars_compute.exit.i.i.i: ; preds = %bb.ac, %.noexc.i.i
  %i.fd = load ptr, ptr %i.el, align 8, !dbg !110002, !alias.scope !109992, !noalias !109995, !nonnull !15, !noundef !15
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %i.fd, i64 %i.fa, !dbg !110007
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fe, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !110009, !noalias !110011
  %i.ff = add i64 %i.fa, 1, !dbg !110012
  store i64 %i.ff, ptr %i.ek, align 8, !dbg !110012, !alias.scope !109992, !noalias !109995
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !110013, !noalias !109980
  br label %_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayeE19push_view_uncheckedCslFlrwjHoTci_14polars_compute.exit.i.i, !dbg !110014

bb.ad:                                            ; preds = %bb.aa
  %i.fg = load ptr, ptr %i.el, align 8, !dbg !110015, !alias.scope !109935, !noalias !110026, !nonnull !15, !noundef !15
  %i.fh = load i64, ptr %i.ek, align 8, !dbg !110027, !alias.scope !109935, !noalias !110026, !noundef !15 ; 3 uses
end_hunk_0
begin_hunk_1_@_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayeE22push_value_into_bufferCslFlrwjHoTci_14polars_compute:bb.a
  %i.p = icmp ugt i64 %i.n, %.sroa.0.0.i, !dbg !111053
  br i1 %i.p, label %bb.e, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCslFlrwjHoTci_14polars_compute.exit, !dbg !111053

bb.e:                                             ; preds = %bb.d
  %i.q = shl nuw i64 %i.o, 1, !dbg !111054
  %i.r = tail call i64 @llvm.umax.i64(i64 range(i64 0, -1) %i.q, i64 8192), !dbg !111055
  %.sroa.0.0.i11 = tail call noundef range(i64 8192, 16777217) i64 @llvm.umin.i64(i64 %i.r, i64 16777216), !dbg !111055
  %.sroa.0.0.i12 = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %.sroa.0.0.i11, i64 %3), !dbg !111057 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !111059
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.0.0.i12, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !111059
  %i.s = load i64, ptr %i.b, align 8, !dbg !111059, !range !74174, !noundef !15
  %i.t = trunc nuw i64 %i.s to i1, !dbg !111069
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !111070
  %i.v = load i64, ptr %i.u, align 8, !dbg !111070, !range !73453, !noundef !15 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !111070 ; 2 uses
  br i1 %i.t, label %bb.f, label %bb.g, !dbg !111069, !prof !475

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.d, %bb.o
  %i.x = phi i64 [ %i.l, %bb.d ], [ %.pre, %bb.o ], !dbg !111071 ; 2 uses
  %i.y = icmp sgt i64 %i.x, -1, !dbg !111073
  call void @llvm.assume(i1 %i.y), !dbg !111075
  call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %3), !dbg !111076
  %i.z = load i64, ptr %i.k, align 8, !dbg !111084, !alias.scope !111086, !noundef !15 ; 2 uses
  %i.aa = icmp sgt i64 %i.z, -1, !dbg !111089
  call void @llvm.assume(i1 %i.aa), !dbg !111090
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !111091
  %i.ac = load ptr, ptr %i.ab, align 8, !dbg !111091, !alias.scope !111086, !nonnull !15, !noundef !15
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.z, !dbg !111096
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull readonly align 1 %2, i64 %3, i1 false), !dbg !111098
  %.pre.i = load i64, ptr %i.k, align 8, !dbg !111100, !alias.scope !111086
  %i.ae = add i64 %.pre.i, %3, !dbg !111100
  store i64 %i.ae, ptr %i.k, align 8, !dbg !111100, !alias.scope !111086
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !111101
  %i.ag = load i64, ptr %i.af, align 8, !dbg !111101, !noundef !15 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 384307168202282326, !dbg !111104
  call void @llvm.assume(i1 %i.ah), !dbg !111106
  %i.ai = icmp samesign ugt i64 %i.ag, 4294967295, !dbg !111107
  br i1 %i.ai, label %.split, label %.split9, !dbg !111107

bb.f:                                             ; preds = %bb.e
  %i.aj = load i64, ptr %i.w, align 8, !dbg !111110
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.v, i64 %i.aj) #39, !dbg !111111
  unreachable, !dbg !111111

bb.g:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr %i.w, align 8, !dbg !111113, !nonnull !15, !noundef !15
  %i.al = icmp samesign ule i64 %.sroa.0.0.i12, %i.v, !dbg !111114
  tail call void @llvm.assume(i1 %i.al), !dbg !111118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !111121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !111122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !111124
  store i64 %i.v, ptr %i.j, align 8, !dbg !111127
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !111127
  store ptr %i.ak, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !111127
  store i64 0, ptr %i.k, align 8, !dbg !111127
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !111129
  %i.an = load i64, ptr %i.am, align 8, !dbg !111129, !noundef !15 ; 2 uses
  %i.ao = icmp sgt i64 %i.an, -1, !dbg !111134
  tail call void @llvm.assume(i1 %i.ao), !dbg !111136
  %i.ap = icmp eq i64 %i.an, 0, !dbg !111137
  br i1 %i.ap, label %bb.h, label %bb.k, !dbg !111137

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslFlrwjHoTci_14polars_compute.exit unwind label %bb.i, !dbg !111138

bb.i:                                             ; preds = %bb.h
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.j, !dbg !111140

bb.j:                                             ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #34, !dbg !111138
  unreachable, !dbg !111138

common.resume:                                    ; preds = %bb.m, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.aq, %bb.i ], [ %i.ay, %bb.m ]
  resume { ptr, i32 } %common.resume.op, !dbg !111142

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.h
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d), !dbg !111143
  br label %bb.o, !dbg !111145

bb.k:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !111146 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !111147
  %i.at = call noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE8from_vecCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d), !dbg !111148
  call void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferhE12from_storageCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull %i.at), !dbg !111155
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !111156 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !dbg !111156, !alias.scope !111160, !noalias !111163, !noundef !15 ; 3 uses
  %i.aw = load i64, ptr %i.as, align 8, !dbg !111165, !range !169, !alias.scope !111160, !noalias !111163, !noundef !15
  %i.ax = icmp eq i64 %i.av, %i.aw, !dbg !111168
  br i1 %i.ax, label %bb.l, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8push_mutCslFlrwjHoTci_14polars_compute.exit, !dbg !111168

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8push_mutCslFlrwjHoTci_14polars_compute.exit unwind label %bb.m, !dbg !111169, !noalias !111163

bb.m:                                             ; preds = %bb.l
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.n, !dbg !111170

bb.n:                                             ; preds = %bb.m
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #34, !dbg !111173
  unreachable, !dbg !111173

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8push_mutCslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.k, %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !111174
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !111174, !alias.scope !111160, !noalias !111163, !nonnull !15, !noundef !15
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %i.av, !dbg !111179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !111181
  %i.bd = add i64 %i.av, 1, !dbg !111182
  store i64 %i.bd, ptr %i.au, align 8, !dbg !111182, !alias.scope !111160, !noalias !111163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !111183
  br label %bb.o, !dbg !111145

bb.o:                                             ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8push_mutCslFlrwjHoTci_14polars_compute.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslFlrwjHoTci_14polars_compute.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !111145
  %.pre = load i64, ptr %i.k, align 8, !dbg !111071
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCslFlrwjHoTci_14polars_compute.exit, !dbg !111184

.split9:                                          ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCslFlrwjHoTci_14polars_compute.exit
  %i.be = trunc i64 %i.x to i32, !dbg !111185
  %i.bf = trunc nuw i64 %i.ag to i32, !dbg !111186
  %.val = load i32, ptr %2, align 1, !dbg !111187
  %i.bg = trunc nuw i64 %3 to i32, !dbg !111189
  store i32 %i.bg, ptr %0, align 4, !dbg !111192, !alias.scope !111193
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !111192
  store i32 %.val, ptr %i.bh, align 4, !dbg !111192, !alias.scope !111193
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !111192
  store i32 %i.bf, ptr %i.bi, align 4, !dbg !111192, !alias.scope !111193
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !111192
  store i32 %i.be, ptr %i.bj, align 4, !dbg !111192, !alias.scope !111193
  br label %bb.p, !dbg !111187

.split:                                           ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCslFlrwjHoTci_14polars_compute.exit
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #39, !dbg !111196
  unreachable

bb.p:                                             ; preds = %bb.q, %.split9
  ret void, !dbg !111198

bb.q:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4), !dbg !111199
  %i.bk = trunc nuw nsw i64 %3 to i32, !dbg !111204
  store i32 0, ptr %.sroa.4, align 4, !dbg !111205
  %.sroa.4.4..sroa_idx16 = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4, !dbg !111205
  store i32 0, ptr %.sroa.4.4..sroa_idx16, align 4, !dbg !111205
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 8, !dbg !111205
  store i32 0, ptr %.sroa.4.8..sroa_idx, align 4, !dbg !111205
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.4, ptr nonnull align 1 %2, i64 %3, i1 false), !dbg !111206
  store i32 %i.bk, ptr %0, align 4, !dbg !111212
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !111212
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4, i64 12, i1 false), !dbg !111212
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4), !dbg !111213
  br label %bb.p, !dbg !111214
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB5_22BinaryViewArrayGenericShE15total_bytes_lenCslFlrwjHoTci_14polars_compute(ptr noundef nonnull align 8 %0) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !111215 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !111216 ; 2 uses
  %i.c = load atomic i64, ptr %i.b monotonic, align 8, !dbg !111227 ; 2 uses
  %i.d = icmp eq i64 %i.c, -1, !dbg !111229
  br i1 %i.d, label %bb.b, label %bb.k, !dbg !111229

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !111231
  %i.f = load ptr, ptr %i.e, align 8, !dbg !111231, !nonnull !15, !noundef !15 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !111238
  %i.h = load i64, ptr %i.g, align 8, !dbg !111238, !noundef !15
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h, !dbg !111239
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !111248 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !dbg !111248, !noundef !15
  %.not = icmp eq ptr %i.k, null, !dbg !111248
  %. = select i1 %.not, ptr null, ptr %i.j, !dbg !111251
  call void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtNtNtBb_5array7binview4view4ViewENCNvMs4_B2H_INtB2H_22BinaryViewArrayGenericShE8len_iter0ENtNtB7_8iterator10BitmapIterE17new_with_validityCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noundef nonnull %i.f, ptr noundef nonnull %i.i, ptr noundef align 8 %.), !dbg !111252
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111253), !dbg !111256
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !111263
  %.promoted.i = load ptr, ptr %i.a, align 8, !alias.scope !111270
  %.promoted18.i = load ptr, ptr %i.l, align 8, !alias.scope !111253 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.promoted20.i = load i64, ptr %i.n, align 8, !alias.scope !111253
  %.phi.trans.insert.i.i.i.promoted.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !111253
  %.promoted24.i = load i64, ptr %i.o, align 8, !alias.scope !111253
  %.promoted25.i = load ptr, ptr %i.m, align 8, !alias.scope !111253
  br label %bb.c, !dbg !111273

bb.c:                                             ; preds = %bb.j, %bb.b
  %i.p = phi ptr [ %.promoted25.i, %bb.b ], [ %1, %bb.j ] ; 6 uses
  %i.q = phi i64 [ %.promoted24.i, %bb.b ], [ %2, %bb.j ] ; 5 uses
  %.pre.i.i.i23.i = phi i64 [ %.phi.trans.insert.i.i.i.promoted.i, %bb.b ], [ %.pre.i.i.i21.i, %bb.j ] ; 3 uses
  %i.r = phi i64 [ %.promoted20.i, %bb.b ], [ %3, %bb.j ] ; 3 uses
  %i.s = phi ptr [ %.promoted18.i, %bb.b ], [ %4, %bb.j ] ; 3 uses
  %i.t = phi ptr [ %.promoted18.i, %bb.b ], [ %5, %bb.j ] ; 5 uses
  %i.u = phi ptr [ %.promoted.i, %bb.b ], [ %6, %bb.j ] ; 5 uses
  %.sroa.0.0.i = phi i64 [ 0, %bb.b ], [ %i.as, %bb.j ], !dbg !111274 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111275), !dbg !111276
  %.not.i.i = icmp eq ptr %i.u, null, !dbg !111277
  br i1 %.not.i.i, label %bb.h, label %bb.d, !dbg !111278

bb.d:                                             ; preds = %bb.c
  %i.v = icmp eq ptr %i.u, %i.s, !dbg !111279
  br i1 %i.v, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericShE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCslFlrwjHoTci_14polars_compute.exit.i.i.i, label %bb.e, !dbg !111287

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !111288
  %.val.i.i.i.i = load i32, ptr %i.u, align 4, !dbg !111290, !noalias !111296, !noundef !15
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericShE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCslFlrwjHoTci_14polars_compute.exit.i.i.i, !dbg !111301

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericShE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCslFlrwjHoTci_14polars_compute.exit.i.i.i: ; preds = %bb.e, %bb.d
  %i.x = phi ptr [ %i.w, %bb.e ], [ %i.u, %bb.d ] ; 2 uses
  %.sroa.3.0.i.i.i.i = phi i32 [ %.val.i.i.i.i, %bb.e ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i.i = phi i32 [ 1, %bb.e ], [ 0, %bb.d ], !dbg !111302
  %i.y = icmp eq i64 %i.r, 0, !dbg !111303
  br i1 %i.y, label %bb.f, label %._crit_edge.i.i.i.i, !dbg !111303

bb.f:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericShE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCslFlrwjHoTci_14polars_compute.exit.i.i.i
  %i.z = icmp eq i64 %i.q, 0, !dbg !111306
  br i1 %i.z, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit.i.i.i.i, !dbg !111306

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit.i.i.i.i: ; preds = %bb.f
  %.sroa.0.0.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.q, i64 64), !dbg !111307 ; 2 uses
  %i.aa = sub nuw i64 %i.q, %.sroa.0.0.i.i.i.i.i, !dbg !111309
  %.sroa.02.0.copyload.i.i.i.i = load i64, ptr %i.p, align 1, !dbg !111310, !noalias !111314
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !111317
  br label %._crit_edge.i.i.i.i, !dbg !111322

._crit_edge.i.i.i.i:                              ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit.i.i.i.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericShE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCslFlrwjHoTci_14polars_compute.exit.i.i.i
  %i.ac = phi ptr [ %i.ab, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit.i.i.i.i ], [ %i.p, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericShE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCslFlrwjHoTci_14polars_compute.exit.i.i.i ]
  %i.ad = phi i64 [ %i.aa, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit.i.i.i.i ], [ %i.q, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericShE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCslFlrwjHoTci_14polars_compute.exit.i.i.i ]
  %i.ae = phi i64 [ %.sroa.0.0.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit.i.i.i.i ], [ %i.r, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericShE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCslFlrwjHoTci_14polars_compute.exit.i.i.i ], !dbg !111323
  %i.af = phi i64 [ %.sroa.02.0.copyload.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit.i.i.i.i ], [ %.pre.i.i.i23.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericShE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCslFlrwjHoTci_14polars_compute.exit.i.i.i ], !dbg !111324 ; 2 uses
  %i.ag = trunc i64 %i.af to i8, !dbg !111324
  %i.ah = lshr i64 %i.af, 1, !dbg !111325
  %i.ai = add i64 %i.ae, -1, !dbg !111323
  %i.aj = and i8 %i.ag, 1, !dbg !111326
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i, !dbg !111327

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %bb.f
  %i.ak = phi ptr [ %i.ac, %._crit_edge.i.i.i.i ], [ %i.p, %bb.f ] ; 2 uses
  %i.al = phi i64 [ %i.ad, %._crit_edge.i.i.i.i ], [ 0, %bb.f ] ; 2 uses
  %.pre.i.i.i22.i = phi i64 [ %i.ah, %._crit_edge.i.i.i.i ], [ %.pre.i.i.i23.i, %bb.f ] ; 2 uses
  %i.am = phi i64 [ %i.ai, %._crit_edge.i.i.i.i ], [ 0, %bb.f ] ; 2 uses
  %.sroa.0.0.i9.i.i.i = phi i8 [ %i.aj, %._crit_edge.i.i.i.i ], [ 2, %bb.f ], !dbg !111328
  %i.an = tail call { i8, i32 } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipmECslFlrwjHoTci_14polars_compute(i8 noundef %.sroa.0.0.i9.i.i.i, i32 noundef %.sroa.0.0.i.i.i.i, i32 %.sroa.3.0.i.i.i.i), !dbg !111329, !noalias !111331 ; 2 uses
  %i.ao = extractvalue { i8, i32 } %i.an, 0, !dbg !111332
  switch i8 %i.ao, label %bb.g [
    i8 2, label %_RINvYINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtNtBc_5array7binview4view4ViewENCNvMs4_B2C_INtB2C_22BinaryViewArrayGenericShE8len_iter0ENtNtB8_8iterator10BitmapIterENtNtNtB1q_6traits8iterator8Iterator4foldjNCINvB1m_8map_foldINtNtB1s_6option6OptionmEjjNCNvB3c_15total_bytes_len0NCINvXsK_NtB4A_5accumjNtB6t_3Sum3sumIB1k_B3_B5U_EE0E0ECslFlrwjHoTci_14polars_compute.exit
    i8 0, label %bb.j
  ], !dbg !111333

bb.g:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i
  %i.ap = extractvalue { i8, i32 } %i.an, 1, !dbg !111332
  br label %bb.j, !dbg !111336

bb.h:                                             ; preds = %bb.c
  %i.aq = icmp eq ptr %i.t, %i.p, !dbg !111343
  br i1 %i.aq, label %_RINvYINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtNtBc_5array7binview4view4ViewENCNvMs4_B2C_INtB2C_22BinaryViewArrayGenericShE8len_iter0ENtNtB8_8iterator10BitmapIterENtNtNtB1q_6traits8iterator8Iterator4foldjNCINvB1m_8map_foldINtNtB1s_6option6OptionmEjjNCNvB3c_15total_bytes_len0NCINvXsK_NtB4A_5accumjNtB6t_3Sum3sumIB1k_B3_B5U_EE0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.i, !dbg !111348

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !111349 ; 2 uses
  %.val.i.i.i = load i32, ptr %i.t, align 4, !dbg !111351, !noalias !111354, !noundef !15
  br label %bb.j, !dbg !111357

bb.j:                                             ; preds = %bb.i, %bb.g, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i
  %1 = phi ptr [ %i.p, %bb.i ], [ %i.ak, %bb.g ], [ %i.ak, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %2 = phi i64 [ %i.q, %bb.i ], [ %i.al, %bb.g ], [ %i.al, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %.pre.i.i.i21.i = phi i64 [ %.pre.i.i.i23.i, %bb.i ], [ %.pre.i.i.i22.i, %bb.g ], [ %.pre.i.i.i22.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %3 = phi i64 [ %i.r, %bb.i ], [ %i.am, %bb.g ], [ %i.am, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %4 = phi ptr [ %i.ar, %bb.i ], [ %i.s, %bb.g ], [ %i.s, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %5 = phi ptr [ %i.ar, %bb.i ], [ %i.t, %bb.g ], [ %i.t, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %6 = phi ptr [ null, %bb.i ], [ %i.x, %bb.g ], [ %i.x, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %.sroa.0.0.i.pn.i.ph.i = phi i32 [ %.val.i.i.i, %bb.i ], [ %i.ap, %bb.g ], [ 0, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %.sroa.02.0.i.i.i = zext i32 %.sroa.0.0.i.pn.i.ph.i to i64, !dbg !111360
  %i.as = add i64 %.sroa.0.0.i, %.sroa.02.0.i.i.i, !dbg !111367
  br label %bb.c, !dbg !111273

_RINvYINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtNtBc_5array7binview4view4ViewENCNvMs4_B2C_INtB2C_22BinaryViewArrayGenericShE8len_iter0ENtNtB8_8iterator10BitmapIterENtNtNtB1q_6traits8iterator8Iterator4foldjNCINvB1m_8map_foldINtNtB1s_6option6OptionmEjjNCNvB3c_15total_bytes_len0NCINvXsK_NtB4A_5accumjNtB6t_3Sum3sumIB1k_B3_B5U_EE0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i, %bb.h
  store atomic i64 %.sroa.0.0.i, ptr %i.b monotonic, align 8, !dbg !111370
  br label %bb.k, !dbg !111379

bb.k:                                             ; preds = %bb.a, %_RINvYINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtNtBc_5array7binview4view4ViewENCNvMs4_B2C_INtB2C_22BinaryViewArrayGenericShE8len_iter0ENtNtB8_8iterator10BitmapIterENtNtNtB1q_6traits8iterator8Iterator4foldjNCINvB1m_8map_foldINtNtB1s_6option6OptionmEjjNCNvB3c_15total_bytes_len0NCINvXsK_NtB4A_5accumjNtB6t_3Sum3sumIB1k_B3_B5U_EE0E0ECslFlrwjHoTci_14polars_compute.exit
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.i, %_RINvYINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtNtBc_5array7binview4view4ViewENCNvMs4_B2C_INtB2C_22BinaryViewArrayGenericShE8len_iter0ENtNtB8_8iterator10BitmapIterENtNtNtB1q_6traits8iterator8Iterator4foldjNCINvB1m_8map_foldINtNtB1s_6option6OptionmEjjNCNvB3c_15total_bytes_len0NCINvXsK_NtB4A_5accumjNtB6t_3Sum3sumIB1k_B3_B5U_EE0E0ECslFlrwjHoTci_14polars_compute.exit ], [ %i.c, %bb.a ], !dbg !111380
  ret i64 %.sroa.0.0, !dbg !111381
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB5_22BinaryViewArrayGenericShE24new_unchecked_unknown_mdCslFlrwjHoTci_14polars_compute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %4, i64 noundef range(i64 0, 2) %5, i64 %6) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !109024 {
bb.a:
  %i.a = trunc nuw i64 %5 to i1, !dbg !111382
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericShE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB58_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECslFlrwjHoTci_14polars_compute.exit, label %bb.b, !dbg !111382

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !111385
  %i.c = load ptr, ptr %i.b, align 8, !dbg !111385, !nonnull !15, !noundef !15 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !111393
  %i.e = load i64, ptr %i.d, align 8, !dbg !111393, !noundef !15 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0, !dbg !111394
  br i1 %i.f, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericShE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB58_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECslFlrwjHoTci_14polars_compute.exit, label %.preheader.preheader, !dbg !111407

.preheader.preheader:                             ; preds = %bb.b
  %xtraiter = and i64 %i.e, 3, !dbg !111408       ; 3 uses
  %i.g = icmp ult i64 %i.e, 4, !dbg !111408
  br i1 %i.g, label %.preheader.epil.preheader, label %.preheader.preheader.new, !dbg !111408

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %i.e, -4, !dbg !111408
  br label %.preheader, !dbg !111408

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.t, %.preheader ], !dbg !111412 ; 5 uses
  %.sroa.02.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.s, %.preheader ], !dbg !111413
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.sroa.04.0.i, !dbg !111414
  %i.i = getelementptr i8, ptr %i.h, i64 16, !dbg !111417
  %.val.i = load i64, ptr %i.i, align 8, !dbg !111417, !noundef !15
  %i.j = add i64 %.val.i, %.sroa.02.0.i, !dbg !111418
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.sroa.04.0.i, !dbg !111414
  %i.l = getelementptr i8, ptr %i.k, i64 40, !dbg !111417
  %.val.i.1 = load i64, ptr %i.l, align 8, !dbg !111417, !noundef !15
  %i.m = add i64 %.val.i.1, %i.j, !dbg !111418
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.sroa.04.0.i, !dbg !111414
  %i.o = getelementptr i8, ptr %i.n, i64 64, !dbg !111417
  %.val.i.2 = load i64, ptr %i.o, align 8, !dbg !111417, !noundef !15
  %i.p = add i64 %.val.i.2, %i.m, !dbg !111418
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.sroa.04.0.i, !dbg !111414
  %i.r = getelementptr i8, ptr %i.q, i64 88, !dbg !111417
  %.val.i.3 = load i64, ptr %i.r, align 8, !dbg !111417, !noundef !15
  %i.s = add i64 %.val.i.3, %i.p, !dbg !111418    ; 3 uses
  %i.t = add nuw i64 %.sroa.04.0.i, 4, !dbg !111423 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4, !dbg !111408 ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !111408
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericShE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB58_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, label %.preheader, !dbg !111408

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericShE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB58_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa: ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !111408
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericShE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB58_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECslFlrwjHoTci_14polars_compute.exit, label %.preheader.epil.preheader, !dbg !111408

.preheader.epil.preheader:                        ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericShE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB58_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, %.preheader.preheader
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.t, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericShE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB58_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.s, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericShE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB58_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ]
  %lcmp.mod10 = icmp ne i64 %xtraiter, 0, !dbg !111408
  tail call void @llvm.assume(i1 %lcmp.mod10), !dbg !111408
  br label %.preheader.epil, !dbg !111408

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %i.x, %.preheader.epil ], [ %.sroa.04.0.i.epil.init, %.preheader.epil.preheader ], !dbg !111412 ; 2 uses
  %.sroa.02.0.i.epil = phi i64 [ %i.w, %.preheader.epil ], [ %.sroa.02.0.i.epil.init, %.preheader.epil.preheader ], !dbg !111413
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.sroa.04.0.i.epil, !dbg !111414
  %i.v = getelementptr i8, ptr %i.u, i64 16, !dbg !111417
  %.val.i.epil = load i64, ptr %i.v, align 8, !dbg !111417, !noundef !15
  %i.w = add i64 %.val.i.epil, %.sroa.02.0.i.epil, !dbg !111418 ; 2 uses
  %i.x = add nuw i64 %.sroa.04.0.i.epil, 1, !dbg !111423
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !111408 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !111408
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericShE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB58_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECslFlrwjHoTci_14polars_compute.exit, label %.preheader.epil, !dbg !111408, !llvm.loop !111426

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericShE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB58_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECslFlrwjHoTci_14polars_compute.exit: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericShE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB58_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa, %.preheader.epil, %bb.b, %bb.a
  %.sroa.02.0 = phi i64 [ %6, %bb.a ], [ 0, %bb.b ], [ %i.s, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1L_8adapters3map8map_foldRBQ_jjNCNCNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB3f_22BinaryViewArrayGenericShE24new_unchecked_unknown_md00NCINvXsK_NtB1J_5accumjNtB58_3Sum3sumINtB2v_3MapBF_B35_EE0E0ECslFlrwjHoTci_14polars_compute.exit.loopexit.unr-lcssa ], [ %i.w, %.preheader.epil ], !dbg !111428
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !dbg !111429
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !111430
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !dbg !111432
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !111430
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !dbg !111433
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !111430
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !111434
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !111430
  store i64 -1, ptr %i.ab, align 8, !dbg !111430
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !111430
  store i64 %.sroa.02.0, ptr %i.ac, align 8, !dbg !111430
  ret void, !dbg !111435
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB5_22BinaryViewArrayGenericShE7try_newCslFlrwjHoTci_14polars_compute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %3, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %4) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !111436 {
bb.a:
  %.sroa.0.sroa.0 = alloca [56 x i8], align 8     ; 5 uses
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !111437
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !111438
  %i.c = load ptr, ptr %i.b, align 8, !dbg !111438, !noundef !15
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !111444
  %i.e = load i64, ptr %i.d, align 8, !dbg !111444, !noundef !15 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !111445
  %i.g = load ptr, ptr %i.f, align 8, !dbg !111445, !noundef !15 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !111451
  %i.i = load i64, ptr %i.h, align 8, !dbg !111451, !noundef !15 ; 6 uses
  invoke void @_RINvNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view14validate_viewsINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhENCINvB2_21validate_binary_viewsB19_E0ECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.g, i64 noundef %i.i)
          to label %bb.b unwind label %bb.l, !dbg !111452

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.a, align 8, !dbg !111454, !range !75483, !noundef !15
  %.not = icmp eq i64 %i.j, 18, !dbg !111454
  br i1 %.not, label %bb.c, label %bb.f, !dbg !111458

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !111459
  %i.k = load ptr, ptr %4, align 8, !dbg !111460, !noundef !15
  %.not5 = icmp eq ptr %i.k, null, !dbg !111460
  br i1 %.not5, label %bb.e, label %bb.d, !dbg !111462

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16, !dbg !111463
  %i.m = load i64, ptr %i.l, align 8, !dbg !111463, !noundef !15
  %i.n = icmp eq i64 %i.m, %i.e, !dbg !111466
  br i1 %i.n, label %bb.e, label %.thread, !dbg !111466

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.sroa.0), !dbg !111467
  %.sroa.019.0.copyload = load i64, ptr %3, align 8, !dbg !111468
  %i.o = icmp eq i64 %i.i, 0, !dbg !111469
  br i1 %i.o, label %.loopexit, label %.preheader.i.preheader, !dbg !111478

.preheader.i.preheader:                           ; preds = %bb.e
  %xtraiter = and i64 %i.i, 3, !dbg !111479       ; 3 uses
  %i.p = icmp ult i64 %i.i, 4, !dbg !111479
  br i1 %i.p, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new, !dbg !111479

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i64 %i.i, -4, !dbg !111479
  br label %.preheader.i, !dbg !111479

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.sroa.04.0.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.ac, %.preheader.i ], !dbg !111480 ; 5 uses
  %.sroa.02.0.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.ab, %.preheader.i ], !dbg !111481
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.3, %.preheader.i ]
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.04.0.i.i, !dbg !111482
  %i.r = getelementptr i8, ptr %i.q, i64 16, !dbg !111484
  %.val.i.i = load i64, ptr %i.r, align 8, !dbg !111484, !noalias !111485, !noundef !15
  %i.s = add i64 %.val.i.i, %.sroa.02.0.i.i, !dbg !111492
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.04.0.i.i, !dbg !111482
  %i.u = getelementptr i8, ptr %i.t, i64 40, !dbg !111484
  %.val.i.i.1 = load i64, ptr %i.u, align 8, !dbg !111484, !noalias !111485, !noundef !15
  %i.v = add i64 %.val.i.i.1, %i.s, !dbg !111492
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.04.0.i.i, !dbg !111482
  %i.x = getelementptr i8, ptr %i.w, i64 64, !dbg !111484
  %.val.i.i.2 = load i64, ptr %i.x, align 8, !dbg !111484, !noalias !111485, !noundef !15
  %i.y = add i64 %.val.i.i.2, %i.v, !dbg !111492
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.04.0.i.i, !dbg !111482
  %i.aa = getelementptr i8, ptr %i.z, i64 88, !dbg !111484
  %.val.i.i.3 = load i64, ptr %i.aa, align 8, !dbg !111484, !noalias !111485, !noundef !15
  %i.ab = add i64 %.val.i.i.3, %i.y, !dbg !111492 ; 3 uses
  %i.ac = add nuw i64 %.sroa.04.0.i.i, 4, !dbg !111495 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4, !dbg !111479 ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !111479
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.preheader.i, !dbg !111479

.thread:                                          ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !111497
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ad, ptr noundef nonnull align 8 dereferenceable(72) @44, i64 72, i1 false), !dbg !111497
  store i8 42, ptr %0, align 8, !dbg !111497
  br label %bb.g, !dbg !111498

bb.f:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !111500
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ae, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !dbg !111507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !111459
  store i8 42, ptr %0, align 8, !dbg !111500
  %.pre = load ptr, ptr %4, align 8, !dbg !111498, !alias.scope !111508
  %i.af = icmp eq ptr %.pre, null, !dbg !111498
  br i1 %i.af, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECslFlrwjHoTci_14polars_compute.exit, label %bb.g, !dbg !111498

bb.g:                                             ; preds = %.thread, %bb.f
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %4)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECslFlrwjHoTci_14polars_compute.exit unwind label %bb.i, !dbg !111511

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !111479
  br i1 %lcmp.mod.not, label %.loopexit, label %.preheader.i.epil.preheader, !dbg !111479

.preheader.i.epil.preheader:                      ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.i.preheader
  %.sroa.04.0.i.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.ac, %.loopexit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.ab, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod25 = icmp ne i64 %xtraiter, 0, !dbg !111479
end_hunk_1
