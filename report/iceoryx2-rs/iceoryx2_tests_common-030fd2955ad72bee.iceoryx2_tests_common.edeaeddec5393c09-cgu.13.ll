Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_tests_common-030fd2955ad72bee.iceoryx2_tests_common.edeaeddec5393c09-cgu.13?download=true
inline.NumInlined: 743
inline.NumDeleted: 347
begin_hunk_0_@_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServicejujuE3newCskqqG2IB5b71_21iceoryx2_tests_common:bb.a
  %.val79 = load ptr, ptr %i.bz, align 8, !nonnull !4, !noundef !4
  %i.ct = getelementptr inbounds nuw i8, ptr %.val79, i64 5432
  %i.cu = call noundef nonnull align 8 ptr @_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config17messaging_patternNtB4_16MessagingPattern16request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1848) %i.ct) #20 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 3 uses
  %i.cx = load i64, ptr %i.cw, align 8, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  %i.cz = load i64, ptr %i.cy, align 8, !alias.scope !733, !noundef !4
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !733, !noundef !4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.dd = load i64, ptr %i.dc, align 8, !alias.scope !733, !noundef !4
  %i.de = getelementptr inbounds nuw i8, ptr %i.cu, i64 56
  %i.df = load i64, ptr %i.de, align 8, !alias.scope !733, !noundef !4
  %i.dg = add i64 %i.dd, %i.cx
  %i.dh = add i64 %i.dg, %i.df
  %i.di = shl i64 %i.cz, 1
  %i.dj = mul i64 %i.di, %i.db
  %i.dk = mul i64 %i.dj, %i.dh
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.dm = call noundef i64 @_RNvMsf_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6serverINtB5_28PreallocatedResponseOverrideKj18_E4callCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.dl, i64 noundef %i.dk) #20 ; 5 uses
  %.val90 = load ptr, ptr %i.bz, align 8, !nonnull !4, !noundef !4
  %i.dn = getelementptr inbounds nuw i8, ptr %.val90, i64 16
  %i.do = call noundef nonnull align 8 ptr @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigEINtB7_14DynamicStorageB1r_E3getCskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 8 %i.dn) #20
  %i.dp = call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig16request_response(ptr noundef nonnull align 8 %i.do) #20 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 80
  %.val84 = load ptr, ptr %i.bz, align 8, !nonnull !4, !noundef !4
  %i.dr = getelementptr inbounds nuw i8, ptr %.val84, i64 7280
  %.val92 = load ptr, ptr %i.dr, align 8, !nonnull !4, !noundef !4
  %i.ds = getelementptr inbounds nuw i8, ptr %.val92, i64 256
  %i.dt = load i64, ptr %i.ds, align 8, !noundef !4 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 96 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !noundef !4 ; 2 uses
  %i.dw = add i64 %i.dv, %i.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  call void @_RINvMs5_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vecINtB6_14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionNtNtBa_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorE7from_fnNCNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB4X_6ServerNtNtNtB51_7service14ipc_threadsafe7ServicejujuE3new0ECskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @_RNvNvMs_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocatorNtB6_13HeapAllocator6global9ALLOCATOR, i64 noundef %i.dv) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !734)
  call void @llvm.experimental.noalias.scope.decl(metadata !735)
  %i.dx = load ptr, ptr %i.bl, align 8, !alias.scope !735, !noalias !736, !noundef !4
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %bb.d, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCskqqG2IB5b71_21iceoryx2_tests_common.exit, !prof !20

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !737
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.ea = load i8, ptr %i.dz, align 8, !range !26, !alias.scope !735, !noalias !736, !noundef !4
  store i8 %i.ea, ptr %i.af, align 1, !noalias !737
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 31, ptr noundef nonnull %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #23, !noalias !738
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCskqqG2IB5b71_21iceoryx2_tests_common.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bl, i64 32, i1 false), !alias.scope !738, !noalias !739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  %.val98 = load ptr, ptr %i.bz, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.eb = atomicrmw add ptr %.val98, i64 1 monotonic, align 8
  %i.ec = icmp slt i64 %i.eb, 0
  br i1 %i.ec, label %bb.e, label %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_14ipc_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCskqqG2IB5b71_21iceoryx2_tests_common.exit

bb.e:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCskqqG2IB5b71_21iceoryx2_tests_common.exit
  call void @llvm.trap()
  unreachable

_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_14ipc_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCskqqG2IB5b71_21iceoryx2_tests_common.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCskqqG2IB5b71_21iceoryx2_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cj, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(888) %i.bk, ptr noundef nonnull align 8 dereferenceable(888) %i.ed, i64 888, i1 false)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.ef = load i64, ptr %i.ee, align 8, !noundef !4 ; 4 uses
  %i.eg = load i8, ptr %i.cj, align 8, !range !25, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  %i.ei = load i8, ptr %i.eh, align 2, !range !25, !noundef !4
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_14ipc_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCskqqG2IB5b71_21iceoryx2_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  call void @_RNvMs5_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vecINtB5_14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorE3newCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @_RNvNvMs_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocatorNtB6_13HeapAllocator6global9ALLOCATOR, i64 noundef %i.dt) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !740)
  %i.ek = load ptr, ptr %i.bj, align 8, !alias.scope !740, !noalias !741, !noundef !4
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %bb.g, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCskqqG2IB5b71_21iceoryx2_tests_common.exit, !prof !20

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !742
  %i.em = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.en = load i8, ptr %i.em, align 8, !range !26, !alias.scope !740, !noalias !741, !noundef !4
  store i8 %i.en, ptr %i.ae, align 1, !noalias !742
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 31, ptr noundef nonnull %i.ae, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #23, !noalias !743
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCskqqG2IB5b71_21iceoryx2_tests_common.exit: ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bj, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  br label %bb.h

bb.h:                                             ; preds = %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_14ipc_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCskqqG2IB5b71_21iceoryx2_tests_common.exit, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCskqqG2IB5b71_21iceoryx2_tests_common.exit
  %.sroa.03.0 = phi i64 [ 1, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCskqqG2IB5b71_21iceoryx2_tests_common.exit ], [ 0, %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_14ipc_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCskqqG2IB5b71_21iceoryx2_tests_common.exit ]
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.ep, ptr noundef nonnull align 16 dereferenceable(48) %i.eo, i64 48, i1 false)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.bn, i64 120
  call void @_RNvMs3_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service14ipc_threadsafe7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE3newCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %i.eq, i64 noundef %i.dw) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i64 32, i1 false)
  %i.er = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  store i128 %.sroa.014.0.copyload, ptr %i.er, align 16
  %i.es = getelementptr inbounds nuw i8, ptr %i.bn, i64 328
  store ptr %.val98, ptr %i.es, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.bn, i64 96
  store i64 %i.ef, ptr %i.et, align 16
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bn, i64 1264
  store i8 0, ptr %i.eu, align 16
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bn, i64 1224
  store i64 %.sroa.03.0, ptr %i.ev, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 1232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, i64 32, i1 false)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.bn, i64 336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(888) %i.ew, ptr noundef nonnull align 8 dereferenceable(888) %i.bk, i64 888, i1 false)
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bn, i64 104
  store i64 %i.ef, ptr %i.ex, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bn, i64 1265
  store i8 %i.eg, ptr %i.ey, align 1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.bn, i64 112
  store i64 1, ptr %i.ez, align 16
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bn, i64 320
  store i64 0, ptr %i.fa, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  %.val83 = load ptr, ptr %i.bz, align 8, !nonnull !4, !noundef !4
  %i.fb = getelementptr inbounds nuw i8, ptr %.val83, i64 7280
  %.val91 = load ptr, ptr %i.fb, align 8, !nonnull !4, !noundef !4
  %i.fc = getelementptr inbounds nuw i8, ptr %.val91, i64 16 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.fe = load i8, ptr %i.fd, align 16, !range !9, !noundef !4
  %i.ff = icmp eq i8 %i.fe, 2                     ; 2 uses
  %..i = zext i1 %i.ff to i32                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @_RNvNtNtCsg6ZEkMtNi4J_8iceoryx27service13naming_scheme17data_segment_name(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(none) dereferenceable(264) %i.bi, i128 noundef %.sroa.014.0.copyload) #20
  %i.fg = call noundef i8 @_RNvMs0_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_11DataSegmentNtNtNtBb_7service14ipc_threadsafe7ServiceE22max_number_of_segmentsCskqqG2IB5b71_21iceoryx2_tests_common(i32 noundef %..i) #20 ; 5 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.cj, i64 952
  %i.fi = load i64, ptr %i.cv, align 16, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !744)
  %i.fj = getelementptr inbounds nuw i8, ptr %i.cj, i64 1240
  %i.fk = load i64, ptr %i.fj, align 8, !alias.scope !744, !noundef !4 ; 6 uses
  %i.fl = icmp eq i64 %i.fk, 0
  br i1 %i.fl, label %bb.i, label %_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit

bb.i:                                             ; preds = %bb.h
  call void @_RNvNtNtCs8Chj7Szqq0n_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #23, !noalias !744
  unreachable

_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit: ; preds = %bb.h
  %i.fm = getelementptr inbounds nuw i8, ptr %i.cj, i64 1232
  %i.fn = load i64, ptr %i.fm, align 8, !alias.scope !744, !noundef !4
  %i.fo = getelementptr inbounds nuw i8, ptr %i.cj, i64 1528
  %i.fp = load i64, ptr %i.fo, align 8, !alias.scope !744, !noundef !4
  %i.fq = getelementptr inbounds nuw i8, ptr %i.cj, i64 1536
  %i.fr = load i64, ptr %i.fq, align 8, !alias.scope !744, !noundef !4
  %i.fs = getelementptr inbounds nuw i8, ptr %i.cj, i64 1824
  %i.ft = load i64, ptr %i.fs, align 8, !alias.scope !744, !noundef !4
  %i.fu = mul i64 %i.ft, %i.fi
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cj, i64 1832
  %i.fw = load i64, ptr %i.fv, align 8, !alias.scope !744, !noundef !4
  %i.fx = add i64 %i.fn, -2
  %i.fy = add i64 %i.fx, %i.fp
  %i.fz = add i64 %i.fy, %i.fr
  %i.ga = add i64 %i.fz, %i.fu
  %i.gb = add i64 %i.ga, %i.fw                    ; 2 uses
  %i.gc = urem i64 %i.gb, %i.fk                   ; 2 uses
  %i.gd = icmp eq i64 %i.gc, 0
  %i.ge = sub i64 %i.fk, %i.gc
  %i.gf = select i1 %i.gd, i64 0, i64 %i.ge
  %.sroa.0.0.i = add i64 %i.gf, %i.gb             ; 2 uses
  %i.gg = icmp ult i64 %i.fk, -9223372036854775807
  call void @llvm.assume(i1 %i.gg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  br i1 %i.ff, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit
  call void @_RNvMs0_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_11DataSegmentNtNtNtBb_7service14ipc_threadsafe7ServiceE21create_static_segmentCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull sret([2488 x i8]) align 8 captures(none) dereferenceable(2488) %i.bh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.bi, i64 noundef %i.fk, i64 noundef %.sroa.0.0.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4528) %i.fc, i64 noundef %i.dm) #20
  br label %bb.l

bb.k:                                             ; preds = %_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit
  %i.gh = load i8, ptr %i.fd, align 16, !range !9, !noundef !4
  call void @_RNvMs0_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_11DataSegmentNtNtNtBb_7service14ipc_threadsafe7ServiceE22create_dynamic_segmentCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull sret([2488 x i8]) align 8 captures(none) dereferenceable(2488) %i.bh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.bi, i64 noundef %i.fk, i64 noundef %.sroa.0.0.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4528) %i.fc, i64 noundef %i.dm, i8 noundef %i.gh) #20
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.0.0.copyload = load i64, ptr %i.bh, align 8
  %.not = icmp eq i64 %.sroa.0.0.copyload, -1
  br i1 %.not, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2488) %i.be, ptr noundef nonnull align 8 dereferenceable(2488) %i.bh, i64 2488, i1 false)
  %i.gi = load i64, ptr %i.be, align 8, !range !13, !noundef !4
  %i.gj = icmp eq i64 %i.gi, -1
  br i1 %i.gj, label %2, label %bb.n, !prof !20

.thread:                                          ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  store ptr %i.bu, ptr %i.bg, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.433.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  store ptr %i.bv, ptr %i.bf, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.437.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @4, ptr noundef nonnull %i.bg, ptr noundef nonnull @52, ptr noundef nonnull %i.bf) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  store i8 1, ptr %0, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.gk, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver8ReceiverNtNtNtBK_7service14ipc_threadsafe7ServiceEECskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull align 16 dereferenceable(1280) %i.bn) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @_RNvXs5_NtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage4fileNtB5_7StorageNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(1360) %i.bs) #20
  call void @_RNvXs2_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix4fileNtB5_4FileNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(1360) %i.bs) #20
  %i.gl = getelementptr inbounds nuw i8, ptr %i.bs, i64 272
  call void @_RNvXs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix15file_descriptorNtB5_14FileDescriptorNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(8) %i.gl) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  br label %bb.an

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(2488) %i.bd, ptr noundef nonnull align 8 dereferenceable(2488) %i.bh, i64 2488, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.04)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  %i.gm = zext i8 %i.fg to i64                    ; 2 uses
  %i.gn = shl nuw nsw i64 %i.gm, 5                ; 2 uses
  %i.go = icmp eq i8 %i.fg, 0
  br i1 %i.go, label %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskqqG2IB5b71_21iceoryx2_tests_common.exit.thread, label %bb.o

_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskqqG2IB5b71_21iceoryx2_tests_common.exit.thread: ; preds = %bb.n
  store i64 0, ptr %i.bb, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.gp, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 0, ptr %i.gq, align 8
  br label %._crit_edge

bb.o:                                             ; preds = %bb.n
  call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20, !noalias !745
  %i.gr = call noundef align 8 ptr @_RNvCsicpYtSlSgpD_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.gn, i64 noundef range(i64 1, -9223372036854775807) 8) #20, !noalias !745 ; 3 uses
  %i.gs = icmp eq ptr %i.gr, null
  br i1 %i.gs, label %bb.p, label %.lr.ph.preheader

bb.p:                                             ; preds = %bb.o
  call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.gn) #22
  unreachable

.lr.ph.preheader:                                 ; preds = %bb.o
  store i64 %i.gm, ptr %i.bb, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  store ptr %i.gr, ptr %i.gt, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  store i64 0, ptr %i.gu, align 8
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCskqqG2IB5b71_21iceoryx2_tests_common.exit, %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskqqG2IB5b71_21iceoryx2_tests_common.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  %i.gv = load i64, ptr %i.du, align 8, !noundef !4
  call void @_RNvXNtNtCsbqH9stoieM8_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender10ConnectionNtNtNtB2E_7service14ipc_threadsafe7ServiceEEEEINtB2_12SpecFromIterBU_INtNtNtNtB1Y_4iter8adapters3map3MapINtNtNtB1Y_3ops5range5RangejENCNvMs5_NtB2C_6serverINtB5O_6ServerB3x_jujuE3news_0EE9from_iterCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.az, i64 noundef 0, i64 noundef %i.gv) #20
  %.val82 = load ptr, ptr %i.bz, align 8, !nonnull !4, !noundef !4
  %i.gw = getelementptr inbounds nuw i8, ptr %.val82, i64 7280
  %.val99 = load ptr, ptr %i.gw, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.gx = atomicrmw add ptr %.val99, i64 1 monotonic, align 8
  %i.gy = icmp slt i64 %i.gx, 0
  br i1 %i.gy, label %bb.q, label %_RNvXs1v_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB6_10SharedNodeNtNtNtB8_7service14ipc_threadsafe7ServiceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCskqqG2IB5b71_21iceoryx2_tests_common.exit

bb.q:                                             ; preds = %._crit_edge
  call void @llvm.trap()
  unreachable

_RNvXs1v_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB6_10SharedNodeNtNtNtB8_7service14ipc_threadsafe7ServiceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCskqqG2IB5b71_21iceoryx2_tests_common.exit: ; preds = %._crit_edge
  %i.gz = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.ha = load i64, ptr %i.gz, align 8, !noundef !4
  %i.hb = getelementptr inbounds nuw i8, ptr %i.cj, i64 56
  %i.hc = load i64, ptr %i.hb, align 8, !noundef !4
  %i.hd = load i64, ptr %i.cw, align 8, !noundef !4
  %i.he = mul i64 %i.hd, %i.ef
  %i.hf = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  %i.hg = load i64, ptr %i.hf, align 8, !noundef !4
  %i.hh = mul i64 %i.he, %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  %i.hj = load i8, ptr %i.hi, align 1, !range !25, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.ay, ptr noundef nonnull align 16 dereferenceable(48) %i.hk, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ax, ptr noundef nonnull align 16 dereferenceable(64) %1, i64 64, i1 false)
  %.val97 = load ptr, ptr %i.bz, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.hl = atomicrmw add ptr %.val97, i64 1 monotonic, align 8
  %i.hm = icmp slt i64 %i.hl, 0
  br i1 %i.hm, label %bb.r, label %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_14ipc_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCskqqG2IB5b71_21iceoryx2_tests_common.exit105

bb.r:                                             ; preds = %_RNvXs1v_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB6_10SharedNodeNtNtNtB8_7service14ipc_threadsafe7ServiceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCskqqG2IB5b71_21iceoryx2_tests_common.exit
  call void @llvm.trap()
  unreachable

_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_14ipc_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCskqqG2IB5b71_21iceoryx2_tests_common.exit105: ; preds = %_RNvXs1v_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB6_10SharedNodeNtNtNtB8_7service14ipc_threadsafe7ServiceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCskqqG2IB5b71_21iceoryx2_tests_common.exit
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 225
  %i.ho = load i8, ptr %i.hn, align 1, !range !25, !noundef !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(888) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(888) %i.fh, i64 888, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.6, ptr noundef nonnull align 16 dereferenceable(48) %i.ay, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.04, ptr noundef nonnull align 16 dereferenceable(64) %i.ax, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 16 dereferenceable(24) %i.cv, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @_RNvMs4_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB5_9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ClientDetailsE9get_stateCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.au, ptr noundef nonnull align 8 %i.dq) #20
  %.val96 = load ptr, ptr %i.bz, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.hp = atomicrmw add ptr %.val96, i64 1 monotonic, align 8
  %i.hq = icmp slt i64 %i.hp, 0
  br i1 %i.hq, label %bb.s, label %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_14ipc_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCskqqG2IB5b71_21iceoryx2_tests_common.exit106

bb.s:                                             ; preds = %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_14ipc_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCskqqG2IB5b71_21iceoryx2_tests_common.exit105
  call void @llvm.trap()
  unreachable

_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_14ipc_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCskqqG2IB5b71_21iceoryx2_tests_common.exit106: ; preds = %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_14ipc_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCskqqG2IB5b71_21iceoryx2_tests_common.exit105
  %i.hr = getelementptr inbounds nuw i8, ptr %i.aw, i64 6368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.hr, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.aw, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.04, i64 64, i1 false)
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  store i128 %.sroa.014.0.copyload, ptr %.sroa.55.0..sroa_idx, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.6, i64 48, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(2488) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(2488) %i.bd, i64 2488, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 2616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, i64 24, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 2640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.9, i64 24, i1 false)
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 2664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(888) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(888) %.sroa.10, i64 888, i1 false)
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 3552
  store ptr %.val99, ptr %.sroa.11.0..sroa_idx, align 16
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 3560
  store ptr %.val97, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 3568
  store i64 %i.ha, ptr %.sroa.13.0..sroa_idx, align 16
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 3576
  store i64 %i.hc, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 3584
  store i64 %i.hh, ptr %.sroa.15.0..sroa_idx, align 16
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 3592
  store i64 %i.dm, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 3600
  store i64 0, ptr %.sroa.17.0..sroa_idx, align 16
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 3608
  store i64 %i.cs, ptr %.sroa.18.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 3616
  store i64 -1, ptr %.sroa.19.0..sroa_idx, align 16
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 3624
  store i8 %i.hj, ptr %.sroa.20.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 3625
  store i8 %i.ho, ptr %.sroa.21.0..sroa_idx, align 1
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 3626
  store i8 %i.fg, ptr %.sroa.22.0..sroa_idx, align 2
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 3627
  store i8 0, ptr %.sroa.23.0..sroa_idx, align 1
  %i.hs = getelementptr inbounds nuw i8, ptr %i.aw, i64 6272
  store i64 0, ptr %i.hs, align 16
  %i.ht = getelementptr inbounds nuw i8, ptr %i.aw, i64 4992
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1280) %i.ht, ptr noundef nonnull align 16 dereferenceable(1280) %i.bn, i64 1280, i1 false)
  %i.hu = getelementptr inbounds nuw i8, ptr %i.aw, i64 6304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.hu, ptr noundef nonnull align 8 dereferenceable(64) %i.au, i64 64, i1 false)
  %i.hv = getelementptr inbounds nuw i8, ptr %i.aw, i64 6392
  store ptr %.val96, ptr %i.hv, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.aw, i64 3632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1360) %i.hw, ptr noundef nonnull align 8 dereferenceable(1360) %i.bs, i64 1360, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !746
  store ptr @194, ptr %i.ad, align 8, !noalias !746, !captures !14
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 52, ptr %i.hx, align 8, !noalias !746
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !746
end_hunk_0
begin_hunk_1_@_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServicejujuE3newCskqqG2IB5b71_21iceoryx2_tests_common:bb.a

bb.ad:                                            ; preds = %_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCskqqG2IB5b71_21iceoryx2_tests_common.exit
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #23, !noalias !759
  unreachable

_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCskqqG2IB5b71_21iceoryx2_tests_common.exit: ; preds = %_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCskqqG2IB5b71_21iceoryx2_tests_common.exit
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 4992
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jm, i64 6256
  %i.jq = atomicrmw add ptr %i.jp, i8 1 monotonic, align 1 ; 0 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jm, i64 3627
  %i.js = atomicrmw add ptr %i.jr, i8 1 monotonic, align 1 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 2, ptr %i.h, align 1
  %i.jt = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jm, i64 6304
  call void @_RINvMs0_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB6_14ContainerStateNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ClientDetailsE8for_eachNCNvMs0_NtNtB1u_4port6serverINtB34_17SharedServerStateNtNtB1s_14ipc_threadsafe7ServiceE24force_update_connections0ECskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ju, ptr noundef nonnull align 16 %i.jm, ptr noalias nofree noundef nonnull dereferenceable(2) %i.h) #20
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE30finish_update_connection_cycleCskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 16 %i.jm) #20
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service14ipc_threadsafe7ServiceE30finish_update_connection_cycleCskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 16 %i.jo) #20
  %i.jv = load i8, ptr %i.h, align 1, !range !9, !noundef !4 ; 2 uses
  %i.jw = load i8, ptr %i.jt, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not77 = icmp eq i8 %i.jv, 2
  br i1 %.not77, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCskqqG2IB5b71_21iceoryx2_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store i8 %i.jv, ptr %i.ao, align 1
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  store i8 %i.jw, ptr %i.jx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store ptr %i.aq, ptr %i.an, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr @_RNvXsb_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServicejujuENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.458.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store ptr %i.ao, ptr %i.am, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr @_RNvXs2_NtNtCsg6ZEkMtNi4J_8iceoryx24port18update_connectionsNtB5_17ConnectionFailureNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.462.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 3, ptr noundef nonnull @4, ptr noundef nonnull %i.an, ptr noundef nonnull @48, ptr noundef nonnull %i.am) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %bb.af

bb.af:                                            ; preds = %_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCskqqG2IB5b71_21iceoryx2_tests_common.exit, %bb.ae
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB19_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ap) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  fence syncscope("singlethread") seq_cst
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %.val89 = load ptr, ptr %i.bz, align 8, !nonnull !4, !noundef !4
  %i.jy = getelementptr inbounds nuw i8, ptr %.val89, i64 16
  %i.jz = call noundef nonnull align 8 ptr @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigEINtB7_14DynamicStorageB1r_E3getCskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 8 %i.jy) #20
  %i.ka = call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig16request_response(ptr noundef nonnull align 8 %i.jz) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %.val81 = load ptr, ptr %i.bz, align 8, !nonnull !4, !noundef !4
  %i.kb = getelementptr inbounds nuw i8, ptr %.val81, i64 7280
  %.val100 = load ptr, ptr %i.kb, align 8, !nonnull !4, !noundef !4
  %i.kc = getelementptr inbounds nuw i8, ptr %.val100, i64 6312
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kd, ptr noundef nonnull align 4 dereferenceable(16) %i.kc, i64 16, i1 false)
  %i.ke = load i64, ptr %i.cv, align 16, !noundef !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 16 dereferenceable(16) %i.bt, i64 16, i1 false)
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store i64 %i.ef, ptr %i.kf, align 8
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store i64 %i.dm, ptr %i.kg, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  store i64 %i.ke, ptr %i.kh, align 8
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  store i32 %..i, ptr %i.ki, align 8
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ak, i64 60
  store i8 %i.fg, ptr %i.kj, align 4
  call void @_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_responseNtB2_13DynamicConfig13add_server_id(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.al, ptr noundef nonnull align 8 %i.ka, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.ak) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.kk = load i64, ptr %i.al, align 8, !range !7, !noundef !4
  %i.kl = trunc nuw i64 %i.kk to i1
  br i1 %i.kl, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.experimental.noalias.scope.decl(metadata !760)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.aq, ptr %i.g, align 8, !noalias !760
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !760
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !760
  %i.km = load ptr, ptr %i.aq, align 8, !alias.scope !760, !nonnull !4, !noundef !4
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  store ptr %i.kn, ptr %i.e, align 8, !noalias !760
  call void @_RNvMsq_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_5MutexINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB13_7service14ipc_threadsafe7ServiceEE4lockCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e) #20
  %i.ko = load i32, ptr %i.f, align 8, !range !21, !noalias !760, !noundef !4
  %.not.i109 = icmp eq i32 %i.ko, -1
  br i1 %.not.i109, label %_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCskqqG2IB5b71_21iceoryx2_tests_common.exit114, label %bb.ah, !prof !15

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !760
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !noalias !760
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !760
  store ptr %i.g, ptr %i.c, align 8, !noalias !760
  %.sroa.42.0..sroa_idx.i110 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB20_7service14ipc_threadsafe7ServiceEENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.42.0..sroa_idx.i110, align 8, !noalias !760
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !760
  store ptr %i.d, ptr %i.b, align 8, !noalias !760
  %.sroa.46.0..sroa_idx.i111 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsB_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_14MutexLockErrorINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1d_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.46.0..sroa_idx.i111, align 8, !noalias !760
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @4, ptr noundef nonnull %i.c, ptr noundef nonnull @199, ptr noundef nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !760
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !760
  store ptr %i.g, ptr %i.a, align 8, !noalias !760
  %.sroa.410.0..sroa_idx.i112 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB20_7service14ipc_threadsafe7ServiceEENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.410.0..sroa_idx.i112, align 8, !noalias !760
  %i.kp = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.kp, align 8, !noalias !760
  %.sroa.414.0..sroa_idx.i113 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsB_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_14MutexLockErrorINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1d_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.414.0..sroa_idx.i113, align 8, !noalias !760
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @200, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @202) #23
  unreachable

_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCskqqG2IB5b71_21iceoryx2_tests_common.exit114: ; preds = %bb.ag
  %i.kq = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8, !noalias !760, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store ptr %i.kr, ptr %i.ag, align 8
  %i.ks = load i128, ptr %i.kr, align 16, !range !22, !noalias !761, !noundef !4
  %.not.i115 = icmp eq i128 %i.ks, 2
  br i1 %.not.i115, label %bb.ai, label %_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCskqqG2IB5b71_21iceoryx2_tests_common.exit116, !prof !20

bb.ai:                                            ; preds = %_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCskqqG2IB5b71_21iceoryx2_tests_common.exit114
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #23, !noalias !761
  unreachable

_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCskqqG2IB5b71_21iceoryx2_tests_common.exit116: ; preds = %_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCskqqG2IB5b71_21iceoryx2_tests_common.exit114
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kr, i64 6272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.kt, ptr noundef nonnull align 8 dereferenceable(32) %i.al, i64 32, i1 false)
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB19_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  br label %bb.al

bb.aj:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store ptr %i.bu, ptr %i.aj, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.466.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %.val = load ptr, ptr %i.bz, align 8, !nonnull !4, !noundef !4
  %i.ku = getelementptr inbounds nuw i8, ptr %.val, i64 2248
  %i.kv = call noundef nonnull align 8 ptr @_RNvMNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_configNtB2_12StaticConfig16request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(5032) %i.ku) #20
  %i.kw = getelementptr i8, ptr %i.kv, i64 32
  %.val101 = load i64, ptr %i.kw, align 8, !noundef !4
  store i64 %.val101, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store ptr %i.bv, ptr %i.ah, align 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.470.0..sroa_idx, align 8
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %i.ai, ptr %i.kx, align 8
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.474.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @4, ptr noundef nonnull %i.aj, ptr noundef nonnull @49, ptr noundef nonnull %i.ah) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  store i8 0, ptr %0, align 8
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.ky, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.experimental.noalias.scope.decl(metadata !762)
  call void @llvm.experimental.noalias.scope.decl(metadata !763)
  call void @llvm.experimental.noalias.scope.decl(metadata !764)
  call void @llvm.experimental.noalias.scope.decl(metadata !765)
  %i.kz = load ptr, ptr %i.aq, align 8, !alias.scope !766, !nonnull !4, !noundef !4
  %i.la = atomicrmw sub ptr %i.kz, i64 1 release, align 8, !noalias !766
  %i.lb = icmp eq i64 %i.la, 1
  br i1 %i.lb, label %bb.ak, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server6ServerNtNtNtBI_7service14ipc_threadsafe7ServicejujuEECskqqG2IB5b71_21iceoryx2_tests_common.exit

bb.ak:                                            ; preds = %bb.aj
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1I_7service14ipc_threadsafe7ServiceEEE9drop_slowCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.aq) #21
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server6ServerNtNtNtBI_7service14ipc_threadsafe7ServicejujuEECskqqG2IB5b71_21iceoryx2_tests_common.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server6ServerNtNtNtBI_7service14ipc_threadsafe7ServicejujuEECskqqG2IB5b71_21iceoryx2_tests_common.exit: ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.am

bb.al:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECskqqG2IB5b71_21iceoryx2_tests_common.exit.a, %_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCskqqG2IB5b71_21iceoryx2_tests_common.exit116
  %.sink = phi ptr [ %3, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECskqqG2IB5b71_21iceoryx2_tests_common.exit.a ], [ %i.dl, %_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCskqqG2IB5b71_21iceoryx2_tests_common.exit116 ]
  call void @_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6server1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %.sink) #20
  ret void

2:                                                ; preds = %bb.m
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segment11DataSegmentNtNtNtB16_7service14ipc_threadsafe7ServiceENtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory23SharedMemoryCreateErrorEECskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef align 8 dereferenceable(2488) %i.be) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #23
  unreachable

bb.am:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server6ServerNtNtNtBI_7service14ipc_threadsafe7ServicejujuEECskqqG2IB5b71_21iceoryx2_tests_common.exit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECskqqG2IB5b71_21iceoryx2_tests_common.exit.a

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECskqqG2IB5b71_21iceoryx2_tests_common.exit.a: ; preds = %bb.ao, %bb.an, %bb.am
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 160
  br label %bb.al

bb.an:                                            ; preds = %.thread, %bb.b
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.lc) #20
  %i.ld = load i128, ptr %1, align 16, !range !8, !alias.scope !767, !noundef !4
  %i.le = icmp eq i128 %i.ld, 0
  br i1 %i.le, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECskqqG2IB5b71_21iceoryx2_tests_common.exit.a, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24port1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.lf) #20
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECskqqG2IB5b71_21iceoryx2_tests_common.exit.a
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServicejujuE7receiveCskqqG2IB5b71_21iceoryx2_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 16 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [2 x i8], align 1                 ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 7 uses
  %i.p = alloca [16 x i8], align 8                ; 9 uses
  %i.q = alloca [8 x i8], align 8                 ; 7 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [8 x i8], align 8                 ; 8 uses
  %i.t = alloca [8 x i8], align 8                 ; 7 uses
  %i.u = alloca [112 x i8], align 16              ; 17 uses
  %i.v = alloca [8 x i8], align 8                 ; 8 uses
  %.sroa.5.sroa.0 = alloca [30 x i8], align 2     ; 3 uses
  %i.w = alloca [80 x i8], align 16               ; 12 uses
  %i.x = load ptr, ptr %1, align 8, !alias.scope !811, !noalias !812, !nonnull !4, !noundef !4 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %1, ptr %i.t, align 8, !noalias !813
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !813
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !813
  store ptr %1, ptr %i.q, align 8, !noalias !814
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !814
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !814
  store ptr %i.y, ptr %i.o, align 8, !noalias !814
  call void @_RNvMsq_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_5MutexINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB13_7service14ipc_threadsafe7ServiceEE4lockCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o) #20, !noalias !815
  %i.z = load i32, ptr %i.p, align 8, !range !21, !noalias !814, !noundef !4
  %.not.i.i105 = icmp eq i32 %i.z, -1
  br i1 %.not.i.i105, label %_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCskqqG2IB5b71_21iceoryx2_tests_common.exit.i.lr.ph, label %._crit_edge, !prof !816

_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCskqqG2IB5b71_21iceoryx2_tests_common.exit.i.lr.ph: ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 17
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 18
  %.sroa.615.sroa.4.0..sroa.615.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %.sroa.615.sroa.5.0..sroa.615.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %.sroa.615.sroa.6.0..sroa.615.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val19 = load i64, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 88 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 96 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load i8, ptr %i.ak, align 8, !range !25
  %i.am = trunc nuw i8 %i.al to i1                ; 2 uses
  br label %_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCskqqG2IB5b71_21iceoryx2_tests_common.exit.i

._crit_edge:                                      ; preds = %.backedge, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !817
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false), !noalias !817
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !817
  store ptr %i.q, ptr %i.m, align 8, !noalias !817
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB20_7service14ipc_threadsafe7ServiceEENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !817
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !817
  store ptr %i.n, ptr %i.l, align 8, !noalias !817
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXsB_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_14MutexLockErrorINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1d_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !817
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @4, ptr noundef nonnull %i.m, ptr noundef nonnull @199, ptr noundef nonnull %i.l) #20, !noalias !812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !817
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !817
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !817
  store ptr %i.q, ptr %i.k, align 8, !noalias !817
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB20_7service14ipc_threadsafe7ServiceEENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !817
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.n, ptr %i.an, align 8, !noalias !817
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @_RNvXsB_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_14MutexLockErrorINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1d_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !noalias !817
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @200, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @202) #23, !noalias !812
  unreachable

_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCskqqG2IB5b71_21iceoryx2_tests_common.exit.i: ; preds = %_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCskqqG2IB5b71_21iceoryx2_tests_common.exit.i.lr.ph, %.backedge
  call void @llvm.experimental.noalias.scope.decl(metadata !818)
  call void @llvm.experimental.noalias.scope.decl(metadata !819)
  %i.ao = load ptr, ptr %i.aa, align 8, !noalias !817, !nonnull !4, !align !6, !noundef !4 ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !817
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !817
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !820
  store ptr %i.ao, ptr %i.s, align 8, !noalias !820
  %i.ap = load i128, ptr %i.ao, align 16, !range !22, !noalias !821, !noundef !4
  %.not.i7.i = icmp eq i128 %i.ap, 2
  br i1 %.not.i7.i, label %bb.b, label %_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCskqqG2IB5b71_21iceoryx2_tests_common.exit.i, !prof !20

bb.b:                                             ; preds = %_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCskqqG2IB5b71_21iceoryx2_tests_common.exit.i
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #23, !noalias !821
  unreachable

_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCskqqG2IB5b71_21iceoryx2_tests_common.exit.i: ; preds = %_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCskqqG2IB5b71_21iceoryx2_tests_common.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !820
  store ptr %i.ao, ptr %i.j, align 8, !noalias !820
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 5320
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !812, !nonnull !4, !noundef !4
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = call noundef nonnull align 8 ptr @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigEINtB7_14DynamicStorageB1r_E3getCskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 8 %i.as) #20, !noalias !812
  %i.au = call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig16request_response(ptr noundef nonnull align 8 %i.at) #20, !noalias !812
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 80
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 6304 ; 2 uses
  %i.ax = call noundef zeroext i1 @_RNvMs4_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB5_9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ClientDetailsE12update_stateCskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 8 %i.av, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.aw) #20, !noalias !812
  br i1 %i.ax, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCskqqG2IB5b71_21iceoryx2_tests_common.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 4992
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 6256
  %i.ba = atomicrmw add ptr %i.az, i8 1 monotonic, align 1, !noalias !812 ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 3627
  %i.bc = atomicrmw add ptr %i.bb, i8 1 monotonic, align 1, !noalias !812 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !820
  store i8 2, ptr %i.h, align 1, !noalias !820
  call void @_RINvMs0_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB6_14ContainerStateNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ClientDetailsE8for_eachNCNvMs0_NtNtB1u_4port6serverINtB34_17SharedServerStateNtNtB1s_14ipc_threadsafe7ServiceE24force_update_connections0ECskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.aw, ptr noundef nonnull align 16 %i.ao, ptr noalias nofree noundef nonnull dereferenceable(2) %i.h) #20, !noalias !812
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE30finish_update_connection_cycleCskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 16 %i.ao) #20, !noalias !812
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service14ipc_threadsafe7ServiceE30finish_update_connection_cycleCskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 16 %i.ay) #20, !noalias !812
  %i.bd = load i8, ptr %i.h, align 1, !range !9, !noalias !820, !noundef !4 ; 2 uses
  %i.be = load i8, ptr %i.ab, align 1, !noalias !820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !820
  %.not.i8.i = icmp eq i8 %i.bd, 2
  br i1 %.not.i8.i, label %._crit_edge.i, label %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServicejujuE12receive_implCskqqG2IB5b71_21iceoryx2_tests_common.exit.thread

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load ptr, ptr %i.s, align 8, !alias.scope !822, !noalias !820
  br label %bb.d

_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServicejujuE12receive_implCskqqG2IB5b71_21iceoryx2_tests_common.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !820
  store ptr %i.j, ptr %i.i, align 8, !noalias !820
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtBD_7service14ipc_threadsafe7ServiceENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !noalias !820
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @4, ptr noundef nonnull %i.i, ptr noundef nonnull @29, ptr noundef nonnull inttoptr (i64 179 to ptr)) #20, !noalias !812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !820
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !820
  store ptr %i.t, ptr %i.r, align 8, !noalias !820
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server6ServerNtNtNtBD_7service14ipc_threadsafe7ServicejujuENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !820
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @4, ptr noundef nonnull %i.r, ptr noundef nonnull @42, ptr noundef nonnull inttoptr (i64 199 to ptr)) #20, !noalias !812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !820
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB19_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s) #20, !noalias !812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %.loopexit60

bb.d:                                             ; preds = %._crit_edge.i, %_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCskqqG2IB5b71_21iceoryx2_tests_common.exit.i
  %i.bf = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.ao, %_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCskqqG2IB5b71_21iceoryx2_tests_common.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !820
  call void @llvm.experimental.noalias.scope.decl(metadata !822)
  %i.bg = load i128, ptr %i.bf, align 16, !range !22, !noalias !823, !noundef !4
  %.not.i9.i = icmp eq i128 %i.bg, 2
  br i1 %.not.i9.i, label %bb.e, label %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServicejujuE12receive_implCskqqG2IB5b71_21iceoryx2_tests_common.exit, !prof !20

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #23, !noalias !823
  unreachable

_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServicejujuE12receive_implCskqqG2IB5b71_21iceoryx2_tests_common.exit: ; preds = %bb.d
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 4992
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service14ipc_threadsafe7ServiceE7receiveCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.w, ptr noundef nonnull align 16 %i.bh, i64 noundef 0) #20
  %.pr = load i128, ptr %i.w, align 16            ; 2 uses
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB19_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s) #20, !noalias !812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.bi = icmp eq i128 %.pr, 2
  %.pre = load i8, ptr %.sroa.413.0..sroa_idx, align 16 ; 3 uses
  %.pre143 = load i8, ptr %.sroa.514.0..sroa_idx, align 1 ; 3 uses
  br i1 %i.bi, label %.loopexit60, label %bb.f

.loopexit60:                                      ; preds = %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServicejujuE12receive_implCskqqG2IB5b71_21iceoryx2_tests_common.exit, %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServicejujuE12receive_implCskqqG2IB5b71_21iceoryx2_tests_common.exit.thread
  %i.bj = phi i8 [ %i.be, %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServicejujuE12receive_implCskqqG2IB5b71_21iceoryx2_tests_common.exit.thread ], [ %.pre143, %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServicejujuE12receive_implCskqqG2IB5b71_21iceoryx2_tests_common.exit ]
  %i.bk = phi i8 [ %i.bd, %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServicejujuE12receive_implCskqqG2IB5b71_21iceoryx2_tests_common.exit.thread ], [ %.pre, %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServicejujuE12receive_implCskqqG2IB5b71_21iceoryx2_tests_common.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.bk, ptr %i.bl, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.bj, ptr %i.bm, align 2
  store i8 1, ptr %0, align 16
  br label %bb.n
end_hunk_1
begin_hunk_2_@_RNvMs9_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_6ClientNtNtNtB9_7service14ipc_threadsafe7ServicejujuE3newCskqqG2IB5b71_21iceoryx2_tests_common:bb.a
  unreachable

_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCskqqG2IB5b71_21iceoryx2_tests_common.exit: ; preds = %bb.y
  %i.ih = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8, !noalias !933, !nonnull !4, !align !6, !noundef !4 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  store ptr %i.ii, ptr %i.ap, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 48 ; 3 uses
  %i.ik = load i128, ptr %i.ij, align 16, !range !22, !noalias !934, !noundef !4
  %.not.i131 = icmp eq i128 %i.ik, 2
  br i1 %.not.i131, label %bb.aa, label %_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCskqqG2IB5b71_21iceoryx2_tests_common.exit, !prof !20

bb.aa:                                            ; preds = %_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCskqqG2IB5b71_21iceoryx2_tests_common.exit
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #23, !noalias !934
  unreachable

_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCskqqG2IB5b71_21iceoryx2_tests_common.exit: ; preds = %_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCskqqG2IB5b71_21iceoryx2_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 2, ptr %i.h, align 1
  %i.il = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.im = getelementptr inbounds nuw i8, ptr %i.ii, i64 3675
  %i.in = atomicrmw add ptr %i.im, i8 1 monotonic, align 1 ; 0 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.ii, i64 5040
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ii, i64 6304
  %i.iq = atomicrmw add ptr %i.ip, i8 1 monotonic, align 1 ; 0 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ii, i64 6368
  call void @_RINvMs0_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB6_14ContainerStateNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ServerDetailsE8for_eachNCNvMs5_NtNtB1u_4port6clientINtB34_17ClientSharedStateNtNtB1s_14ipc_threadsafe7ServiceE24force_update_connections0ECskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ir, ptr noundef nonnull align 16 %i.ij, ptr noalias nofree noundef nonnull dereferenceable(2) %i.h) #20
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service14ipc_threadsafe7ServiceE30finish_update_connection_cycleCskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 16 %i.io) #20
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE30finish_update_connection_cycleCskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 16 %i.ij) #20
  %i.is = load i8, ptr %i.h, align 1, !range !9, !noundef !4 ; 2 uses
  %i.it = load i8, ptr %i.il, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not104 = icmp eq i8 %i.is, 2
  br i1 %.not104, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCskqqG2IB5b71_21iceoryx2_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store i8 %i.is, ptr %i.ao, align 1
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  store i8 %i.it, ptr %i.iu, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store ptr %i.aq, ptr %i.an, align 8
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr @_RNvXsp_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_6ClientNtNtNtB9_7service14ipc_threadsafe7ServicejujuENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.483.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store ptr %i.ao, ptr %i.am, align 8
  %.sroa.487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr @_RNvXs2_NtNtCsg6ZEkMtNi4J_8iceoryx24port18update_connectionsNtB5_17ConnectionFailureNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.487.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 3, ptr noundef nonnull @4, ptr noundef nonnull %i.an, ptr noundef nonnull @66, ptr noundef nonnull %i.am) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %bb.ac

bb.ac:                                            ; preds = %_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCskqqG2IB5b71_21iceoryx2_tests_common.exit, %bb.ab
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB19_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ap) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  fence syncscope("singlethread") seq_cst
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %.val114 = load ptr, ptr %i.bz, align 8, !nonnull !4, !noundef !4
  %i.iv = getelementptr inbounds nuw i8, ptr %.val114, i64 16
  %i.iw = call noundef nonnull align 8 ptr @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigEINtB7_14DynamicStorageB1r_E3getCskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 8 %i.iv) #20
  %i.ix = call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig16request_response(ptr noundef nonnull align 8 %i.iw) #20
  call void @_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_responseNtB2_13DynamicConfig13add_client_id(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.al, ptr noundef nonnull align 8 %i.ix, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.bi) #20
  %i.iy = load i64, ptr %i.al, align 8, !range !7, !noundef !4
  %i.iz = trunc nuw i64 %i.iy to i1
  br i1 %i.iz, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.experimental.noalias.scope.decl(metadata !935)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.aq, ptr %i.g, align 8, !noalias !935
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !935
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !935
  %i.ja = load ptr, ptr %i.aq, align 8, !alias.scope !935, !nonnull !4, !noundef !4
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  store ptr %i.jb, ptr %i.e, align 8, !noalias !935
  call void @_RNvMsq_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_5MutexINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB13_7service14ipc_threadsafe7ServiceEE4lockCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e) #20
  %i.jc = load i32, ptr %i.f, align 8, !range !21, !noalias !935, !noundef !4
  %.not.i132 = icmp eq i32 %i.jc, -1
  br i1 %.not.i132, label %_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCskqqG2IB5b71_21iceoryx2_tests_common.exit137, label %bb.ae, !prof !15

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !935
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !noalias !935
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !935
  store ptr %i.g, ptr %i.c, align 8, !noalias !935
  %.sroa.42.0..sroa_idx.i133 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB20_7service14ipc_threadsafe7ServiceEENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.42.0..sroa_idx.i133, align 8, !noalias !935
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !935
  store ptr %i.d, ptr %i.b, align 8, !noalias !935
  %.sroa.46.0..sroa_idx.i134 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsB_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_14MutexLockErrorINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1d_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.46.0..sroa_idx.i134, align 8, !noalias !935
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @4, ptr noundef nonnull %i.c, ptr noundef nonnull @199, ptr noundef nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !935
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !935
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !935
  store ptr %i.g, ptr %i.a, align 8, !noalias !935
  %.sroa.410.0..sroa_idx.i135 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB20_7service14ipc_threadsafe7ServiceEENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.410.0..sroa_idx.i135, align 8, !noalias !935
  %i.jd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.jd, align 8, !noalias !935
  %.sroa.414.0..sroa_idx.i136 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsB_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_14MutexLockErrorINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1d_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.414.0..sroa_idx.i136, align 8, !noalias !935
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @200, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @202) #23
  unreachable

_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCskqqG2IB5b71_21iceoryx2_tests_common.exit137: ; preds = %bb.ad
  %i.je = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.jf = load ptr, ptr %i.je, align 8, !noalias !935, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !935
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !935
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store ptr %i.jf, ptr %i.ah, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 48
  %i.jh = load i128, ptr %i.jg, align 16, !range !22, !noalias !936, !noundef !4
  %.not.i138 = icmp eq i128 %i.jh, 2
  br i1 %.not.i138, label %bb.af, label %_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCskqqG2IB5b71_21iceoryx2_tests_common.exit139, !prof !20

bb.af:                                            ; preds = %_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCskqqG2IB5b71_21iceoryx2_tests_common.exit137
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #23, !noalias !936
  unreachable

_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCskqqG2IB5b71_21iceoryx2_tests_common.exit139: ; preds = %_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCskqqG2IB5b71_21iceoryx2_tests_common.exit137
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 6336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ji, ptr noundef nonnull align 8 dereferenceable(32) %i.al, i64 32, i1 false)
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB19_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1011)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1314)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1415.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  call void @_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.ct) #20
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECskqqG2IB5b71_21iceoryx2_tests_common.exit

bb.ag:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store ptr %i.bu, ptr %i.ak, align 8
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.491.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %.val = load ptr, ptr %i.bz, align 8, !nonnull !4, !noundef !4
  %i.jj = getelementptr inbounds nuw i8, ptr %.val, i64 2248
  %i.jk = call noundef nonnull align 8 ptr @_RNvMNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_configNtB2_12StaticConfig16request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(5032) %i.jj) #20
  %i.jl = getelementptr i8, ptr %i.jk, i64 40
  %.val125 = load i64, ptr %i.jl, align 8, !noundef !4
  store i64 %.val125, ptr %i.aj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store ptr %i.bv, ptr %i.ai, align 8
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.495.0..sroa_idx, align 8
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.aj, ptr %i.jm, align 8
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.499.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @4, ptr noundef nonnull %i.ak, ptr noundef nonnull @67, ptr noundef nonnull %i.ai) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.jn, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.experimental.noalias.scope.decl(metadata !937)
  call void @llvm.experimental.noalias.scope.decl(metadata !938)
  call void @llvm.experimental.noalias.scope.decl(metadata !939)
  call void @llvm.experimental.noalias.scope.decl(metadata !940)
  %i.jo = load ptr, ptr %i.aq, align 8, !alias.scope !941, !nonnull !4, !noundef !4
  %i.jp = atomicrmw sub ptr %i.jo, i64 1 release, align 8, !noalias !941
  %i.jq = icmp eq i64 %i.jp, 1
  br i1 %i.jq, label %bb.ah, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBI_7service14ipc_threadsafe7ServicejujuEECskqqG2IB5b71_21iceoryx2_tests_common.exit

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1I_7service14ipc_threadsafe7ServiceEEE9drop_slowCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.aq) #21
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBI_7service14ipc_threadsafe7ServicejujuEECskqqG2IB5b71_21iceoryx2_tests_common.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBI_7service14ipc_threadsafe7ServicejujuEECskqqG2IB5b71_21iceoryx2_tests_common.exit: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.ai

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECskqqG2IB5b71_21iceoryx2_tests_common.exit: ; preds = %bb.ak, %bb.aj, %bb.ai, %_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCskqqG2IB5b71_21iceoryx2_tests_common.exit139
  ret void

2:                                                ; preds = %bb.h
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segment11DataSegmentNtNtNtB16_7service14ipc_threadsafe7ServiceENtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory23SharedMemoryCreateErrorEECskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef align 8 dereferenceable(2488) %i.bj) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #23
  unreachable

bb.ai:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBI_7service14ipc_threadsafe7ServicejujuEECskqqG2IB5b71_21iceoryx2_tests_common.exit, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1011)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1314)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1415.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  call void @_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.ct) #20
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECskqqG2IB5b71_21iceoryx2_tests_common.exit

bb.aj:                                            ; preds = %.thread, %bb.b
  %.sink = phi ptr [ %i.ct, %.thread ], [ %i.ch, %bb.b ]
  call void @_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %.sink) #20
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.jr) #20
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 176
  call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.js) #20
  %i.jt = load i128, ptr %1, align 16, !range !8, !alias.scope !942, !noundef !4
  %i.ju = icmp eq i128 %i.jt, 0
  br i1 %i.ju, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECskqqG2IB5b71_21iceoryx2_tests_common.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24port1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.jv) #20
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECskqqG2IB5b71_21iceoryx2_tests_common.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs9_NtNtCsg6ZEkMtNi4J_8iceoryx24port8notifierINtB5_8NotifierNtNtNtB9_7service14ipc_threadsafe7ServiceE17___internal_notifyCskqqG2IB5b71_21iceoryx2_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 9 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 6 uses
  %i.n = alloca [16 x i8], align 8                ; 7 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [1 x i8], align 1                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [48 x i8], align 8                ; 9 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [8 x i8], align 8                 ; 9 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [8 x i8], align 8                 ; 2 uses
  %i.x = alloca [8 x i8], align 8                 ; 7 uses
  store ptr %1, ptr %i.x, align 8
  store i64 %2, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr @70, ptr %i.v, align 8, !captures !14
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 22, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 1408 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !947)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.z, ptr %i.g, align 8, !noalias !947
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !947
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !947
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !947, !nonnull !4, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.ab, ptr %i.e, align 8, !noalias !947
  call void @_RNvMsq_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_5MutexINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19ListenerConnectionsNtNtNtB13_7service14ipc_threadsafe7ServiceEE4lockCskqqG2IB5b71_21iceoryx2_tests_common(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e) #20
  %i.ac = load i32, ptr %i.f, align 8, !range !21, !noalias !947, !noundef !4
  %.not.i = icmp eq i32 %i.ac, -1
  br i1 %.not.i, label %_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19ListenerConnectionsNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCskqqG2IB5b71_21iceoryx2_tests_common.exit, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !947
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !noalias !947
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !947
  store ptr %i.g, ptr %i.c, align 8, !noalias !947
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19ListenerConnectionsNtNtNtB20_7service14ipc_threadsafe7ServiceEENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !947
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !947
  store ptr %i.d, ptr %i.b, align 8, !noalias !947
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsB_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_14MutexLockErrorINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19ListenerConnectionsNtNtNtB1d_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !947
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @4, ptr noundef nonnull %i.c, ptr noundef nonnull @199, ptr noundef nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !947
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !947
  store ptr %i.g, ptr %i.a, align 8, !noalias !947
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protected14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19ListenerConnectionsNtNtNtB20_7service14ipc_threadsafe7ServiceEENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !947
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.ad, align 8, !noalias !947
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsB_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_14MutexLockErrorINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19ListenerConnectionsNtNtNtB1d_7service14ipc_threadsafe7ServiceEENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !947
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @200, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @202) #23
  unreachable

_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19ListenerConnectionsNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCskqqG2IB5b71_21iceoryx2_tests_common.exit: ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !947, !nonnull !4, !align !5, !noundef !4 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store ptr %i.af, ptr %i.u, align 8
  %i.ag = load i64, ptr %i.af, align 8, !range !11, !noundef !4
  %.not.i74 = icmp eq i64 %i.ag, -1
  br i1 %.not.i74, label %bb.c, label %_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19ListenerConnectionsNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCskqqG2IB5b71_21iceoryx2_tests_common.exit, !prof !20

bb.c:                                             ; preds = %_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19ListenerConnectionsNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCskqqG2IB5b71_21iceoryx2_tests_common.exit
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #23
  unreachable

_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19ListenerConnectionsNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCskqqG2IB5b71_21iceoryx2_tests_common.exit: ; preds = %_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19ListenerConnectionsNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCskqqG2IB5b71_21iceoryx2_tests_common.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !4, !noundef !4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = call noundef nonnull align 8 ptr @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigEINtB7_14DynamicStorageB1r_E3getCskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 8 %i.aj) #20
  %i.al = call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig5event(ptr noundef nonnull align 8 %i.ak) #20
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.an = call noundef zeroext i1 @_RNvMs4_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB5_9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config5event15ListenerDetailsE12update_stateCskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 8 %i.al, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.am) #20
  br i1 %i.an, label %bb.d, label %_RNvMs3_NtNtCsg6ZEkMtNi4J_8iceoryx24port8notifierINtB5_19ListenerConnectionsNtNtNtB9_7service14ipc_threadsafe7ServiceE18update_connectionsCskqqG2IB5b71_21iceoryx2_tests_common.exit

bb.d:                                             ; preds = %_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19ListenerConnectionsNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCskqqG2IB5b71_21iceoryx2_tests_common.exit
  call fastcc void @_RNvMs3_NtNtCsg6ZEkMtNi4J_8iceoryx24port8notifierINtB5_19ListenerConnectionsNtNtNtB9_7service14ipc_threadsafe7ServiceE26populate_listener_channelsCskqqG2IB5b71_21iceoryx2_tests_common(ptr noundef nonnull align 8 %i.af) #20
  br label %_RNvMs3_NtNtCsg6ZEkMtNi4J_8iceoryx24port8notifierINtB5_19ListenerConnectionsNtNtNtB9_7service14ipc_threadsafe7ServiceE18update_connectionsCskqqG2IB5b71_21iceoryx2_tests_common.exit

_RNvMs3_NtNtCsg6ZEkMtNi4J_8iceoryx24port8notifierINtB5_19ListenerConnectionsNtNtNtB9_7service14ipc_threadsafe7ServiceE18update_connectionsCskqqG2IB5b71_21iceoryx2_tests_common.exit: ; preds = %_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19ListenerConnectionsNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCskqqG2IB5b71_21iceoryx2_tests_common.exit, %bb.d
  %i.ao = load ptr, ptr %i.x, align 8, !nonnull !4, !align !5, !noundef !4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1424 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !4
  %i.ar = icmp ult i64 %i.aq, %2
  br i1 %i.ar, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvMs3_NtNtCsg6ZEkMtNi4J_8iceoryx24port8notifierINtB5_19ListenerConnectionsNtNtNtB9_7service14ipc_threadsafe7ServiceE18update_connectionsCskqqG2IB5b71_21iceoryx2_tests_common.exit
  %.val72 = load ptr, ptr %i.u, align 8, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  %i.as = load i64, ptr %.val72, align 8, !range !11, !noundef !4
  %.not.i75 = icmp eq i64 %i.as, -1
  br i1 %.not.i75, label %bb.f, label %_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19ListenerConnectionsNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCskqqG2IB5b71_21iceoryx2_tests_common.exit76, !prof !20

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #23
  unreachable

_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19ListenerConnectionsNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCskqqG2IB5b71_21iceoryx2_tests_common.exit76: ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %.val72, i64 16
  %i.au = load i64, ptr %i.at, align 8, !noundef !4 ; 3 uses
  %i.av = icmp ult i64 %i.au, 16012798675095097
  call void @llvm.assume(i1 %i.av)
  %.not98 = icmp eq i64 %i.au, 0
  br i1 %.not98, label %_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19ListenerConnectionsNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCskqqG2IB5b71_21iceoryx2_tests_common.exit78, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19ListenerConnectionsNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCskqqG2IB5b71_21iceoryx2_tests_common.exit76
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  br label %bb.i

bb.g:                                             ; preds = %_RNvMs3_NtNtCsg6ZEkMtNi4J_8iceoryx24port8notifierINtB5_19ListenerConnectionsNtNtNtB9_7service14ipc_threadsafe7ServiceE18update_connectionsCskqqG2IB5b71_21iceoryx2_tests_common.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.x, ptr %i.t, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier8NotifierNtNtNtBD_7service14ipc_threadsafe7ServiceENtB6_5Debug3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.412.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %i.v, ptr %i.s, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCskqqG2IB5b71_21iceoryx2_tests_common, ptr %.sroa.416.0..sroa_idx, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.w, ptr %i.ax, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr @_RNvXsA_NtCs7gufeB8TUC6_12iceoryx2_cal5eventNtB5_9TriggerIdNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.420.0..sroa_idx, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %i.ap, ptr %i.ay, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.424.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @4, ptr noundef nonnull %i.t, ptr noundef nonnull @75, ptr noundef nonnull %i.s) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.az, align 1
  store i8 1, ptr %0, align 8
  br label %bb.s

._crit_edge:                                      ; preds = %bb.x
  %.val71.pre = load ptr, ptr %i.u, align 8       ; 2 uses
  %.pre = load i64, ptr %.val71.pre, align 8, !range !11
  %i.ba = icmp eq i64 %.pre, -1
  br i1 %i.ba, label %bb.h, label %_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19ListenerConnectionsNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCskqqG2IB5b71_21iceoryx2_tests_common.exit78, !prof !948

bb.h:                                             ; preds = %._crit_edge
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #23
  unreachable

_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19ListenerConnectionsNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCskqqG2IB5b71_21iceoryx2_tests_common.exit78: ; preds = %_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19ListenerConnectionsNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCskqqG2IB5b71_21iceoryx2_tests_common.exit76, %._crit_edge
  %.sroa.0.0.lcssa120 = phi i64 [ %.sroa.0.1, %._crit_edge ], [ 0, %_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19ListenerConnectionsNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCskqqG2IB5b71_21iceoryx2_tests_common.exit76 ]
  %.val71119 = phi ptr [ %.val71.pre, %._crit_edge ], [ %.val72, %_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19ListenerConnectionsNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCskqqG2IB5b71_21iceoryx2_tests_common.exit76 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.val71119, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !4, !noundef !4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 2248
  %i.be = call noundef nonnull align 8 ptr @_RNvMNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_configNtB2_12StaticConfig5event(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(5032) %i.bd) #20 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load i8, ptr %i.bf, align 8, !range !25, !noundef !4
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.k, label %bb.l

bb.i:                                             ; preds = %.lr.ph, %bb.x
  %.sroa.0.097 = phi i64 [ 0, %.lr.ph ], [ %.sroa.0.1, %bb.x ] ; 5 uses
end_hunk_2
