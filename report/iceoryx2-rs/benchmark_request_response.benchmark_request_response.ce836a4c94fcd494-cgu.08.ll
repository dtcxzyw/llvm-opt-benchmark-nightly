Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/benchmark_request_response.benchmark_request_response.ce836a4c94fcd494-cgu.08?download=true
inline.NumInlined: 1211
inline.NumDeleted: 411
begin_hunk_0_@_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceyuyuE3newCshJgtdScfPDc_26benchmark_request_response:bb.a
  %i.bp = add i64 %i.bo, %i.bk
  %.val82 = load ptr, ptr %i.ax, align 8, !nonnull !5, !noundef !5
  %i.bq = getelementptr inbounds nuw i8, ptr %.val82, i64 5432
  %i.br = call noundef nonnull align 8 ptr @_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config17messaging_patternNtB4_16MessagingPattern16request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1848) %i.bq) #15 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 3 uses
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !5
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !1056, !noundef !5
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !1056, !noundef !5
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !1056, !noundef !5
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 56
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !1056, !noundef !5
  %i.cd = add i64 %i.ca, %i.bu
  %i.ce = add i64 %i.cd, %i.cc
  %i.cf = shl i64 %i.bw, 1
  %i.cg = mul i64 %i.cf, %i.by
  %i.ch = mul i64 %i.cg, %i.ce
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.cj = call noundef i64 @_RNvMsf_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6serverINtB5_28PreallocatedResponseOverrideKj18_E4callCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.ci, i64 noundef %i.ch) #15 ; 5 uses
  %.val92 = load ptr, ptr %i.ax, align 8, !nonnull !5, !noundef !5
  %i.ck = getelementptr inbounds nuw i8, ptr %.val92, i64 16
  %i.cl = call noundef nonnull align 8 ptr @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigEINtB7_14DynamicStorageB1r_E3getCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 8 %i.ck) #15
  %i.cm = call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig16request_response(ptr noundef nonnull align 8 %i.cl) #15 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 80
  %.val87 = load ptr, ptr %i.ax, align 8, !nonnull !5, !noundef !5
  %i.co = getelementptr inbounds nuw i8, ptr %.val87, i64 7280
  %.val79 = load ptr, ptr %i.co, align 8, !nonnull !5, !noundef !5
  %i.cp = getelementptr inbounds nuw i8, ptr %.val79, i64 256
  %i.cq = load i64, ptr %i.cp, align 8, !noundef !5 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 96 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !noundef !5 ; 2 uses
  %i.ct = add i64 %i.cs, %i.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @_RINvMs5_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vecINtB6_14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionNtNtBa_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorE7from_fnNCNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB4X_6ServerNtNtNtB51_7service14ipc_threadsafe7ServiceyuyuE3new0ECshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @_RNvNvMs_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocatorNtB6_13HeapAllocator6global9ALLOCATOR, i64 noundef %i.cs) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !1057)
  call void @llvm.experimental.noalias.scope.decl(metadata !1058)
  %i.cu = load ptr, ptr %i.aj, align 8, !alias.scope !1058, !noalias !1059, !noundef !5
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %bb.d, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit, !prof !20

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1060
  %i.cw = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.cx = load i8, ptr %i.cw, align 8, !range !26, !alias.scope !1058, !noalias !1059, !noundef !5
  store i8 %i.cx, ptr %i.c, align 1, !noalias !1060
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 31, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #16, !noalias !1061
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.aj, i64 32, i1 false), !alias.scope !1061, !noalias !1062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %.val98 = load ptr, ptr %i.ax, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.cy = atomicrmw add ptr %.val98, i64 1 monotonic, align 8
  %i.cz = icmp slt i64 %i.cy, 0
  br i1 %i.cz, label %bb.e, label %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_14ipc_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit

bb.e:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.trap()
  unreachable

_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_14ipc_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.da = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(888) %i.ai, ptr noundef nonnull align 8 dereferenceable(888) %i.da, i64 888, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !noundef !5 ; 4 uses
  %i.dd = load i8, ptr %i.bg, align 8, !range !8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.de = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.df = load i8, ptr %i.de, align 2, !range !8, !noundef !5
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_14ipc_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @_RNvMs5_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vecINtB5_14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorE3newCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @_RNvNvMs_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocatorNtB6_13HeapAllocator6global9ALLOCATOR, i64 noundef %i.cq) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !1063)
  %i.dh = load ptr, ptr %i.ah, align 8, !alias.scope !1063, !noalias !1064, !noundef !5
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.g, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit, !prof !20

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1065
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.dk = load i8, ptr %i.dj, align 8, !range !26, !alias.scope !1063, !noalias !1064, !noundef !5
  store i8 %i.dk, ptr %i.b, align 1, !noalias !1065
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 31, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #16, !noalias !1066
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ah, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.h

bb.h:                                             ; preds = %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_14ipc_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit
  %.sroa.03.0 = phi i64 [ 1, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit ], [ 0, %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_14ipc_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit ]
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.dm, ptr noundef nonnull align 16 dereferenceable(48) %i.dl, i64 48, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.al, i64 120
  call void @_RNvMs3_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service14ipc_threadsafe7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE3newCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %i.dn, i64 noundef %i.ct) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 32, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store i128 %.sroa.014.0.copyload, ptr %i.do, align 16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.al, i64 328
  store ptr %.val98, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  store i64 %i.dc, ptr %i.dq, align 16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.al, i64 1264
  store i8 0, ptr %i.dr, align 16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.al, i64 1224
  store i64 %.sroa.03.0, ptr %i.ds, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 1232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, i64 32, i1 false)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.al, i64 336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(888) %i.dt, ptr noundef nonnull align 8 dereferenceable(888) %i.ai, i64 888, i1 false)
  %i.du = getelementptr inbounds nuw i8, ptr %i.al, i64 104
  store i64 %i.dc, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.al, i64 1265
  store i8 %i.dd, ptr %i.dv, align 1
  %i.dw = getelementptr inbounds nuw i8, ptr %i.al, i64 112
  store i64 1, ptr %i.dw, align 16
  %i.dx = getelementptr inbounds nuw i8, ptr %i.al, i64 320
  store i64 0, ptr %i.dx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %.val86 = load ptr, ptr %i.ax, align 8, !nonnull !5, !noundef !5
  %i.dy = getelementptr inbounds nuw i8, ptr %.val86, i64 7280
  %.val78 = load ptr, ptr %i.dy, align 8, !nonnull !5, !noundef !5
  %i.dz = getelementptr inbounds nuw i8, ptr %.val78, i64 16 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 16, !range !18, !noundef !5
  %i.ec = icmp eq i8 %i.eb, 2                     ; 2 uses
  %..i = zext i1 %i.ec to i32                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @_RNvNtNtCsg6ZEkMtNi4J_8iceoryx27service13naming_scheme17data_segment_name(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(none) dereferenceable(264) %i.ag, i128 noundef %.sroa.014.0.copyload) #15
  %i.ed = call noundef i8 @_RNvMs0_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_11DataSegmentNtNtNtBb_7service14ipc_threadsafe7ServiceE22max_number_of_segmentsCshJgtdScfPDc_26benchmark_request_response(i32 noundef %..i) #15 ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bg, i64 952
  %i.ef = load i64, ptr %i.bs, align 16, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !1067)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bg, i64 1240
  %i.eh = load i64, ptr %i.eg, align 8, !alias.scope !1067, !noundef !5 ; 6 uses
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %bb.i, label %_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit

bb.i:                                             ; preds = %bb.h
  call void @_RNvNtNtCs8Chj7Szqq0n_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #16, !noalias !1067
  unreachable

_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit: ; preds = %bb.h
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bg, i64 1232
  %i.ek = load i64, ptr %i.ej, align 8, !alias.scope !1067, !noundef !5
  %i.el = getelementptr inbounds nuw i8, ptr %i.bg, i64 1528
  %i.em = load i64, ptr %i.el, align 8, !alias.scope !1067, !noundef !5
  %i.en = getelementptr inbounds nuw i8, ptr %i.bg, i64 1536
  %i.eo = load i64, ptr %i.en, align 8, !alias.scope !1067, !noundef !5
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bg, i64 1824
  %i.eq = load i64, ptr %i.ep, align 8, !alias.scope !1067, !noundef !5
  %i.er = mul i64 %i.eq, %i.ef
  %i.es = getelementptr inbounds nuw i8, ptr %i.bg, i64 1832
  %i.et = load i64, ptr %i.es, align 8, !alias.scope !1067, !noundef !5
  %i.eu = add i64 %i.ek, -2
  %i.ev = add i64 %i.eu, %i.em
  %i.ew = add i64 %i.ev, %i.eo
  %i.ex = add i64 %i.ew, %i.er
  %i.ey = add i64 %i.ex, %i.et                    ; 2 uses
  %i.ez = urem i64 %i.ey, %i.eh                   ; 2 uses
  %i.fa = icmp eq i64 %i.ez, 0
  %i.fb = sub i64 %i.eh, %i.ez
  %i.fc = select i1 %i.fa, i64 0, i64 %i.fb
  %.sroa.0.0.i = add i64 %i.fc, %i.ey             ; 2 uses
  %i.fd = icmp ult i64 %i.eh, -9223372036854775807
  call void @llvm.assume(i1 %i.fd)
  br i1 %i.ec, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit
  call void @_RNvMs0_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_11DataSegmentNtNtNtBb_7service14ipc_threadsafe7ServiceE21create_static_segmentCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([2488 x i8]) align 8 captures(none) dereferenceable(2488) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.ag, i64 noundef %i.eh, i64 noundef %.sroa.0.0.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4528) %i.dz, i64 noundef %i.cj) #15
  br label %bb.l

bb.k:                                             ; preds = %_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit
  %i.fe = load i8, ptr %i.ea, align 16, !range !18, !noundef !5
  call void @_RNvMs0_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_11DataSegmentNtNtNtBb_7service14ipc_threadsafe7ServiceE22create_dynamic_segmentCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([2488 x i8]) align 8 captures(none) dereferenceable(2488) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.ag, i64 noundef %i.eh, i64 noundef %.sroa.0.0.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4528) %i.dz, i64 noundef %i.cj, i8 noundef %i.fe) #15
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ff = load i64, ptr %i.ac, align 16, !range !17, !noundef !5
  %.not = icmp eq i64 %i.ff, -1
  br i1 %.not, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2488) %i.ad, ptr noundef nonnull align 16 dereferenceable(2488) %i.ac, i64 2488, i1 false)
  %i.fg = load i64, ptr %i.ad, align 8, !range !17, !noundef !5
  %i.fh = icmp eq i64 %i.fg, -1
  br i1 %i.fh, label %2, label %bb.n, !prof !20

.thread:                                          ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store ptr %i.as, ptr %i.af, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.433.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store ptr %i.at, ptr %i.ae, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.437.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.af, ptr noundef nonnull @39, ptr noundef nonnull %i.ae) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  store i8 1, ptr %0, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.fi, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver8ReceiverNtNtNtBK_7service14ipc_threadsafe7ServiceEECshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 16 dereferenceable(1280) %i.al) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @_RNvXs5_NtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage4fileNtB5_7StorageNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(1360) %i.aq) #15
  call void @_RNvXs2_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix4fileNtB5_4FileNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(1360) %i.aq) #15
  %i.fj = getelementptr inbounds nuw i8, ptr %i.aq, i64 272
  call void @_RNvXs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix15file_descriptorNtB5_14FileDescriptorNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(8) %i.fj) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %bb.ad

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.04)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.fk = zext i8 %i.ed to i64                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.fk, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32) #15
  %i.fl = load i64, ptr %i.d, align 8, !range !15, !noundef !5
  %i.fm = trunc nuw i64 %i.fl to i1
  %i.fn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fo = load i64, ptr %i.fn, align 8, !range !27, !noundef !5 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.fm, label %bb.o, label %bb.p, !prof !20

bb.o:                                             ; preds = %bb.n
  %i.fq = load i64, ptr %i.fp, align 8
  call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.fo, i64 %i.fq) #17
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.fr = load ptr, ptr %i.fp, align 8, !nonnull !5, !noundef !5
  %i.fs = icmp samesign uge i64 %i.fo, %i.fk
  call void @llvm.assume(i1 %i.fs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.fo, ptr %i.aa, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  store ptr %i.fr, ptr %i.ft, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 3 uses
  store i64 0, ptr %i.fu, align 8
  %.not109 = icmp eq i8 %i.ed, 0
  br i1 %.not109, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCshJgtdScfPDc_26benchmark_request_response.exit, %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.fv = load i64, ptr %i.cr, align 8, !noundef !5
  call void @_RNvXNtNtCsbqH9stoieM8_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender10ConnectionNtNtNtB2E_7service14ipc_threadsafe7ServiceEEEEINtB2_12SpecFromIterBU_INtNtNtNtB1Y_4iter8adapters3map3MapINtNtNtB1Y_3ops5range5RangejENCNvMs5_NtB2C_6serverINtB5O_6ServerB3x_yuyuE3news_0EE9from_iterCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, i64 noundef 0, i64 noundef %i.fv) #15
  %.val85 = load ptr, ptr %i.ax, align 8, !nonnull !5, !noundef !5
  %i.fw = getelementptr inbounds nuw i8, ptr %.val85, i64 7280
  %.val = load ptr, ptr %i.fw, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.fx = atomicrmw add ptr %.val, i64 1 monotonic, align 8
  %i.fy = icmp slt i64 %i.fx, 0
  br i1 %i.fy, label %bb.q, label %_RNvXs1v_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB6_10SharedNodeNtNtNtB8_7service14ipc_threadsafe7ServiceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit

bb.q:                                             ; preds = %._crit_edge
  call void @llvm.trap()
  unreachable

_RNvXs1v_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB6_10SharedNodeNtNtNtB8_7service14ipc_threadsafe7ServiceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %._crit_edge
  %i.fz = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.ga = load i64, ptr %i.fz, align 8, !noundef !5
  %i.gb = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.gc = load i64, ptr %i.gb, align 8, !noundef !5
  %i.gd = load i64, ptr %i.bt, align 8, !noundef !5
  %i.ge = mul i64 %i.gd, %i.dc
  %i.gf = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.gg = load i64, ptr %i.gf, align 8, !noundef !5
  %i.gh = mul i64 %i.ge, %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.gj = load i8, ptr %i.gi, align 1, !range !8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.x, ptr noundef nonnull align 16 dereferenceable(48) %i.gk, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.w, ptr noundef nonnull align 16 dereferenceable(64) %1, i64 64, i1 false)
  %.val97 = load ptr, ptr %i.ax, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.gl = atomicrmw add ptr %.val97, i64 1 monotonic, align 8
  %i.gm = icmp slt i64 %i.gl, 0
  br i1 %i.gm, label %bb.r, label %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_14ipc_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit103

bb.r:                                             ; preds = %_RNvXs1v_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB6_10SharedNodeNtNtNtB8_7service14ipc_threadsafe7ServiceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.trap()
  unreachable

_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_14ipc_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit103: ; preds = %_RNvXs1v_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB6_10SharedNodeNtNtNtB8_7service14ipc_threadsafe7ServiceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 225
  %i.go = load i8, ptr %i.gn, align 1, !range !8, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(888) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(888) %i.ee, i64 888, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.6, ptr noundef nonnull align 16 dereferenceable(48) %i.x, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.04, ptr noundef nonnull align 16 dereferenceable(64) %i.w, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 16 dereferenceable(24) %i.bs, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RNvMs4_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB5_9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ClientDetailsE9get_stateCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.s, ptr noundef nonnull align 8 %i.cn) #15
  %.val96 = load ptr, ptr %i.ax, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.gp = atomicrmw add ptr %.val96, i64 1 monotonic, align 8
  %i.gq = icmp slt i64 %i.gp, 0
  br i1 %i.gq, label %bb.s, label %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_14ipc_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit104

bb.s:                                             ; preds = %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_14ipc_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit103
  call void @llvm.trap()
  unreachable

_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_14ipc_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit104: ; preds = %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_14ipc_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit103
  %i.gr = getelementptr inbounds nuw i8, ptr %i.u, i64 6368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.gr, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.u, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.04, i64 64, i1 false)
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store i128 %.sroa.014.0.copyload, ptr %.sroa.55.0..sroa_idx, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.6, i64 48, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(2488) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(2488) %i.ac, i64 2488, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 2616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, i64 24, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 2640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.9, i64 24, i1 false)
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 2664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(888) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(888) %.sroa.10, i64 888, i1 false)
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 3552
  store ptr %.val, ptr %.sroa.11.0..sroa_idx, align 16
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 3560
  store ptr %.val97, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 3568
  store i64 %i.ga, ptr %.sroa.13.0..sroa_idx, align 16
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 3576
  store i64 %i.gc, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 3584
  store i64 %i.gh, ptr %.sroa.15.0..sroa_idx, align 16
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 3592
  store i64 %i.cj, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 3600
  store i64 0, ptr %.sroa.17.0..sroa_idx, align 16
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 3608
  store i64 %i.bp, ptr %.sroa.18.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 3616
  store i64 -1, ptr %.sroa.19.0..sroa_idx, align 16
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 3624
  store i8 %i.gj, ptr %.sroa.20.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 3625
  store i8 %i.go, ptr %.sroa.21.0..sroa_idx, align 1
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 3626
  store i8 %i.ed, ptr %.sroa.22.0..sroa_idx, align 2
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 3627
  store i8 0, ptr %.sroa.23.0..sroa_idx, align 1
  %i.gs = getelementptr inbounds nuw i8, ptr %i.u, i64 6272
  store i64 0, ptr %i.gs, align 16
  %i.gt = getelementptr inbounds nuw i8, ptr %i.u, i64 4992
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1280) %i.gt, ptr noundef nonnull align 16 dereferenceable(1280) %i.al, i64 1280, i1 false)
  %i.gu = getelementptr inbounds nuw i8, ptr %i.u, i64 6304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.gu, ptr noundef nonnull align 8 dereferenceable(64) %i.s, i64 64, i1 false)
  %i.gv = getelementptr inbounds nuw i8, ptr %i.u, i64 6392
  store ptr %.val96, ptr %i.gv, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.u, i64 3632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1360) %i.gw, ptr noundef nonnull align 8 dereferenceable(1360) %i.aq, i64 1360, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E3newCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.v, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(6400) %i.u) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.gx = load i8, ptr %i.v, align 8, !range !8, !noundef !5
  %i.gy = trunc nuw i8 %i.gx to i1
  br i1 %i.gy, label %bb.u, label %bb.v

.lr.ph:                                           ; preds = %bb.p, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCshJgtdScfPDc_26benchmark_request_response.exit
  %.sroa.075.0108 = phi i8 [ %i.gz, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCshJgtdScfPDc_26benchmark_request_response.exit ], [ 0, %bb.p ]
  %i.gz = add nuw i8 %.sroa.075.0108, 1           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
end_hunk_0
begin_hunk_1_@_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceyuyuE3newCshJgtdScfPDc_26benchmark_request_response:bb.a
  br label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCshJgtdScfPDc_26benchmark_request_response.exit

_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %.lr.ph, %bb.t
  %i.hd = load ptr, ptr %i.ft, align 8, !alias.scope !1068, !noalias !1069, !nonnull !5, !noundef !5
  %i.he = getelementptr inbounds nuw [32 x i8], ptr %i.hd, i64 %i.ha
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.he, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.z, i64 32, i1 false)
  %i.hf = add i64 %i.ha, 1
  store i64 %i.hf, ptr %i.fu, align 8, !alias.scope !1068, !noalias !1069
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %exitcond.not = icmp eq i8 %i.gz, %i.ed
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.u:                                             ; preds = %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_14ipc_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.hg = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.hh = load i8, ptr %i.hg, align 1, !range !8, !noundef !5
  store i8 %i.hh, ptr %i.r, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.as, ptr %i.q, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.446.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.at, ptr %i.p, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.450.0..sroa_idx, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.r, ptr %i.hi, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @_RNvXs0_NtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policyNtB5_26ArcSyncPolicyCreationErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.454.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.q, ptr noundef nonnull @37, ptr noundef nonnull %i.p) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store i8 2, ptr %0, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.hj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.ac

bb.v:                                             ; preds = %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_14ipc_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit104
  %i.hk = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.hm = load i64, ptr %i.bt, align 8, !noundef !5
  %.val81 = load ptr, ptr %i.ax, align 8, !nonnull !5, !noundef !5
  %i.hn = getelementptr inbounds nuw i8, ptr %.val81, i64 2248
  %i.ho = call noundef nonnull align 8 ptr @_RNvMNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_configNtB2_12StaticConfig16request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(5032) %i.hn) #15
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 2
  %i.hq = load i8, ptr %i.hp, align 2, !range !8, !noundef !5
  store ptr %i.hl, ptr %i.o, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.hm, ptr %i.hr, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i8 %i.hq, ptr %i.hs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ht = call noundef nonnull align 16 ptr @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o) #15
  store ptr %i.ht, ptr %i.n, align 8
  %i.hu = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n) #15 ; 6 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 4992
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 6256
  %i.hx = atomicrmw add ptr %i.hw, i8 1 monotonic, align 1 ; 0 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hu, i64 3627
  %i.hz = atomicrmw add ptr %i.hy, i8 1 monotonic, align 1 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 2, ptr %i.a, align 1
  %i.ia = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hu, i64 6304
  call void @_RINvMs0_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB6_14ContainerStateNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ClientDetailsE8for_eachNCNvMs0_NtNtB1u_4port6serverINtB34_17SharedServerStateNtNtB1s_14ipc_threadsafe7ServiceE24force_update_connections0ECshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ib, ptr noundef nonnull align 16 %i.hu, ptr noalias nofree noundef nonnull dereferenceable(2) %i.a) #15
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE30finish_update_connection_cycleCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 16 %i.hu) #15
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service14ipc_threadsafe7ServiceE30finish_update_connection_cycleCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 16 %i.hv) #15
  %i.ic = load i8, ptr %i.a, align 1, !range !18, !noundef !5 ; 2 uses
  %i.id = load i8, ptr %i.ia, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not77 = icmp eq i8 %i.ic, 2
  br i1 %.not77, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i8 %i.ic, ptr %i.m, align 1
  %i.ie = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store i8 %i.id, ptr %i.ie, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.o, ptr %i.l, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXsb_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceyuyuENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.458.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.m, ptr %i.k, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs2_NtNtCsg6ZEkMtNi4J_8iceoryx24port18update_connectionsNtB5_17ConnectionFailureNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.462.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 3, ptr noundef nonnull @1, ptr noundef nonnull %i.l, ptr noundef nonnull @35, ptr noundef nonnull %i.k) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB19_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  fence syncscope("singlethread") seq_cst
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %.val91 = load ptr, ptr %i.ax, align 8, !nonnull !5, !noundef !5
  %i.if = getelementptr inbounds nuw i8, ptr %.val91, i64 16
  %i.ig = call noundef nonnull align 8 ptr @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigEINtB7_14DynamicStorageB1r_E3getCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 8 %i.if) #15
  %i.ih = call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig16request_response(ptr noundef nonnull align 8 %i.ig) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %.val84 = load ptr, ptr %i.ax, align 8, !nonnull !5, !noundef !5
  %i.ii = getelementptr inbounds nuw i8, ptr %.val84, i64 7280
  %.val99 = load ptr, ptr %i.ii, align 8, !nonnull !5, !noundef !5
  %i.ij = getelementptr inbounds nuw i8, ptr %.val99, i64 6312
  %i.ik = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ik, ptr noundef nonnull align 4 dereferenceable(16) %i.ij, i64 16, i1 false)
  %i.il = load i64, ptr %i.bs, align 16, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 16 dereferenceable(16) %i.ar, i64 16, i1 false)
  %i.im = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 %i.dc, ptr %i.im, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 %i.cj, ptr %i.in, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i64 %i.il, ptr %i.io, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i32 %..i, ptr %i.ip, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.i, i64 60
  store i8 %i.ed, ptr %i.iq, align 4
  call void @_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_responseNtB2_13DynamicConfig13add_server_id(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noundef nonnull align 8 %i.ih, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.i) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.ir = load i64, ptr %i.j, align 8, !range !15, !noundef !5
  %i.is = trunc nuw i64 %i.ir to i1
  br i1 %i.is, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.it = call noundef nonnull align 16 ptr @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o) #15
  store ptr %i.it, ptr %i.e, align 8
  %i.iu = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e) #15
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 6272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.iv, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB19_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %bb.ab

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.as, ptr %i.h, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.466.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %.val80 = load ptr, ptr %i.ax, align 8, !nonnull !5, !noundef !5
  %i.iw = getelementptr inbounds nuw i8, ptr %.val80, i64 2248
  %i.ix = call noundef nonnull align 8 ptr @_RNvMNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_configNtB2_12StaticConfig16request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(5032) %i.iw) #15
  %i.iy = getelementptr i8, ptr %i.ix, i64 32
  %.val100 = load i64, ptr %i.iy, align 8, !noundef !5
  store i64 %.val100, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.at, ptr %i.f, align 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.470.0..sroa_idx, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.g, ptr %i.iz, align 8
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.474.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.h, ptr noundef nonnull @36, ptr noundef nonnull %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i8 0, ptr %0, align 8
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.ja, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !1070)
  call void @llvm.experimental.noalias.scope.decl(metadata !1071)
  call void @llvm.experimental.noalias.scope.decl(metadata !1072)
  call void @llvm.experimental.noalias.scope.decl(metadata !1073)
  %i.jb = load ptr, ptr %i.o, align 8, !alias.scope !1074, !nonnull !5, !noundef !5
  %i.jc = atomicrmw sub ptr %i.jb, i64 1 release, align 8, !noalias !1074
  %i.jd = icmp eq i64 %i.jc, 1
  br i1 %i.jd, label %bb.aa, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server6ServerNtNtNtBI_7service14ipc_threadsafe7ServiceyuyuEECshJgtdScfPDc_26benchmark_request_response.exit

bb.aa:                                            ; preds = %bb.z
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1I_7service14ipc_threadsafe7ServiceEEE9drop_slowCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #14
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server6ServerNtNtNtBI_7service14ipc_threadsafe7ServiceyuyuEECshJgtdScfPDc_26benchmark_request_response.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server6ServerNtNtNtBI_7service14ipc_threadsafe7ServiceyuyuEECshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ac

bb.ab:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit.a, %bb.y
  %.sink = phi ptr [ %3, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit.a ], [ %i.ci, %bb.y ]
  call void @_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6server1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %.sink) #15
  ret void

2:                                                ; preds = %bb.m
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segment11DataSegmentNtNtNtB16_7service14ipc_threadsafe7ServiceENtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory23SharedMemoryCreateErrorEECshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef align 8 dereferenceable(2488) %i.ad) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #16
  unreachable

bb.ac:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server6ServerNtNtNtBI_7service14ipc_threadsafe7ServiceyuyuEECshJgtdScfPDc_26benchmark_request_response.exit, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit.a

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit.a: ; preds = %bb.ae, %bb.ad, %bb.ac
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 160
  br label %bb.ab

bb.ad:                                            ; preds = %.thread, %bb.b
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.je) #15
  %i.jf = load i128, ptr %1, align 16, !range !16, !alias.scope !1075, !noundef !5
  %i.jg = icmp eq i128 %i.jf, 0
  br i1 %i.jg, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit.a, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24port1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.jh) #15
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit.a
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden range(i16 0, -252) i16 @_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service16local_threadsafe7ServiceyuyuE12has_requestsCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = tail call noundef nonnull align 16 ptr @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service16local_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) #15
  store ptr %i.d, ptr %i.b, align 8
  %i.e = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b) #15
  %i.f = call fastcc { i8, i8 } @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_17SharedServerStateNtNtNtB9_7service16local_threadsafe7ServiceE18update_connectionsCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 16 %i.e) #15 ; 2 uses
  %i.g = extractvalue { i8, i8 } %i.f, 0          ; 2 uses
  %.not = icmp eq i8 %i.g, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { i8, i8 } %i.f, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server6ServerNtNtNtBD_7service16local_threadsafe7ServiceyuyuENtB6_5Debug3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.49.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.a, ptr noundef nonnull @28, ptr noundef nonnull inttoptr (i64 191 to ptr)) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB19_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = zext nneg i8 %i.g to i16
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i8, ptr %i.j, align 8, !range !8, !noundef !5
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b) #15
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 3856 ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = call noundef zeroext i1 @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service16local_threadsafe7ServiceE32has_samples_in_active_connectionCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 16 %i.n, i64 noundef 0) #15
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.p = call noundef zeroext i1 @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service16local_threadsafe7ServiceE11has_samplesCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 16 %i.n, i64 noundef 0) #15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.4.0.in = phi i1 [ %i.p, %bb.e ], [ %i.o, %bb.d ]
  %.sroa.4.0 = zext i1 %.sroa.4.0.in to i8
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB19_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.sroa.4.1 = phi i8 [ %i.h, %bb.b ], [ %.sroa.4.0, %bb.f ]
  %.sroa.0.1 = phi i16 [ %i.i, %bb.b ], [ 2, %bb.f ]
  %.sroa.4.0.insert.ext = zext i8 %.sroa.4.1 to i16
  %.sroa.4.0.insert.shift = shl nuw i16 %.sroa.4.0.insert.ext, 8
  %.sroa.0.0.insert.insert = or disjoint i16 %.sroa.4.0.insert.shift, %.sroa.0.1
  ret i16 %.sroa.0.0.insert.insert
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service16local_threadsafe7ServiceyuyuE3newCshJgtdScfPDc_26benchmark_request_response(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 16 captures(address) dead_on_return dereferenceable(240) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 6 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [64 x i8], align 8                ; 10 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [2 x i8], align 1                 ; 5 uses
  %i.n = alloca [8 x i8], align 8                 ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 12 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [1 x i8], align 1                 ; 4 uses
  %i.s = alloca [64 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [6336 x i8], align 16             ; 29 uses
  %i.v = alloca [16 x i8], align 8                ; 7 uses
  %i.w = alloca [64 x i8], align 16               ; 4 uses
  %i.x = alloca [48 x i8], align 16               ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [32 x i8], align 8                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 8 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.04 = alloca [64 x i8], align 16          ; 5 uses
  %.sroa.6 = alloca [48 x i8], align 16           ; 5 uses
  %.sroa.7 = alloca [24 x i8], align 16           ; 5 uses
  %.sroa.8 = alloca [24 x i8], align 8            ; 5 uses
  %i.ac = alloca [2712 x i8], align 16            ; 5 uses
  %.sroa.10 = alloca [888 x i8], align 8          ; 5 uses
  %i.ad = alloca [2712 x i8], align 8             ; 6 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [264 x i8], align 8              ; 7 uses
  %i.ah = alloca [32 x i8], align 8               ; 6 uses
  %.sroa.5 = alloca [32 x i8], align 8            ; 4 uses
  %i.ai = alloca [888 x i8], align 8              ; 4 uses
  %i.aj = alloca [32 x i8], align 8               ; 6 uses
  %i.ak = alloca [32 x i8], align 8               ; 4 uses
  %i.al = alloca [1280 x i8], align 16            ; 20 uses
  %i.am = alloca [32 x i8], align 8               ; 7 uses
  %i.an = alloca [16 x i8], align 8               ; 5 uses
  %i.ao = alloca [1 x i8], align 1                ; 4 uses
  %i.ap = alloca [1072 x i8], align 8             ; 7 uses
  %i.aq = alloca [1072 x i8], align 8             ; 10 uses
  %i.ar = alloca [16 x i8], align 16              ; 8 uses
  %i.as = alloca [16 x i8], align 8               ; 11 uses
  %i.at = alloca [16 x i8], align 8               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store ptr @30, ptr %i.at, align 8, !captures !9
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 28, ptr %i.au, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  store ptr @31, ptr %i.as, align 8, !captures !9
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 13, ptr %i.av, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @_RNvMs15_NtCsg6ZEkMtNi4J_8iceoryx211identifiersNtB6_14UniqueServerId3new(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.ar) #15
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !5, !align !6, !noundef !5 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %.val96 = load ptr, ptr %i.ax, align 8, !nonnull !5, !noundef !5
  %i.ay = getelementptr inbounds nuw i8, ptr %.val96, i64 6144
  %.sroa.014.0.copyload = load i128, ptr %i.ar, align 16 ; 4 uses
  call void @_RNvMsn_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB5_10SharedNodeNtNtNtB7_7service16local_threadsafe7ServiceE15create_port_tagCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([1072 x i8]) align 8 captures(address) dereferenceable(1072) %i.ap, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ay, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 28, i128 noundef %.sroa.014.0.copyload) #15
  %i.az = load ptr, ptr %i.ap, align 8, !noundef !5
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.bc = load i8, ptr %i.bb, align 8, !range !26, !noundef !5
  store i8 %i.bc, ptr %i.ao, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store ptr %i.as, ptr %i.an, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.418.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store ptr %i.at, ptr %i.am, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.422.0..sroa_idx, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store ptr %i.ao, ptr %i.bd, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr @_RNvXs6_NtCs7gufeB8TUC6_12iceoryx2_cal14static_storageNtB5_24StaticStorageCreateErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.426.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.an, ptr noundef nonnull @40, ptr noundef nonnull %i.am) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  store i8 3, ptr %0, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.be, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.bf) #15
  br label %bb.ae

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1072) %i.aq, ptr noundef nonnull align 8 dereferenceable(1072) %i.ap, i64 1072, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  %i.bg = call noundef nonnull align 8 ptr @_RNvXs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_responseINtB5_11PortFactoryNtNtB9_16local_threadsafe7ServiceyuyuENtB7_11PortFactory13static_configCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ax) #15 ; 16 uses
  %.val85 = load ptr, ptr %i.ax, align 8, !nonnull !5, !noundef !5
  %i.bh = getelementptr inbounds nuw i8, ptr %.val85, i64 4296
  %i.bi = call noundef nonnull align 8 ptr @_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config17messaging_patternNtB4_16MessagingPattern16request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1848) %i.bh) #15 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !noundef !5
  %i.bl = getelementptr i8, ptr %i.bi, i64 8
  %.val86 = load i64, ptr %i.bl, align 8, !noundef !5
  %i.bm = getelementptr i8, ptr %i.bi, i64 32
  %.val87 = load i64, ptr %i.bm, align 8, !noundef !5
  %i.bn = shl i64 %.val86, 1
  %i.bo = mul i64 %i.bn, %.val87
  %i.bp = add i64 %i.bo, %i.bk
  %.val84 = load ptr, ptr %i.ax, align 8, !nonnull !5, !noundef !5
  %i.bq = getelementptr inbounds nuw i8, ptr %.val84, i64 4296
  %i.br = call noundef nonnull align 8 ptr @_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config17messaging_patternNtB4_16MessagingPattern16request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1848) %i.bq) #15 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 3 uses
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !5
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !1107, !noundef !5
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !1107, !noundef !5
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !1107, !noundef !5
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 56
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !1107, !noundef !5
  %i.cd = add i64 %i.ca, %i.bu
  %i.ce = add i64 %i.cd, %i.cc
  %i.cf = shl i64 %i.bw, 1
  %i.cg = mul i64 %i.cf, %i.by
  %i.ch = mul i64 %i.cg, %i.ce
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.cj = call noundef i64 @_RNvMsf_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6serverINtB5_28PreallocatedResponseOverrideKj18_E4callCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.ci, i64 noundef %i.ch) #15 ; 5 uses
  %.val98 = load ptr, ptr %i.ax, align 8, !nonnull !5, !noundef !5
  %i.ck = getelementptr i8, ptr %.val98, i64 832
  %.val78 = load ptr, ptr %i.ck, align 8, !nonnull !5, !noundef !5
  %i.cl = getelementptr inbounds nuw i8, ptr %.val78, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8, !noundef !5
  %i.cn = call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig16request_response(ptr noundef nonnull align 8 %i.cm) #15 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 80
  %.val95 = load ptr, ptr %i.ax, align 8, !nonnull !5, !noundef !5
  %i.cp = getelementptr inbounds nuw i8, ptr %.val95, i64 6144
  %.val81 = load ptr, ptr %i.cp, align 8, !nonnull !5, !noundef !5
  %i.cq = getelementptr inbounds nuw i8, ptr %.val81, i64 256
  %i.cr = load i64, ptr %i.cq, align 8, !noundef !5 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 96 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !noundef !5 ; 2 uses
  %i.cu = add i64 %i.ct, %i.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @_RINvMs5_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vecINtB6_14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionNtNtBa_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorE7from_fnNCNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB4X_6ServerNtNtNtB51_7service16local_threadsafe7ServiceyuyuE3new0ECshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @_RNvNvMs_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocatorNtB6_13HeapAllocator6global9ALLOCATOR, i64 noundef %i.ct) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !1108)
  call void @llvm.experimental.noalias.scope.decl(metadata !1109)
  %i.cv = load ptr, ptr %i.aj, align 8, !alias.scope !1109, !noalias !1110, !noundef !5
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.d, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit, !prof !20

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1111
  %i.cx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.cy = load i8, ptr %i.cx, align 8, !range !26, !alias.scope !1109, !noalias !1110, !noundef !5
  store i8 %i.cy, ptr %i.c, align 1, !noalias !1111
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 31, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #16, !noalias !1112
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.aj, i64 32, i1 false), !alias.scope !1112, !noalias !1113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %.val101 = load ptr, ptr %i.ax, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.cz = atomicrmw add ptr %.val101, i64 1 monotonic, align 8
  %i.da = icmp slt i64 %i.cz, 0
  br i1 %i.da, label %bb.e, label %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_16local_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit

bb.e:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.trap()
  unreachable

_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_16local_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.db = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(888) %i.ai, ptr noundef nonnull align 8 dereferenceable(888) %i.db, i64 888, i1 false)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !noundef !5 ; 4 uses
  %i.de = load i8, ptr %i.bg, align 8, !range !8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.df = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.dg = load i8, ptr %i.df, align 2, !range !8, !noundef !5
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_16local_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @_RNvMs5_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vecINtB5_14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorE3newCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @_RNvNvMs_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocatorNtB6_13HeapAllocator6global9ALLOCATOR, i64 noundef %i.cr) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !1114)
  %i.di = load ptr, ptr %i.ah, align 8, !alias.scope !1114, !noalias !1115, !noundef !5
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %bb.g, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit, !prof !20

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1116
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.dl = load i8, ptr %i.dk, align 8, !range !26, !alias.scope !1114, !noalias !1115, !noundef !5
  store i8 %i.dl, ptr %i.b, align 1, !noalias !1116
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 31, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #16, !noalias !1117
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ah, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.h

bb.h:                                             ; preds = %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_16local_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit
  %.sroa.03.0 = phi i64 [ 1, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit ], [ 0, %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_16local_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit ]
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.dn, ptr noundef nonnull align 16 dereferenceable(48) %i.dm, i64 48, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %i.al, i64 120
  call void @_RNvMs3_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service16local_threadsafe7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE3newCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %i.do, i64 noundef %i.cu) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 32, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store i128 %.sroa.014.0.copyload, ptr %i.dp, align 16
  %i.dq = getelementptr inbounds nuw i8, ptr %i.al, i64 328
  store ptr %.val101, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  store i64 %i.dd, ptr %i.dr, align 16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.al, i64 1264
  store i8 0, ptr %i.ds, align 16
  %i.dt = getelementptr inbounds nuw i8, ptr %i.al, i64 1224
  store i64 %.sroa.03.0, ptr %i.dt, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 1232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, i64 32, i1 false)
  %i.du = getelementptr inbounds nuw i8, ptr %i.al, i64 336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(888) %i.du, ptr noundef nonnull align 8 dereferenceable(888) %i.ai, i64 888, i1 false)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.al, i64 104
  store i64 %i.dd, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.al, i64 1265
  store i8 %i.de, ptr %i.dw, align 1
  %i.dx = getelementptr inbounds nuw i8, ptr %i.al, i64 112
  store i64 1, ptr %i.dx, align 16
  %i.dy = getelementptr inbounds nuw i8, ptr %i.al, i64 320
  store i64 0, ptr %i.dy, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %.val94 = load ptr, ptr %i.ax, align 8, !nonnull !5, !noundef !5
  %i.dz = getelementptr inbounds nuw i8, ptr %.val94, i64 6144
  %.val80 = load ptr, ptr %i.dz, align 8, !nonnull !5, !noundef !5
  %i.ea = getelementptr inbounds nuw i8, ptr %.val80, i64 16 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.ec = load i8, ptr %i.eb, align 16, !range !18, !noundef !5
  %i.ed = icmp eq i8 %i.ec, 2                     ; 2 uses
  %..i = zext i1 %i.ed to i32                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @_RNvNtNtCsg6ZEkMtNi4J_8iceoryx27service13naming_scheme17data_segment_name(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(none) dereferenceable(264) %i.ag, i128 noundef %.sroa.014.0.copyload) #15
  %i.ee = call noundef i8 @_RNvMs0_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_11DataSegmentNtNtNtBb_7service16local_threadsafe7ServiceE22max_number_of_segmentsCshJgtdScfPDc_26benchmark_request_response(i32 noundef %..i) #15 ; 5 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bg, i64 952
  %i.eg = load i64, ptr %i.bs, align 16, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1240
  %i.ei = load i64, ptr %i.eh, align 8, !alias.scope !1118, !noundef !5 ; 6 uses
  %i.ej = icmp eq i64 %i.ei, 0
  br i1 %i.ej, label %bb.i, label %_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit

bb.i:                                             ; preds = %bb.h
  call void @_RNvNtNtCs8Chj7Szqq0n_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #16, !noalias !1118
  unreachable

_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit: ; preds = %bb.h
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bg, i64 1232
  %i.el = load i64, ptr %i.ek, align 8, !alias.scope !1118, !noundef !5
  %i.em = getelementptr inbounds nuw i8, ptr %i.bg, i64 1528
  %i.en = load i64, ptr %i.em, align 8, !alias.scope !1118, !noundef !5
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bg, i64 1536
  %i.ep = load i64, ptr %i.eo, align 8, !alias.scope !1118, !noundef !5
  %i.eq = getelementptr inbounds nuw i8, ptr %i.bg, i64 1824
  %i.er = load i64, ptr %i.eq, align 8, !alias.scope !1118, !noundef !5
  %i.es = mul i64 %i.er, %i.eg
  %i.et = getelementptr inbounds nuw i8, ptr %i.bg, i64 1832
  %i.eu = load i64, ptr %i.et, align 8, !alias.scope !1118, !noundef !5
  %i.ev = add i64 %i.el, -2
  %i.ew = add i64 %i.ev, %i.en
  %i.ex = add i64 %i.ew, %i.ep
  %i.ey = add i64 %i.ex, %i.es
  %i.ez = add i64 %i.ey, %i.eu                    ; 2 uses
  %i.fa = urem i64 %i.ez, %i.ei                   ; 2 uses
  %i.fb = icmp eq i64 %i.fa, 0
  %i.fc = sub i64 %i.ei, %i.fa
  %i.fd = select i1 %i.fb, i64 0, i64 %i.fc
  %.sroa.0.0.i = add i64 %i.fd, %i.ez             ; 2 uses
  %i.fe = icmp ult i64 %i.ei, -9223372036854775807
  call void @llvm.assume(i1 %i.fe)
  br i1 %i.ed, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit
  call void @_RNvMs0_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_11DataSegmentNtNtNtBb_7service16local_threadsafe7ServiceE21create_static_segmentCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([2712 x i8]) align 8 captures(none) dereferenceable(2712) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.ag, i64 noundef %i.ei, i64 noundef %.sroa.0.0.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4528) %i.ea, i64 noundef %i.cj) #15
  br label %bb.l

bb.k:                                             ; preds = %_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit
  %i.ff = load i8, ptr %i.eb, align 16, !range !18, !noundef !5
  call void @_RNvMs0_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_11DataSegmentNtNtNtBb_7service16local_threadsafe7ServiceE22create_dynamic_segmentCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([2712 x i8]) align 8 captures(none) dereferenceable(2712) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.ag, i64 noundef %i.ei, i64 noundef %.sroa.0.0.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4528) %i.ea, i64 noundef %i.cj, i8 noundef %i.ff) #15
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.0.0.copyload = load i64, ptr %i.ac, align 16
  %.not = icmp eq i64 %.sroa.0.0.copyload, -2
  br i1 %.not, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segment11DataSegmentNtNtNtB16_7service16local_threadsafe7ServiceENtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory23SharedMemoryCreateErrorEECshJgtdScfPDc_26benchmark_request_response.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2712) %i.ad, ptr noundef nonnull align 16 dereferenceable(2712) %i.ac, i64 2712, i1 false)
  %i.fg = load i64, ptr %i.ad, align 8, !range !19, !noundef !5
  %i.fh = icmp eq i64 %i.fg, -2
  br i1 %i.fh, label %2, label %bb.o, !prof !20

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segment11DataSegmentNtNtNtB16_7service16local_threadsafe7ServiceENtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory23SharedMemoryCreateErrorEECshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store ptr %i.as, ptr %i.af, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.433.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store ptr %i.at, ptr %i.ae, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.437.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.af, ptr noundef nonnull @39, ptr noundef nonnull %i.ae) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  store i8 1, ptr %0, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.fi, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver8ReceiverNtNtNtBK_7service16local_threadsafe7ServiceEECshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 16 dereferenceable(1280) %i.al) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @_RNvXs5_NtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_localNtB5_7StorageNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(1072) %i.aq) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !1119)
  call void @llvm.experimental.noalias.scope.decl(metadata !1120)
  %i.fj = load ptr, ptr %i.aq, align 8, !alias.scope !1121, !nonnull !5, !noundef !5
  %i.fk = atomicrmw sub ptr %i.fj, i64 1 release, align 8, !noalias !1122
  %i.fl = icmp eq i64 %i.fk, 1
  br i1 %i.fl, label %bb.n, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_local7StorageECshJgtdScfPDc_26benchmark_request_response.exit.thread

bb.n:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segment11DataSegmentNtNtNtB16_7service16local_threadsafe7ServiceENtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory23SharedMemoryCreateErrorEECshJgtdScfPDc_26benchmark_request_response.exit
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcNtNtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_local14StorageContentE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1072) %i.aq) #14
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_local7StorageECshJgtdScfPDc_26benchmark_request_response.exit.thread

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.04)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.fm = zext i8 %i.ee to i64                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.fm, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32) #15
  %i.fn = load i64, ptr %i.d, align 8, !range !15, !noundef !5
  %i.fo = trunc nuw i64 %i.fn to i1
  %i.fp = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fq = load i64, ptr %i.fp, align 8, !range !27, !noundef !5 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.fo, label %bb.p, label %bb.q, !prof !20

bb.p:                                             ; preds = %bb.o
  %i.fs = load i64, ptr %i.fr, align 8
  call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.fq, i64 %i.fs) #17
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ft = load ptr, ptr %i.fr, align 8, !nonnull !5, !noundef !5
  %i.fu = icmp samesign uge i64 %i.fq, %i.fm
  call void @llvm.assume(i1 %i.fu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.fq, ptr %i.aa, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  store ptr %i.ft, ptr %i.fv, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 3 uses
  store i64 0, ptr %i.fw, align 8
  %.not110 = icmp eq i8 %i.ee, 0
  br i1 %.not110, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCshJgtdScfPDc_26benchmark_request_response.exit, %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.fx = load i64, ptr %i.cs, align 8, !noundef !5
  call void @_RNvXNtNtCsbqH9stoieM8_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender10ConnectionNtNtNtB2E_7service16local_threadsafe7ServiceEEEEINtB2_12SpecFromIterBU_INtNtNtNtB1Y_4iter8adapters3map3MapINtNtNtB1Y_3ops5range5RangejENCNvMs5_NtB2C_6serverINtB5Q_6ServerB3x_yuyuE3news_0EE9from_iterCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, i64 noundef 0, i64 noundef %i.fx) #15
  %.val93 = load ptr, ptr %i.ax, align 8, !nonnull !5, !noundef !5
  %i.fy = getelementptr inbounds nuw i8, ptr %.val93, i64 6144
  %.val79 = load ptr, ptr %i.fy, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.fz = atomicrmw add ptr %.val79, i64 1 monotonic, align 8
  %i.ga = icmp slt i64 %i.fz, 0
  br i1 %i.ga, label %bb.r, label %_RNvXs1v_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB6_10SharedNodeNtNtNtB8_7service16local_threadsafe7ServiceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit

bb.r:                                             ; preds = %._crit_edge
  call void @llvm.trap()
  unreachable

_RNvXs1v_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB6_10SharedNodeNtNtNtB8_7service16local_threadsafe7ServiceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %._crit_edge
  %i.gb = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.gc = load i64, ptr %i.gb, align 8, !noundef !5
  %i.gd = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.ge = load i64, ptr %i.gd, align 8, !noundef !5
  %i.gf = load i64, ptr %i.bt, align 8, !noundef !5
  %i.gg = mul i64 %i.gf, %i.dd
  %i.gh = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.gi = load i64, ptr %i.gh, align 8, !noundef !5
  %i.gj = mul i64 %i.gg, %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.gl = load i8, ptr %i.gk, align 1, !range !8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.x, ptr noundef nonnull align 16 dereferenceable(48) %i.gm, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.w, ptr noundef nonnull align 16 dereferenceable(64) %1, i64 64, i1 false)
  %.val100 = load ptr, ptr %i.ax, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.gn = atomicrmw add ptr %.val100, i64 1 monotonic, align 8
  %i.go = icmp slt i64 %i.gn, 0
  br i1 %i.go, label %bb.s, label %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_16local_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit105

bb.s:                                             ; preds = %_RNvXs1v_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB6_10SharedNodeNtNtNtB8_7service16local_threadsafe7ServiceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.trap()
  unreachable

_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_16local_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit105: ; preds = %_RNvXs1v_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB6_10SharedNodeNtNtNtB8_7service16local_threadsafe7ServiceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 225
  %i.gq = load i8, ptr %i.gp, align 1, !range !8, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(888) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(888) %i.ef, i64 888, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.6, ptr noundef nonnull align 16 dereferenceable(48) %i.x, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.04, ptr noundef nonnull align 16 dereferenceable(64) %i.w, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 16 dereferenceable(24) %i.bs, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RNvMs4_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB5_9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ClientDetailsE9get_stateCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.s, ptr noundef nonnull align 8 %i.co) #15
  %.val99 = load ptr, ptr %i.ax, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.gr = atomicrmw add ptr %.val99, i64 1 monotonic, align 8
  %i.gs = icmp slt i64 %i.gr, 0
  br i1 %i.gs, label %bb.t, label %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_16local_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit106

bb.t:                                             ; preds = %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_16local_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit105
  call void @llvm.trap()
  unreachable

_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_16local_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit106: ; preds = %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_16local_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit105
  %i.gt = getelementptr inbounds nuw i8, ptr %i.u, i64 6304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.gt, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.u, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.04, i64 64, i1 false)
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store i128 %.sroa.014.0.copyload, ptr %.sroa.55.0..sroa_idx, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.6, i64 48, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.7, i64 24, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, i64 24, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(2712) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(2712) %i.ac, i64 2712, i1 false)
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 2888
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(888) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(888) %.sroa.10, i64 888, i1 false)
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 3776
  store ptr %.val79, ptr %.sroa.11.0..sroa_idx, align 16
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 3784
  store ptr %.val100, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 3792
  store i64 %i.gc, ptr %.sroa.13.0..sroa_idx, align 16
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 3800
  store i64 %i.ge, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 3808
  store i64 %i.gj, ptr %.sroa.15.0..sroa_idx, align 16
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 3816
  store i64 %i.cj, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 3824
  store i64 0, ptr %.sroa.17.0..sroa_idx, align 16
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 3832
  store i64 %i.bp, ptr %.sroa.18.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 3840
  store i64 -1, ptr %.sroa.19.0..sroa_idx, align 16
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 3848
  store i8 %i.gl, ptr %.sroa.20.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 3849
  store i8 %i.gq, ptr %.sroa.21.0..sroa_idx, align 1
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 3850
  store i8 %i.ee, ptr %.sroa.22.0..sroa_idx, align 2
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 3851
  store i8 0, ptr %.sroa.23.0..sroa_idx, align 1
  %i.gu = getelementptr inbounds nuw i8, ptr %i.u, i64 6208
  store i64 0, ptr %i.gu, align 16
  %i.gv = getelementptr inbounds nuw i8, ptr %i.u, i64 3856
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1280) %i.gv, ptr noundef nonnull align 16 dereferenceable(1280) %i.al, i64 1280, i1 false)
  %i.gw = getelementptr inbounds nuw i8, ptr %i.u, i64 6240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.gw, ptr noundef nonnull align 8 dereferenceable(64) %i.s, i64 64, i1 false)
  %i.gx = getelementptr inbounds nuw i8, ptr %i.u, i64 6328
  store ptr %.val99, ptr %i.gx, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.u, i64 5136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1072) %i.gy, ptr noundef nonnull align 8 dereferenceable(1072) %i.aq, i64 1072, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service16local_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E3newCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.v, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(6336) %i.u) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.gz = load i8, ptr %i.v, align 8, !range !8, !noundef !5
  %i.ha = trunc nuw i8 %i.gz to i1
  br i1 %i.ha, label %bb.v, label %bb.w

.lr.ph:                                           ; preds = %bb.q, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCshJgtdScfPDc_26benchmark_request_response.exit
end_hunk_1
begin_hunk_2_@_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service16local_threadsafe7ServiceyuyuE3newCshJgtdScfPDc_26benchmark_request_response:bb.a
_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %.lr.ph, %bb.u
  %i.hf = load ptr, ptr %i.fv, align 8, !alias.scope !1123, !noalias !1124, !nonnull !5, !noundef !5
  %i.hg = getelementptr inbounds nuw [32 x i8], ptr %i.hf, i64 %i.hc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hg, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.z, i64 32, i1 false)
  %i.hh = add i64 %i.hc, 1
  store i64 %i.hh, ptr %i.fw, align 8, !alias.scope !1123, !noalias !1124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %exitcond.not = icmp eq i8 %i.hb, %i.ee
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.v:                                             ; preds = %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_16local_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.hi = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.hj = load i8, ptr %i.hi, align 1, !range !8, !noundef !5
  store i8 %i.hj, ptr %i.r, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.as, ptr %i.q, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.446.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.at, ptr %i.p, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.450.0..sroa_idx, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.r, ptr %i.hk, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @_RNvXs0_NtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policyNtB5_26ArcSyncPolicyCreationErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.454.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.q, ptr noundef nonnull @37, ptr noundef nonnull %i.p) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store i8 2, ptr %0, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.hl, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.ad

bb.w:                                             ; preds = %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_16local_threadsafe7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit106
  %i.hm = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ho = load i64, ptr %i.bt, align 8, !noundef !5
  %.val83 = load ptr, ptr %i.ax, align 8, !nonnull !5, !noundef !5
  %i.hp = getelementptr inbounds nuw i8, ptr %.val83, i64 1112
  %i.hq = call noundef nonnull align 8 ptr @_RNvMNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_configNtB2_12StaticConfig16request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(5032) %i.hp) #15
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 2
  %i.hs = load i8, ptr %i.hr, align 2, !range !8, !noundef !5
  store ptr %i.hn, ptr %i.o, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.ho, ptr %i.ht, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i8 %i.hs, ptr %i.hu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.hv = call noundef nonnull align 16 ptr @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service16local_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o) #15
  store ptr %i.hv, ptr %i.n, align 8
  %i.hw = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n) #15 ; 6 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 3856
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 5120
  %i.hz = atomicrmw add ptr %i.hy, i8 1 monotonic, align 1 ; 0 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hw, i64 3851
  %i.ib = atomicrmw add ptr %i.ia, i8 1 monotonic, align 1 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 2, ptr %i.a, align 1
  %i.ic = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.id = getelementptr inbounds nuw i8, ptr %i.hw, i64 6240
  call void @_RINvMs0_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB6_14ContainerStateNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ClientDetailsE8for_eachNCNvMs0_NtNtB1u_4port6serverINtB34_17SharedServerStateNtNtB1s_16local_threadsafe7ServiceE24force_update_connections0ECshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.id, ptr noundef nonnull align 16 %i.hw, ptr noalias nofree noundef nonnull dereferenceable(2) %i.a) #15
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service16local_threadsafe7ServiceE30finish_update_connection_cycleCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 16 %i.hw) #15
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service16local_threadsafe7ServiceE30finish_update_connection_cycleCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 16 %i.hx) #15
  %i.ie = load i8, ptr %i.a, align 1, !range !18, !noundef !5 ; 2 uses
  %i.if = load i8, ptr %i.ic, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not77 = icmp eq i8 %i.ie, 2
  br i1 %.not77, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i8 %i.ie, ptr %i.m, align 1
  %i.ig = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store i8 %i.if, ptr %i.ig, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.o, ptr %i.l, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXsb_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service16local_threadsafe7ServiceyuyuENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.458.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.m, ptr %i.k, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs2_NtNtCsg6ZEkMtNi4J_8iceoryx24port18update_connectionsNtB5_17ConnectionFailureNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.462.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 3, ptr noundef nonnull @1, ptr noundef nonnull %i.l, ptr noundef nonnull @35, ptr noundef nonnull %i.k) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB19_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  fence syncscope("singlethread") seq_cst
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %.val97 = load ptr, ptr %i.ax, align 8, !nonnull !5, !noundef !5
  %i.ih = getelementptr i8, ptr %.val97, i64 832
  %.val = load ptr, ptr %i.ih, align 8, !nonnull !5, !noundef !5
  %i.ii = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.ij = load ptr, ptr %i.ii, align 8, !noundef !5
  %i.ik = call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig16request_response(ptr noundef nonnull align 8 %i.ij) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %.val92 = load ptr, ptr %i.ax, align 8, !nonnull !5, !noundef !5
  %i.il = getelementptr inbounds nuw i8, ptr %.val92, i64 6144
  %.val102 = load ptr, ptr %i.il, align 8, !nonnull !5, !noundef !5
  %i.im = getelementptr inbounds nuw i8, ptr %.val102, i64 6024
  %i.in = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.in, ptr noundef nonnull align 4 dereferenceable(16) %i.im, i64 16, i1 false)
  %i.io = load i64, ptr %i.bs, align 16, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 16 dereferenceable(16) %i.ar, i64 16, i1 false)
  %i.ip = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 %i.dd, ptr %i.ip, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 %i.cj, ptr %i.iq, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i64 %i.io, ptr %i.ir, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i32 %..i, ptr %i.is, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.i, i64 60
  store i8 %i.ee, ptr %i.it, align 4
  call void @_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_responseNtB2_13DynamicConfig13add_server_id(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noundef nonnull align 8 %i.ik, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.i) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.iu = load i64, ptr %i.j, align 8, !range !15, !noundef !5
  %i.iv = trunc nuw i64 %i.iu to i1
  br i1 %i.iv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.iw = call noundef nonnull align 16 ptr @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service16local_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o) #15
  store ptr %i.iw, ptr %i.e, align 8
  %i.ix = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e) #15
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 6208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.iy, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB19_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.as, ptr %i.h, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.466.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %.val82 = load ptr, ptr %i.ax, align 8, !nonnull !5, !noundef !5
  %i.iz = getelementptr inbounds nuw i8, ptr %.val82, i64 1112
  %i.ja = call noundef nonnull align 8 ptr @_RNvMNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_configNtB2_12StaticConfig16request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(5032) %i.iz) #15
  %i.jb = getelementptr i8, ptr %i.ja, i64 32
  %.val91 = load i64, ptr %i.jb, align 8, !noundef !5
  store i64 %.val91, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.at, ptr %i.f, align 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.470.0..sroa_idx, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.g, ptr %i.jc, align 8
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.474.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.h, ptr noundef nonnull @36, ptr noundef nonnull %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i8 0, ptr %0, align 8
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.jd, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  call void @llvm.experimental.noalias.scope.decl(metadata !1126)
  call void @llvm.experimental.noalias.scope.decl(metadata !1127)
  call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  %i.je = load ptr, ptr %i.o, align 8, !alias.scope !1129, !nonnull !5, !noundef !5
  %i.jf = atomicrmw sub ptr %i.je, i64 1 release, align 8, !noalias !1129
  %i.jg = icmp eq i64 %i.jf, 1
  br i1 %i.jg, label %bb.ab, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server6ServerNtNtNtBI_7service16local_threadsafe7ServiceyuyuEECshJgtdScfPDc_26benchmark_request_response.exit

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1I_7service16local_threadsafe7ServiceEEE9drop_slowCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #14
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server6ServerNtNtNtBI_7service16local_threadsafe7ServiceyuyuEECshJgtdScfPDc_26benchmark_request_response.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server6ServerNtNtNtBI_7service16local_threadsafe7ServiceyuyuEECshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ad

bb.ac:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit.a, %bb.z
  %.sink = phi ptr [ %3, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit.a ], [ %i.ci, %bb.z ]
  call void @_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6server1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %.sink) #15
  ret void

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_local7StorageECshJgtdScfPDc_26benchmark_request_response.exit.thread: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segment11DataSegmentNtNtNtB16_7service16local_threadsafe7ServiceENtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory23SharedMemoryCreateErrorEECshJgtdScfPDc_26benchmark_request_response.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %bb.ae

2:                                                ; preds = %bb.m
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segment11DataSegmentNtNtNtB16_7service16local_threadsafe7ServiceENtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory23SharedMemoryCreateErrorEECshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef align 8 dereferenceable(2712) %i.ad) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #16
  unreachable

bb.ad:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server6ServerNtNtNtBI_7service16local_threadsafe7ServiceyuyuEECshJgtdScfPDc_26benchmark_request_response.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit.a

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit.a: ; preds = %bb.af, %bb.ae, %bb.ad
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 160
  br label %bb.ac

bb.ae:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_local7StorageECshJgtdScfPDc_26benchmark_request_response.exit.thread, %bb.b
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.jh) #15
  %i.ji = load i128, ptr %1, align 16, !range !16, !alias.scope !1130, !noundef !5
  %i.jj = icmp eq i128 %i.ji, 0
  br i1 %i.jj, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit.a, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24port1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.jk) #15
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit.a
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden range(i16 0, -252) i16 @_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service3ipc7ServiceyuyuE12has_requestsCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.d = load i64, ptr %.val, align 8, !noundef !5 ; 2 uses
  %i.e = icmp ne i64 %i.d, 0
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add i64 %i.d, 1                          ; 2 uses
  store i64 %i.f, ptr %.val, align 8
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response.exit, !prof !20

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %bb.a
  store ptr %.val, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.i = tail call fastcc { i8, i8 } @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_17SharedServerStateNtNtNtB9_7service3ipc7ServiceE18update_connectionsCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 16 %i.h) #15 ; 2 uses
  %i.j = extractvalue { i8, i8 } %i.i, 0          ; 2 uses
  %.not = icmp eq i8 %i.j, 2
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response.exit
  %i.k = extractvalue { i8, i8 } %i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server6ServerNtNtNtBD_7service3ipc7ServiceyuyuENtB6_5Debug3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.49.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.a, ptr noundef nonnull @28, ptr noundef nonnull inttoptr (i64 191 to ptr)) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  call void @llvm.experimental.noalias.scope.decl(metadata !1144)
  call void @llvm.experimental.noalias.scope.decl(metadata !1145)
  %i.l = load ptr, ptr %i.b, align 8, !alias.scope !1146, !nonnull !5, !noundef !5 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !noalias !1146, !noundef !5
  %i.n = add i64 %i.m, -1                         ; 2 uses
  store i64 %i.n, ptr %i.l, align 8, !noalias !1146
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.d, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit

bb.d:                                             ; preds = %bb.c
  call void @_RNvMs6_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtBK_7service3ipc7ServiceEE9drop_slowCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #14
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = zext nneg i8 %i.j to i16
  br label %bb.j

bb.e:                                             ; preds = %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i8, ptr %i.q, align 8, !range !8, !noundef !5
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 5008 ; 2 uses
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = tail call noundef zeroext i1 @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE32has_samples_in_active_connectionCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 16 %i.t, i64 noundef 0) #15
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = tail call noundef zeroext i1 @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE11has_samplesCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 16 %i.t, i64 noundef 0) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.in = phi i1 [ %i.v, %bb.g ], [ %i.u, %bb.f ]
  %.sroa.4.0 = zext i1 %.sroa.4.0.in to i8
  %i.w = load i64, ptr %.val, align 8, !noalias !1147, !noundef !5
  %i.x = add i64 %i.w, -1                         ; 2 uses
  store i64 %i.x, ptr %.val, align 8, !noalias !1147
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.i, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit15

bb.i:                                             ; preds = %bb.h
  call void @_RNvMs6_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtBK_7service3ipc7ServiceEE9drop_slowCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #14
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit15

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit15: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.j:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit15, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit
  %.sroa.4.1 = phi i8 [ %i.k, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit ], [ %.sroa.4.0, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit15 ]
  %.sroa.0.1 = phi i16 [ %i.p, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit ], [ 2, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit15 ]
  %.sroa.4.0.insert.ext = zext i8 %.sroa.4.1 to i16
  %.sroa.4.0.insert.shift = shl nuw i16 %.sroa.4.0.insert.ext, 8
  %.sroa.0.0.insert.insert = or disjoint i16 %.sroa.4.0.insert.shift, %.sroa.0.1
  ret i16 %.sroa.0.0.insert.insert
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service3ipc7ServiceyuyuE3newCshJgtdScfPDc_26benchmark_request_response(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 16 captures(address) dead_on_return dereferenceable(240) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 6 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [64 x i8], align 8                ; 10 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [2 x i8], align 1                 ; 5 uses
  %i.m = alloca [8 x i8], align 8                 ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 11 uses
  %i.o = alloca [64 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.04 = alloca [64 x i8], align 16          ; 2 uses
  %.sroa.6 = alloca [48 x i8], align 16           ; 2 uses
  %i.q = alloca [2488 x i8], align 16             ; 5 uses
  %.sroa.8 = alloca [24 x i8], align 8            ; 2 uses
  %.sroa.9 = alloca [24 x i8], align 16           ; 2 uses
  %.sroa.10 = alloca [888 x i8], align 8          ; 2 uses
  %.sroa.23 = alloca [1364 x i8], align 4         ; 4 uses
  %.sroa.26 = alloca [88 x i8], align 8           ; 4 uses
  %.sroa.27 = alloca [24 x i8], align 16          ; 4 uses
  %i.r = alloca [64 x i8], align 16               ; 4 uses
  %i.s = alloca [48 x i8], align 16               ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [32 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 8 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [2488 x i8], align 8              ; 6 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [264 x i8], align 8              ; 7 uses
  %i.ab = alloca [32 x i8], align 8               ; 6 uses
  %.sroa.5 = alloca [32 x i8], align 8            ; 4 uses
  %i.ac = alloca [888 x i8], align 8              ; 4 uses
  %i.ad = alloca [32 x i8], align 8               ; 6 uses
  %i.ae = alloca [32 x i8], align 8               ; 4 uses
  %i.af = alloca [1280 x i8], align 16            ; 20 uses
  %i.ag = alloca [32 x i8], align 8               ; 7 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [1 x i8], align 1                ; 4 uses
  %i.aj = alloca [1360 x i8], align 8             ; 7 uses
  %i.ak = alloca [1360 x i8], align 8             ; 10 uses
  %i.al = alloca [16 x i8], align 16              ; 8 uses
  %i.am = alloca [16 x i8], align 8               ; 10 uses
  %i.an = alloca [16 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store ptr @30, ptr %i.an, align 8, !captures !9
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 28, ptr %i.ao, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store ptr @31, ptr %i.am, align 8, !captures !9
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 13, ptr %i.ap, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @_RNvMs15_NtCsg6ZEkMtNi4J_8iceoryx211identifiersNtB6_14UniqueServerId3new(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.al) #15
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !5, !align !6, !noundef !5 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %.val98 = load ptr, ptr %i.ar, align 8, !nonnull !5, !noundef !5
  %i.as = getelementptr inbounds nuw i8, ptr %.val98, i64 7280
  %.sroa.014.0.copyload = load i128, ptr %i.al, align 16 ; 4 uses
  call void @_RNvMsn_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB5_10SharedNodeNtNtNtB7_7service3ipc7ServiceE15create_port_tagCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([1360 x i8]) align 8 captures(address) dereferenceable(1360) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.as, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 28, i128 noundef %.sroa.014.0.copyload) #15
  %i.at = load i64, ptr %i.aj, align 8, !range !21, !noundef !5
  %i.au = icmp eq i64 %i.at, 2
  br i1 %i.au, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.aw = load i8, ptr %i.av, align 8, !range !26, !noundef !5
  store i8 %i.aw, ptr %i.ai, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store ptr %i.am, ptr %i.ah, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.418.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %i.an, ptr %i.ag, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.422.0..sroa_idx, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %i.ai, ptr %i.ax, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr @_RNvXs6_NtCs7gufeB8TUC6_12iceoryx2_cal14static_storageNtB5_24StaticStorageCreateErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.426.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.ah, ptr noundef nonnull @40, ptr noundef nonnull %i.ag) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  store i8 3, ptr %0, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.ay, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
end_hunk_2
begin_hunk_3_@_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service3ipc7ServiceyuyuE3newCshJgtdScfPDc_26benchmark_request_response:bb.a
  %i.bj = add i64 %i.bi, %i.be
  %.val86 = load ptr, ptr %i.ar, align 8, !nonnull !5, !noundef !5
  %i.bk = getelementptr inbounds nuw i8, ptr %.val86, i64 5432
  %i.bl = call noundef nonnull align 8 ptr @_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config17messaging_patternNtB4_16MessagingPattern16request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1848) %i.bk) #15 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 3 uses
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !5
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !1196, !noundef !5
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !1196, !noundef !5
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !1196, !noundef !5
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !1196, !noundef !5
  %i.bx = add i64 %i.bu, %i.bo
  %i.by = add i64 %i.bx, %i.bw
  %i.bz = shl i64 %i.bq, 1
  %i.ca = mul i64 %i.bz, %i.bs
  %i.cb = mul i64 %i.ca, %i.by
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.cd = call noundef i64 @_RNvMsf_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6serverINtB5_28PreallocatedResponseOverrideKj18_E4callCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.cc, i64 noundef %i.cb) #15 ; 5 uses
  %.val100 = load ptr, ptr %i.ar, align 8, !nonnull !5, !noundef !5
  %i.ce = getelementptr inbounds nuw i8, ptr %.val100, i64 16
  %i.cf = call noundef nonnull align 8 ptr @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigEINtB7_14DynamicStorageB1r_E3getCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 8 %i.ce) #15
  %i.cg = call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig16request_response(ptr noundef nonnull align 8 %i.cf) #15 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 80
  %.val97 = load ptr, ptr %i.ar, align 8, !nonnull !5, !noundef !5
  %i.ci = getelementptr inbounds nuw i8, ptr %.val97, i64 7280
  %.val79 = load ptr, ptr %i.ci, align 8, !nonnull !5, !noundef !5
  %i.cj = getelementptr inbounds nuw i8, ptr %.val79, i64 256
  %i.ck = load i64, ptr %i.cj, align 8, !noundef !5 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 96 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !noundef !5 ; 2 uses
  %i.cn = add i64 %i.cm, %i.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @_RINvMs5_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vecINtB6_14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionNtNtBa_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorE7from_fnNCNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB4X_6ServerNtNtNtB51_7service3ipc7ServiceyuyuE3new0ECshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @_RNvNvMs_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocatorNtB6_13HeapAllocator6global9ALLOCATOR, i64 noundef %i.cm) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !1197)
  call void @llvm.experimental.noalias.scope.decl(metadata !1198)
  %i.co = load ptr, ptr %i.ad, align 8, !alias.scope !1198, !noalias !1199, !noundef !5
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.d, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit, !prof !20

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1200
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.cr = load i8, ptr %i.cq, align 8, !range !26, !alias.scope !1198, !noalias !1199, !noundef !5
  store i8 %i.cr, ptr %i.c, align 1, !noalias !1200
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 31, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #16, !noalias !1201
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ad, i64 32, i1 false), !alias.scope !1201, !noalias !1202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %.val103 = load ptr, ptr %i.ar, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.cs = atomicrmw add ptr %.val103, i64 1 monotonic, align 8
  %i.ct = icmp slt i64 %i.cs, 0
  br i1 %i.ct, label %bb.e, label %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_3ipc7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit

bb.e:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.trap()
  unreachable

_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_3ipc7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(888) %i.ac, ptr noundef nonnull align 8 dereferenceable(888) %i.cu, i64 888, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !noundef !5 ; 4 uses
  %i.cx = load i8, ptr %i.ba, align 8, !range !8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %i.cz = load i8, ptr %i.cy, align 2, !range !8, !noundef !5
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_3ipc7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @_RNvMs5_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vecINtB5_14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorE3newCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @_RNvNvMs_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocatorNtB6_13HeapAllocator6global9ALLOCATOR, i64 noundef %i.ck) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !1203)
  %i.db = load ptr, ptr %i.ab, align 8, !alias.scope !1203, !noalias !1204, !noundef !5
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %bb.g, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit, !prof !20

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1205
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.de = load i8, ptr %i.dd, align 8, !range !26, !alias.scope !1203, !noalias !1204, !noundef !5
  store i8 %i.de, ptr %i.b, align 1, !noalias !1205
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 31, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #16, !noalias !1206
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ab, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.h

bb.h:                                             ; preds = %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_3ipc7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit
  %.sroa.03.0 = phi i64 [ 1, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit ], [ 0, %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_3ipc7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit ]
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.dg, ptr noundef nonnull align 16 dereferenceable(48) %i.df, i64 48, i1 false)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.af, i64 120
  call void @_RNvMs3_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service3ipc7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE3newCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %i.dh, i64 noundef %i.cn) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 32, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store i128 %.sroa.014.0.copyload, ptr %i.di, align 16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.af, i64 328
  store ptr %.val103, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  store i64 %i.cw, ptr %i.dk, align 16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.af, i64 1264
  store i8 0, ptr %i.dl, align 16
  %i.dm = getelementptr inbounds nuw i8, ptr %i.af, i64 1224
  store i64 %.sroa.03.0, ptr %i.dm, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 1232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, i64 32, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.af, i64 336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(888) %i.dn, ptr noundef nonnull align 8 dereferenceable(888) %i.ac, i64 888, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %i.af, i64 104
  store i64 %i.cw, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.af, i64 1265
  store i8 %i.cx, ptr %i.dp, align 1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.af, i64 112
  store i64 1, ptr %i.dq, align 16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.af, i64 320
  store i64 0, ptr %i.dr, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %.val96 = load ptr, ptr %i.ar, align 8, !nonnull !5, !noundef !5
  %i.ds = getelementptr inbounds nuw i8, ptr %.val96, i64 7280
  %.val78 = load ptr, ptr %i.ds, align 8, !nonnull !5, !noundef !5
  %i.dt = getelementptr inbounds nuw i8, ptr %.val78, i64 16 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.dv = load i8, ptr %i.du, align 16, !range !18, !noundef !5
  %i.dw = icmp eq i8 %i.dv, 2                     ; 2 uses
  %..i = zext i1 %i.dw to i32                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @_RNvNtNtCsg6ZEkMtNi4J_8iceoryx27service13naming_scheme17data_segment_name(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(none) dereferenceable(264) %i.aa, i128 noundef %.sroa.014.0.copyload) #15
  %i.dx = call noundef i8 @_RNvMs0_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_11DataSegmentNtNtNtBb_7service3ipc7ServiceE22max_number_of_segmentsCshJgtdScfPDc_26benchmark_request_response(i32 noundef %..i) #15 ; 5 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ba, i64 952
  %i.dz = load i64, ptr %i.bm, align 16, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ba, i64 1240
  %i.eb = load i64, ptr %i.ea, align 8, !alias.scope !1207, !noundef !5 ; 6 uses
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %bb.i, label %_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit

bb.i:                                             ; preds = %bb.h
  call void @_RNvNtNtCs8Chj7Szqq0n_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #16, !noalias !1207
  unreachable

_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit: ; preds = %bb.h
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ba, i64 1232
  %i.ee = load i64, ptr %i.ed, align 8, !alias.scope !1207, !noundef !5
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ba, i64 1528
  %i.eg = load i64, ptr %i.ef, align 8, !alias.scope !1207, !noundef !5
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ba, i64 1536
  %i.ei = load i64, ptr %i.eh, align 8, !alias.scope !1207, !noundef !5
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ba, i64 1824
  %i.ek = load i64, ptr %i.ej, align 8, !alias.scope !1207, !noundef !5
  %i.el = mul i64 %i.ek, %i.dz
  %i.em = getelementptr inbounds nuw i8, ptr %i.ba, i64 1832
  %i.en = load i64, ptr %i.em, align 8, !alias.scope !1207, !noundef !5
  %i.eo = add i64 %i.ee, -2
  %i.ep = add i64 %i.eo, %i.eg
  %i.eq = add i64 %i.ep, %i.ei
  %i.er = add i64 %i.eq, %i.el
  %i.es = add i64 %i.er, %i.en                    ; 2 uses
  %i.et = urem i64 %i.es, %i.eb                   ; 2 uses
  %i.eu = icmp eq i64 %i.et, 0
  %i.ev = sub i64 %i.eb, %i.et
  %i.ew = select i1 %i.eu, i64 0, i64 %i.ev
  %.sroa.0.0.i = add i64 %i.ew, %i.es             ; 2 uses
  %i.ex = icmp ult i64 %i.eb, -9223372036854775807
  call void @llvm.assume(i1 %i.ex)
  br i1 %i.dw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit
  call void @_RNvMs0_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_11DataSegmentNtNtNtBb_7service3ipc7ServiceE21create_static_segmentCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([2488 x i8]) align 8 captures(none) dereferenceable(2488) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.aa, i64 noundef %i.eb, i64 noundef %.sroa.0.0.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4528) %i.dt, i64 noundef %i.cd) #15
  br label %bb.l

bb.k:                                             ; preds = %_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit
  %i.ey = load i8, ptr %i.du, align 16, !range !18, !noundef !5
  call void @_RNvMs0_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_11DataSegmentNtNtNtBb_7service3ipc7ServiceE22create_dynamic_segmentCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([2488 x i8]) align 8 captures(none) dereferenceable(2488) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.aa, i64 noundef %i.eb, i64 noundef %.sroa.0.0.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4528) %i.dt, i64 noundef %i.cd, i8 noundef %i.ey) #15
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.0.0.copyload = load i64, ptr %i.q, align 16
  %.not = icmp eq i64 %.sroa.0.0.copyload, -1
  br i1 %.not, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2488) %i.x, ptr noundef nonnull align 16 dereferenceable(2488) %i.q, i64 2488, i1 false)
  %i.ez = load i64, ptr %i.x, align 8, !range !17, !noundef !5
  %i.fa = icmp eq i64 %i.ez, -1
  br i1 %i.fa, label %2, label %bb.n, !prof !20

.thread:                                          ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr %i.am, ptr %i.z, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.433.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %i.an, ptr %i.y, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.437.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.z, ptr noundef nonnull @39, ptr noundef nonnull %i.y) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  store i8 1, ptr %0, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.fb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver8ReceiverNtNtNtBK_7service3ipc7ServiceEECshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 16 dereferenceable(1280) %i.af) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @_RNvXs5_NtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage4fileNtB5_7StorageNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(1360) %i.ak) #15
  call void @_RNvXs2_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix4fileNtB5_4FileNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(1360) %i.ak) #15
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ak, i64 272
  call void @_RNvXs0_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix15file_descriptorNtB5_14FileDescriptorNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(8) %i.fc) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %bb.ad

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.fd = zext i8 %i.dx to i64                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.fd, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32) #15
  %i.fe = load i64, ptr %i.d, align 8, !range !15, !noundef !5
  %i.ff = trunc nuw i64 %i.fe to i1
  %i.fg = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fh = load i64, ptr %i.fg, align 8, !range !27, !noundef !5 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.ff, label %bb.o, label %bb.p, !prof !20

bb.o:                                             ; preds = %bb.n
  %i.fj = load i64, ptr %i.fi, align 8
  call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.fh, i64 %i.fj) #17
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.fk = load ptr, ptr %i.fi, align 8, !nonnull !5, !noundef !5
  %i.fl = icmp samesign uge i64 %i.fh, %i.fd
  call void @llvm.assume(i1 %i.fl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.fh, ptr %i.v, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  store ptr %i.fk, ptr %i.fm, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  store i64 0, ptr %i.fn, align 8
  %.not126 = icmp eq i8 %i.dx, 0
  br i1 %.not126, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCshJgtdScfPDc_26benchmark_request_response.exit, %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.fo = load i64, ptr %i.cl, align 8, !noundef !5
  call void @_RNvXNtNtCsbqH9stoieM8_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender10ConnectionNtNtNtB2E_7service3ipc7ServiceEEEEINtB2_12SpecFromIterBU_INtNtNtNtB1Y_4iter8adapters3map3MapINtNtNtB1Y_3ops5range5RangejENCNvMs5_NtB2C_6serverINtB5C_6ServerB3x_yuyuE3news_0EE9from_iterCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, i64 noundef 0, i64 noundef %i.fo) #15
  %.val95 = load ptr, ptr %i.ar, align 8, !nonnull !5, !noundef !5
  %i.fp = getelementptr inbounds nuw i8, ptr %.val95, i64 7280
  %.val = load ptr, ptr %i.fp, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.fq = atomicrmw add ptr %.val, i64 1 monotonic, align 8
  %i.fr = icmp slt i64 %i.fq, 0
  br i1 %i.fr, label %bb.q, label %_RNvXs1v_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB6_10SharedNodeNtNtNtB8_7service3ipc7ServiceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit

bb.q:                                             ; preds = %._crit_edge
  call void @llvm.trap()
  unreachable

_RNvXs1v_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB6_10SharedNodeNtNtNtB8_7service3ipc7ServiceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %._crit_edge
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.ft = load i64, ptr %i.fs, align 8, !noundef !5
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %i.fv = load i64, ptr %i.fu, align 8, !noundef !5
  %i.fw = load i64, ptr %i.bn, align 8, !noundef !5
  %i.fx = mul i64 %i.fw, %i.cw
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.fz = load i64, ptr %i.fy, align 8, !noundef !5
  %i.ga = mul i64 %i.fx, %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.gc = load i8, ptr %i.gb, align 1, !range !8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.s, ptr noundef nonnull align 16 dereferenceable(48) %i.gd, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.r, ptr noundef nonnull align 16 dereferenceable(64) %1, i64 64, i1 false)
  %.val102 = load ptr, ptr %i.ar, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ge = atomicrmw add ptr %.val102, i64 1 monotonic, align 8
  %i.gf = icmp slt i64 %i.ge, 0
  br i1 %i.gf, label %bb.r, label %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_3ipc7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit107

bb.r:                                             ; preds = %_RNvXs1v_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB6_10SharedNodeNtNtNtB8_7service3ipc7ServiceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.trap()
  unreachable

_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_3ipc7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit107: ; preds = %_RNvXs1v_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB6_10SharedNodeNtNtNtB8_7service3ipc7ServiceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 225
  %i.gh = load i8, ptr %i.gg, align 1, !range !8, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(888) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(888) %i.dy, i64 888, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.6, ptr noundef nonnull align 16 dereferenceable(48) %i.s, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.04, ptr noundef nonnull align 16 dereferenceable(64) %i.r, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.23)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.26)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.27)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 16 dereferenceable(24) %i.bm, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvMs4_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB5_9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ClientDetailsE9get_stateCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.o, ptr noundef nonnull align 8 %i.ch) #15
  %.val101 = load ptr, ptr %i.ar, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.gi = atomicrmw add ptr %.val101, i64 1 monotonic, align 8
  %i.gj = icmp slt i64 %i.gi, 0
  br i1 %i.gj, label %bb.s, label %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_3ipc7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit108

bb.s:                                             ; preds = %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_3ipc7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit107
  call void @llvm.trap()
  unreachable

_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_3ipc7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit108: ; preds = %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_3ipc7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.27, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  %.sroa.26.6304..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.26, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.26.6304..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %i.o, i64 64, i1 false)
  %.sroa.23.3632..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.23, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1360) %.sroa.23.3632..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1360) %i.ak, i64 1360, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !1208
  %i.gk = call noundef align 16 dereferenceable_or_null(6416) ptr @_RNvCsicpYtSlSgpD_7___rustc12___rust_alloc(i64 noundef range(i64 24, 7289) 6416, i64 noundef range(i64 8, 17) 16) #15, !noalias !1208 ; 35 uses
  %i.gl = icmp eq ptr %i.gk, null
  br i1 %i.gl, label %bb.t, label %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response.exit, !prof !20

bb.t:                                             ; preds = %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_3ipc7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit108
  call void @_RNvNtCsbqH9stoieM8_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 6416) #17, !noalias !1208
  unreachable

.lr.ph:                                           ; preds = %bb.p, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCshJgtdScfPDc_26benchmark_request_response.exit
  %.sroa.075.0125 = phi i8 [ %i.gm, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCshJgtdScfPDc_26benchmark_request_response.exit ], [ 0, %bb.p ]
  %i.gm = add nuw i8 %.sroa.075.0125, 1           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_stateNtB2_12SegmentState3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.u, i64 noundef %i.cd) #15
  %i.gn = load i64, ptr %i.fn, align 8, !alias.scope !1209, !noalias !1210, !noundef !5 ; 3 uses
  %i.go = load i64, ptr %i.v, align 8, !range !28, !alias.scope !1209, !noalias !1210, !noundef !5
  %i.gp = icmp eq i64 %i.gn, %i.go
  br i1 %i.gp, label %bb.u, label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCshJgtdScfPDc_26benchmark_request_response.exit

bb.u:                                             ; preds = %.lr.ph
  call void @_RNvMs4_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8grow_oneCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v) #14, !noalias !1210
  br label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCshJgtdScfPDc_26benchmark_request_response.exit

_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %.lr.ph, %bb.u
  %i.gq = load ptr, ptr %i.fm, align 8, !alias.scope !1209, !noalias !1210, !nonnull !5, !noundef !5
  %i.gr = getelementptr inbounds nuw [32 x i8], ptr %i.gq, i64 %i.gn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gr, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.u, i64 32, i1 false)
  %i.gs = add i64 %i.gn, 1
  store i64 %i.gs, ptr %i.fn, align 8, !alias.scope !1209, !noalias !1210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %exitcond.not = icmp eq i8 %i.gm, %i.dx
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_3ipc7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit108
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1211
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gk, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.04, i64 64, i1 false)
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gk, i64 80
  store i128 %.sroa.014.0.copyload, ptr %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1212
  %.sroa.5116.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gk, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.5116.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.6, i64 48, i1 false)
  %.sroa.6117.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gk, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(2488) %.sroa.6117.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 16 dereferenceable(2488) %i.q, i64 2488, i1 false)
  %.sroa.7118.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gk, i64 2632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7118.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, i64 24, i1 false)
  %.sroa.8119.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gk, i64 2656
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.8119.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.9, i64 24, i1 false)
  %.sroa.9120.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gk, i64 2680
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(888) %.sroa.9120.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(888) %.sroa.10, i64 888, i1 false)
  %.sroa.10121.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gk, i64 3568
  store ptr %.val, ptr %.sroa.10121.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1212
  %.sroa.11.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gk, i64 3576
  store ptr %.val102, ptr %.sroa.11.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8, !noalias !1212
  %.sroa.12.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gk, i64 3584
  store i64 %i.ft, ptr %.sroa.12.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1212
  %.sroa.13.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gk, i64 3592
  store i64 %i.fv, ptr %.sroa.13.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8, !noalias !1212
  %.sroa.14.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gk, i64 3600
  store i64 %i.ga, ptr %.sroa.14.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1212
end_hunk_3
begin_hunk_4_@_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service3ipc7ServiceyuyuE3newCshJgtdScfPDc_26benchmark_request_response:bb.a
  store i64 0, ptr %.sroa.16.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1212
  %.sroa.17.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gk, i64 3624
  store i64 %i.bj, ptr %.sroa.17.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8, !noalias !1212
  %.sroa.18.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gk, i64 3632
  store i64 -1, ptr %.sroa.18.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1212
  %.sroa.19.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gk, i64 3640
  store i8 %i.gc, ptr %.sroa.19.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8, !noalias !1212
  %.sroa.20.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gk, i64 3641
  store i8 %i.gh, ptr %.sroa.20.0..sroa.5.0..sroa_idx.i.sroa_idx, align 1, !noalias !1212
  %.sroa.21.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gk, i64 3642
  store i8 %i.dx, ptr %.sroa.21.0..sroa.5.0..sroa_idx.i.sroa_idx, align 2, !noalias !1212
  %.sroa.22.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gk, i64 3643 ; 2 uses
  store i8 0, ptr %.sroa.22.0..sroa.5.0..sroa_idx.i.sroa_idx, align 1, !noalias !1212
  %.sroa.23.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gk, i64 3644
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1364) %.sroa.23.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 4 dereferenceable(1364) %.sroa.23, i64 1364, i1 false), !noalias !1212
  %.sroa.24.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gk, i64 5008 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1280) %.sroa.24.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 16 dereferenceable(1280) %i.af, i64 1280, i1 false)
  %.sroa.25.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gk, i64 6288
  store i64 0, ptr %.sroa.25.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1212
  %.sroa.26.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gk, i64 6296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.26.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.26, i64 88, i1 false), !noalias !1212
  %.sroa.27.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gk, i64 6384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.27.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.27, i64 24, i1 false), !noalias !1212
  %.sroa.28.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gk, i64 6408
  store ptr %.val101, ptr %.sroa.28.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8, !noalias !1212
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.26)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.27)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.gt = load i64, ptr %i.bn, align 8, !noundef !5
  %.val85 = load ptr, ptr %i.ar, align 8, !nonnull !5, !noundef !5
  %i.gu = getelementptr inbounds nuw i8, ptr %.val85, i64 2248
  %i.gv = call noundef nonnull align 8 ptr @_RNvMNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_configNtB2_12StaticConfig16request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(5032) %i.gu) #15
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 2
  %i.gx = load i8, ptr %i.gw, align 2, !range !8, !noundef !5
  store ptr %i.gk, ptr %i.n, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.gt, ptr %i.gy, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i8 %i.gx, ptr %i.gz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 2, ptr %i.gk, align 16
  store ptr %i.gk, ptr %i.m, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gk, i64 6272
  %i.hb = atomicrmw add ptr %i.ha, i8 1 monotonic, align 1 ; 0 uses
  %i.hc = atomicrmw add ptr %.sroa.22.0..sroa.5.0..sroa_idx.i.sroa_idx, i8 1 monotonic, align 1 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 2, ptr %i.a, align 1
  %i.hd = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.he = getelementptr inbounds nuw i8, ptr %i.gk, i64 6320
  call void @_RINvMs0_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB6_14ContainerStateNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ClientDetailsE8for_eachNCNvMs0_NtNtB1u_4port6serverINtB34_17SharedServerStateNtNtB1s_3ipc7ServiceE24force_update_connections0ECshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.he, ptr noundef nonnull align 16 %.sroa.5.0..sroa_idx.i, ptr noalias nofree noundef nonnull dereferenceable(2) %i.a) #15
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service3ipc7ServiceE30finish_update_connection_cycleCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 16 %.sroa.5.0..sroa_idx.i) #15
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE30finish_update_connection_cycleCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 16 %.sroa.24.0..sroa.5.0..sroa_idx.i.sroa_idx) #15
  %i.hf = load i8, ptr %i.a, align 1, !range !18, !noundef !5 ; 2 uses
  %i.hg = load i8, ptr %i.hd, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not77 = icmp eq i8 %i.hf, 2
  br i1 %.not77, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i8 %i.hf, ptr %i.l, align 1
  %i.hh = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.hg, ptr %i.hh, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.n, ptr %i.k, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXsb_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service3ipc7ServiceyuyuENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.458.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.l, ptr %i.j, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs2_NtNtCsg6ZEkMtNi4J_8iceoryx24port18update_connectionsNtB5_17ConnectionFailureNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.462.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 3, ptr noundef nonnull @1, ptr noundef nonnull %i.k, ptr noundef nonnull @35, ptr noundef nonnull %i.j) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !1213)
  call void @llvm.experimental.noalias.scope.decl(metadata !1214)
  call void @llvm.experimental.noalias.scope.decl(metadata !1215)
  %i.hi = load ptr, ptr %i.m, align 8, !alias.scope !1216, !nonnull !5, !noundef !5 ; 2 uses
  %i.hj = load i64, ptr %i.hi, align 8, !noalias !1216, !noundef !5
  %i.hk = add i64 %i.hj, -1                       ; 2 uses
  store i64 %i.hk, ptr %i.hi, align 8, !noalias !1216
  %i.hl = icmp eq i64 %i.hk, 0
  br i1 %i.hl, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit.sink.split, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit

bb.w:                                             ; preds = %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response.exit
  %i.hm = load i64, ptr %i.gk, align 16, !noalias !1217, !noundef !5
  %i.hn = add i64 %i.hm, -1                       ; 2 uses
  store i64 %i.hn, ptr %i.gk, align 16, !noalias !1217
  %i.ho = icmp eq i64 %i.hn, 0
  br i1 %i.ho, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit.sink.split, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit.sink.split: ; preds = %bb.w, %bb.v
  call void @_RNvMs6_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtBK_7service3ipc7ServiceEE9drop_slowCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #14
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit.sink.split, %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  fence syncscope("singlethread") seq_cst
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %.val99 = load ptr, ptr %i.ar, align 8, !nonnull !5, !noundef !5
  %i.hp = getelementptr inbounds nuw i8, ptr %.val99, i64 16
  %i.hq = call noundef nonnull align 8 ptr @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigEINtB7_14DynamicStorageB1r_E3getCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 8 %i.hp) #15
  %i.hr = call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig16request_response(ptr noundef nonnull align 8 %i.hq) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %.val94 = load ptr, ptr %i.ar, align 8, !nonnull !5, !noundef !5
  %i.hs = getelementptr inbounds nuw i8, ptr %.val94, i64 7280
  %.val104 = load ptr, ptr %i.hs, align 8, !nonnull !5, !noundef !5
  %i.ht = getelementptr inbounds nuw i8, ptr %.val104, i64 6312
  %i.hu = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hu, ptr noundef nonnull align 4 dereferenceable(16) %i.ht, i64 16, i1 false)
  %i.hv = load i64, ptr %i.bm, align 16, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 16 dereferenceable(16) %i.al, i64 16, i1 false)
  %i.hw = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 %i.cw, ptr %i.hw, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i64 %i.cd, ptr %i.hx, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i64 %i.hv, ptr %i.hy, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store i32 %..i, ptr %i.hz, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.h, i64 60
  store i8 %i.dx, ptr %i.ia, align 4
  call void @_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_responseNtB2_13DynamicConfig13add_server_id(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noundef nonnull align 8 %i.hr, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.h) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ib = load i64, ptr %i.i, align 8, !range !15, !noundef !5
  %i.ic = trunc nuw i64 %i.ib to i1
  br i1 %i.ic, label %bb.x, label %bb.z

bb.x:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit
  %.val80 = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.id = load i64, ptr %.val80, align 8, !noundef !5 ; 3 uses
  %i.ie = icmp ne i64 %i.id, 0
  call void @llvm.assume(i1 %i.ie)
  %i.if = icmp eq i64 %i.id, -1
  br i1 %i.if, label %bb.y, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit111, !prof !20

bb.y:                                             ; preds = %bb.x
  call void @llvm.trap()
  unreachable

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit111: ; preds = %bb.x
  %i.ig = getelementptr inbounds nuw i8, ptr %.val80, i64 6288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ig, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  store i64 %i.id, ptr %.val80, align 16, !noalias !1218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %bb.ab

bb.z:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.am, ptr %i.g, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.466.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.val84 = load ptr, ptr %i.ar, align 8, !nonnull !5, !noundef !5
  %i.ih = getelementptr inbounds nuw i8, ptr %.val84, i64 2248
  %i.ii = call noundef nonnull align 8 ptr @_RNvMNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_configNtB2_12StaticConfig16request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(5032) %i.ih) #15
  %i.ij = getelementptr i8, ptr %i.ii, i64 32
  %.val93 = load i64, ptr %i.ij, align 8, !noundef !5
  store i64 %.val93, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.an, ptr %i.e, align 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.470.0..sroa_idx, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.ik, align 8
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.474.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.g, ptr noundef nonnull @36, ptr noundef nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i8 0, ptr %0, align 8
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.il, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1219)
  call void @llvm.experimental.noalias.scope.decl(metadata !1220)
  call void @llvm.experimental.noalias.scope.decl(metadata !1221)
  call void @llvm.experimental.noalias.scope.decl(metadata !1222)
  %i.im = load ptr, ptr %i.n, align 8, !alias.scope !1223, !nonnull !5, !noundef !5 ; 2 uses
  %i.in = load i64, ptr %i.im, align 8, !noalias !1223, !noundef !5
  %i.io = add i64 %i.in, -1                       ; 2 uses
  store i64 %i.io, ptr %i.im, align 8, !noalias !1223
  %i.ip = icmp eq i64 %i.io, 0
  br i1 %i.ip, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  call void @_RNvMs6_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtBK_7service3ipc7ServiceEE9drop_slowCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #14
  br label %bb.ac

bb.ab:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit.a, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit111
  %.sink = phi ptr [ %3, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit.a ], [ %i.cc, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit111 ]
  call void @_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6server1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %.sink) #15
  ret void

2:                                                ; preds = %bb.m
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segment11DataSegmentNtNtNtB16_7service3ipc7ServiceENtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory23SharedMemoryCreateErrorEECshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef align 8 dereferenceable(2488) %i.x) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #16
  unreachable

bb.ac:                                            ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit.a

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit.a: ; preds = %bb.ae, %bb.ad, %bb.ac
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 160
  br label %bb.ab

bb.ad:                                            ; preds = %.thread, %bb.b
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.iq) #15
  %i.ir = load i128, ptr %1, align 16, !range !16, !alias.scope !1224, !noundef !5
  %i.is = icmp eq i128 %i.ir, 0
  br i1 %i.is, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit.a, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24port1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.it) #15
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit.a
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden range(i16 0, -252) i16 @_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service5local7ServiceyuyuE12has_requestsCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.d = load i64, ptr %.val, align 8, !noundef !5 ; 2 uses
  %i.e = icmp ne i64 %i.d, 0
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add i64 %i.d, 1                          ; 2 uses
  store i64 %i.f, ptr %.val, align 8
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service5local7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response.exit, !prof !20

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service5local7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %bb.a
  store ptr %.val, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.i = tail call fastcc { i8, i8 } @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_17SharedServerStateNtNtNtB9_7service5local7ServiceE18update_connectionsCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 16 %i.h) #15 ; 2 uses
  %i.j = extractvalue { i8, i8 } %i.i, 0          ; 2 uses
  %.not = icmp eq i8 %i.j, 2
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service5local7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response.exit
  %i.k = extractvalue { i8, i8 } %i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server6ServerNtNtNtBD_7service5local7ServiceyuyuENtB6_5Debug3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.49.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.a, ptr noundef nonnull @28, ptr noundef nonnull inttoptr (i64 191 to ptr)) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !1237)
  call void @llvm.experimental.noalias.scope.decl(metadata !1238)
  call void @llvm.experimental.noalias.scope.decl(metadata !1239)
  %i.l = load ptr, ptr %i.b, align 8, !alias.scope !1240, !nonnull !5, !noundef !5 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !noalias !1240, !noundef !5
  %i.n = add i64 %i.m, -1                         ; 2 uses
  store i64 %i.n, ptr %i.l, align 8, !noalias !1240
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.d, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit

bb.d:                                             ; preds = %bb.c
  call void @_RNvMs6_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtBK_7service5local7ServiceEE9drop_slowCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #14
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = zext nneg i8 %i.j to i16
  br label %bb.j

bb.e:                                             ; preds = %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service5local7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i8, ptr %i.q, align 8, !range !8, !noundef !5
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 3872 ; 2 uses
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = tail call noundef zeroext i1 @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service5local7ServiceE32has_samples_in_active_connectionCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 16 %i.t, i64 noundef 0) #15
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = tail call noundef zeroext i1 @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service5local7ServiceE11has_samplesCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 16 %i.t, i64 noundef 0) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.in = phi i1 [ %i.v, %bb.g ], [ %i.u, %bb.f ]
  %.sroa.4.0 = zext i1 %.sroa.4.0.in to i8
  %i.w = load i64, ptr %.val, align 8, !noalias !1241, !noundef !5
  %i.x = add i64 %i.w, -1                         ; 2 uses
  store i64 %i.x, ptr %.val, align 8, !noalias !1241
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.i, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit15

bb.i:                                             ; preds = %bb.h
  call void @_RNvMs6_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtBK_7service5local7ServiceEE9drop_slowCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #14
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit15

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit15: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.j:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit15, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit
  %.sroa.4.1 = phi i8 [ %i.k, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit ], [ %.sroa.4.0, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit15 ]
  %.sroa.0.1 = phi i16 [ %i.p, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit ], [ 2, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit15 ]
  %.sroa.4.0.insert.ext = zext i8 %.sroa.4.1 to i16
  %.sroa.4.0.insert.shift = shl nuw i16 %.sroa.4.0.insert.ext, 8
  %.sroa.0.0.insert.insert = or disjoint i16 %.sroa.4.0.insert.shift, %.sroa.0.1
  ret i16 %.sroa.0.0.insert.insert
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service5local7ServiceyuyuE3newCshJgtdScfPDc_26benchmark_request_response(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 16 captures(address) dead_on_return dereferenceable(240) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 6 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [64 x i8], align 8                ; 10 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [2 x i8], align 1                 ; 5 uses
  %i.m = alloca [8 x i8], align 8                 ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 11 uses
  %i.o = alloca [64 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.04 = alloca [64 x i8], align 16          ; 2 uses
  %.sroa.6 = alloca [48 x i8], align 16           ; 2 uses
  %.sroa.7 = alloca [24 x i8], align 16           ; 2 uses
  %.sroa.8 = alloca [24 x i8], align 8            ; 2 uses
  %i.q = alloca [2712 x i8], align 16             ; 5 uses
  %.sroa.10 = alloca [888 x i8], align 8          ; 2 uses
  %.sroa.23 = alloca [1284 x i8], align 4         ; 4 uses
  %.sroa.26 = alloca [88 x i8], align 8           ; 4 uses
  %.sroa.27 = alloca [24 x i8], align 16          ; 4 uses
  %i.r = alloca [64 x i8], align 16               ; 4 uses
  %i.s = alloca [48 x i8], align 16               ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [32 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 8 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [2712 x i8], align 8              ; 6 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [264 x i8], align 8              ; 7 uses
  %i.ab = alloca [32 x i8], align 8               ; 6 uses
  %.sroa.5 = alloca [32 x i8], align 8            ; 4 uses
  %i.ac = alloca [888 x i8], align 8              ; 4 uses
  %i.ad = alloca [32 x i8], align 8               ; 6 uses
  %i.ae = alloca [32 x i8], align 8               ; 4 uses
  %i.af = alloca [1280 x i8], align 16            ; 20 uses
  %i.ag = alloca [32 x i8], align 8               ; 7 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [1 x i8], align 1                ; 4 uses
  %i.aj = alloca [1072 x i8], align 8             ; 7 uses
  %i.ak = alloca [1072 x i8], align 8             ; 10 uses
  %i.al = alloca [16 x i8], align 16              ; 8 uses
  %i.am = alloca [16 x i8], align 8               ; 10 uses
  %i.an = alloca [16 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store ptr @30, ptr %i.an, align 8, !captures !9
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 28, ptr %i.ao, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store ptr @31, ptr %i.am, align 8, !captures !9
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 13, ptr %i.ap, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @_RNvMs15_NtCsg6ZEkMtNi4J_8iceoryx211identifiersNtB6_14UniqueServerId3new(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.al) #15
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !5, !align !6, !noundef !5 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %.val100 = load ptr, ptr %i.ar, align 8, !nonnull !5, !noundef !5
  %i.as = getelementptr inbounds nuw i8, ptr %.val100, i64 6144
  %.sroa.014.0.copyload = load i128, ptr %i.al, align 16 ; 4 uses
  call void @_RNvMsn_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB5_10SharedNodeNtNtNtB7_7service5local7ServiceE15create_port_tagCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([1072 x i8]) align 8 captures(address) dereferenceable(1072) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.as, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 28, i128 noundef %.sroa.014.0.copyload) #15
  %i.at = load ptr, ptr %i.aj, align 8, !noundef !5
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.aw = load i8, ptr %i.av, align 8, !range !26, !noundef !5
  store i8 %i.aw, ptr %i.ai, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store ptr %i.am, ptr %i.ah, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.418.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %i.an, ptr %i.ag, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.422.0..sroa_idx, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %i.ai, ptr %i.ax, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr @_RNvXs6_NtCs7gufeB8TUC6_12iceoryx2_cal14static_storageNtB5_24StaticStorageCreateErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.426.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.ah, ptr noundef nonnull @40, ptr noundef nonnull %i.ag) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  store i8 3, ptr %0, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.ay, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
end_hunk_4
begin_hunk_5_@_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service5local7ServiceyuyuE3newCshJgtdScfPDc_26benchmark_request_response:bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %.val88, i64 4296
  %i.bl = call noundef nonnull align 8 ptr @_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config17messaging_patternNtB4_16MessagingPattern16request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1848) %i.bk) #15 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 3 uses
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !5
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !1296, !noundef !5
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !1296, !noundef !5
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !1296, !noundef !5
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !1296, !noundef !5
  %i.bx = add i64 %i.bu, %i.bo
  %i.by = add i64 %i.bx, %i.bw
  %i.bz = shl i64 %i.bq, 1
  %i.ca = mul i64 %i.bz, %i.bs
  %i.cb = mul i64 %i.ca, %i.by
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.cd = call noundef i64 @_RNvMsf_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6serverINtB5_28PreallocatedResponseOverrideKj18_E4callCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.cc, i64 noundef %i.cb) #15 ; 5 uses
  %.val102 = load ptr, ptr %i.ar, align 8, !nonnull !5, !noundef !5
  %i.ce = getelementptr i8, ptr %.val102, i64 832
  %.val78 = load ptr, ptr %i.ce, align 8, !nonnull !5, !noundef !5
  %i.cf = getelementptr inbounds nuw i8, ptr %.val78, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8, !noundef !5
  %i.ch = call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig16request_response(ptr noundef nonnull align 8 %i.cg) #15 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 80
  %.val99 = load ptr, ptr %i.ar, align 8, !nonnull !5, !noundef !5
  %i.cj = getelementptr inbounds nuw i8, ptr %.val99, i64 6144
  %.val81 = load ptr, ptr %i.cj, align 8, !nonnull !5, !noundef !5
  %i.ck = getelementptr inbounds nuw i8, ptr %.val81, i64 256
  %i.cl = load i64, ptr %i.ck, align 8, !noundef !5 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 96 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !noundef !5 ; 2 uses
  %i.co = add i64 %i.cn, %i.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @_RINvMs5_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vecINtB6_14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionNtNtBa_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorE7from_fnNCNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB4X_6ServerNtNtNtB51_7service5local7ServiceyuyuE3new0ECshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @_RNvNvMs_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocatorNtB6_13HeapAllocator6global9ALLOCATOR, i64 noundef %i.cn) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !1297)
  call void @llvm.experimental.noalias.scope.decl(metadata !1298)
  %i.cp = load ptr, ptr %i.ad, align 8, !alias.scope !1298, !noalias !1299, !noundef !5
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.d, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit, !prof !20

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1300
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.cs = load i8, ptr %i.cr, align 8, !range !26, !alias.scope !1298, !noalias !1299, !noundef !5
  store i8 %i.cs, ptr %i.c, align 1, !noalias !1300
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 31, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #16, !noalias !1301
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ad, i64 32, i1 false), !alias.scope !1301, !noalias !1302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %.val105 = load ptr, ptr %i.ar, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ct = atomicrmw add ptr %.val105, i64 1 monotonic, align 8
  %i.cu = icmp slt i64 %i.ct, 0
  br i1 %i.cu, label %bb.e, label %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_5local7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit

bb.e:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.trap()
  unreachable

_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_5local7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtB4_6option6OptionNtNtBO_7slotmap10SlotMapKeyEENtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(888) %i.ac, ptr noundef nonnull align 8 dereferenceable(888) %i.cv, i64 888, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !noundef !5 ; 4 uses
  %i.cy = load i8, ptr %i.ba, align 8, !range !8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %i.da = load i8, ptr %i.cz, align 2, !range !8, !noundef !5
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_5local7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @_RNvMs5_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vecINtB5_14PolymorphicVecNtNtB9_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorE3newCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @_RNvNvMs_NtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocatorNtB6_13HeapAllocator6global9ALLOCATOR, i64 noundef %i.cl) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !1303)
  %i.dc = load ptr, ptr %i.ab, align 8, !alias.scope !1303, !noalias !1304, !noundef !5
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.g, label %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit, !prof !20

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1305
  %i.de = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.df = load i8, ptr %i.de, align 8, !range !26, !alias.scope !1303, !noalias !1304, !noundef !5
  store i8 %i.df, ptr %i.b, align 1, !noalias !1305
  call void @_RNvNtCs8Chj7Szqq0n_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 31, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #16, !noalias !1306
  unreachable

_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ab, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.h

bb.h:                                             ; preds = %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_5local7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit
  %.sroa.03.0 = phi i64 [ 1, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit ], [ 0, %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_5local7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit ]
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.dh, ptr noundef nonnull align 16 dereferenceable(48) %i.dg, i64 48, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %i.af, i64 120
  call void @_RNvMs3_NtCs5kzjBmDVxDj_21iceoryx2_bb_container7slotmapINtB5_11MetaSlotMapINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver10ConnectionNtNtNtB1i_7service5local7ServiceENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE3newCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %i.di, i64 noundef %i.co) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 32, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store i128 %.sroa.014.0.copyload, ptr %i.dj, align 16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.af, i64 328
  store ptr %.val105, ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  store i64 %i.cx, ptr %i.dl, align 16
  %i.dm = getelementptr inbounds nuw i8, ptr %i.af, i64 1264
  store i8 0, ptr %i.dm, align 16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.af, i64 1224
  store i64 %.sroa.03.0, ptr %i.dn, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 1232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, i64 32, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %i.af, i64 336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(888) %i.do, ptr noundef nonnull align 8 dereferenceable(888) %i.ac, i64 888, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.af, i64 104
  store i64 %i.cx, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.af, i64 1265
  store i8 %i.cy, ptr %i.dq, align 1
  %i.dr = getelementptr inbounds nuw i8, ptr %i.af, i64 112
  store i64 1, ptr %i.dr, align 16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.af, i64 320
  store i64 0, ptr %i.ds, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %.val98 = load ptr, ptr %i.ar, align 8, !nonnull !5, !noundef !5
  %i.dt = getelementptr inbounds nuw i8, ptr %.val98, i64 6144
  %.val80 = load ptr, ptr %i.dt, align 8, !nonnull !5, !noundef !5
  %i.du = getelementptr inbounds nuw i8, ptr %.val80, i64 16 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.dw = load i8, ptr %i.dv, align 16, !range !18, !noundef !5
  %i.dx = icmp eq i8 %i.dw, 2                     ; 2 uses
  %..i = zext i1 %i.dx to i32                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @_RNvNtNtCsg6ZEkMtNi4J_8iceoryx27service13naming_scheme17data_segment_name(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(none) dereferenceable(264) %i.aa, i128 noundef %.sroa.014.0.copyload) #15
  %i.dy = call noundef i8 @_RNvMs0_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_11DataSegmentNtNtNtBb_7service5local7ServiceE22max_number_of_segmentsCshJgtdScfPDc_26benchmark_request_response(i32 noundef %..i) #15 ; 5 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ba, i64 952
  %i.ea = load i64, ptr %i.bm, align 16, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !1307)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1240
  %i.ec = load i64, ptr %i.eb, align 8, !alias.scope !1307, !noundef !5 ; 6 uses
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %bb.i, label %_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit

bb.i:                                             ; preds = %bb.h
  call void @_RNvNtNtCs8Chj7Szqq0n_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #16, !noalias !1307
  unreachable

_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit: ; preds = %bb.h
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ba, i64 1232
  %i.ef = load i64, ptr %i.ee, align 8, !alias.scope !1307, !noundef !5
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ba, i64 1528
  %i.eh = load i64, ptr %i.eg, align 8, !alias.scope !1307, !noundef !5
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ba, i64 1536
  %i.ej = load i64, ptr %i.ei, align 8, !alias.scope !1307, !noundef !5
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ba, i64 1824
  %i.el = load i64, ptr %i.ek, align 8, !alias.scope !1307, !noundef !5
  %i.em = mul i64 %i.el, %i.ea
  %i.en = getelementptr inbounds nuw i8, ptr %i.ba, i64 1832
  %i.eo = load i64, ptr %i.en, align 8, !alias.scope !1307, !noundef !5
  %i.ep = add i64 %i.ef, -2
  %i.eq = add i64 %i.ep, %i.eh
  %i.er = add i64 %i.eq, %i.ej
  %i.es = add i64 %i.er, %i.em
  %i.et = add i64 %i.es, %i.eo                    ; 2 uses
  %i.eu = urem i64 %i.et, %i.ec                   ; 2 uses
  %i.ev = icmp eq i64 %i.eu, 0
  %i.ew = sub i64 %i.ec, %i.eu
  %i.ex = select i1 %i.ev, i64 0, i64 %i.ew
  %.sroa.0.0.i = add i64 %i.ex, %i.et             ; 2 uses
  %i.ey = icmp ult i64 %i.ec, -9223372036854775807
  call void @llvm.assume(i1 %i.ey)
  br i1 %i.dx, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit
  call void @_RNvMs0_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_11DataSegmentNtNtNtBb_7service5local7ServiceE21create_static_segmentCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([2712 x i8]) align 8 captures(none) dereferenceable(2712) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.aa, i64 noundef %i.ec, i64 noundef %.sroa.0.0.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4528) %i.du, i64 noundef %i.cd) #15
  br label %bb.l

bb.k:                                             ; preds = %_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit
  %i.ez = load i8, ptr %i.dv, align 16, !range !18, !noundef !5
  call void @_RNvMs0_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_11DataSegmentNtNtNtBb_7service5local7ServiceE22create_dynamic_segmentCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([2712 x i8]) align 8 captures(none) dereferenceable(2712) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.aa, i64 noundef %i.ec, i64 noundef %.sroa.0.0.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4528) %i.du, i64 noundef %i.cd, i8 noundef %i.ez) #15
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.0.0.copyload = load i64, ptr %i.q, align 16
  %.not = icmp eq i64 %.sroa.0.0.copyload, -2
  br i1 %.not, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segment11DataSegmentNtNtNtB16_7service5local7ServiceENtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory23SharedMemoryCreateErrorEECshJgtdScfPDc_26benchmark_request_response.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2712) %i.x, ptr noundef nonnull align 16 dereferenceable(2712) %i.q, i64 2712, i1 false)
  %i.fa = load i64, ptr %i.x, align 8, !range !19, !noundef !5
  %i.fb = icmp eq i64 %i.fa, -2
  br i1 %i.fb, label %2, label %bb.o, !prof !20

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segment11DataSegmentNtNtNtB16_7service5local7ServiceENtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory23SharedMemoryCreateErrorEECshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr %i.am, ptr %i.z, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.433.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %i.an, ptr %i.y, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.437.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.z, ptr noundef nonnull @39, ptr noundef nonnull %i.y) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  store i8 1, ptr %0, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.fc, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiver8ReceiverNtNtNtBK_7service5local7ServiceEECshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 16 dereferenceable(1280) %i.af) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @_RNvXs5_NtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_localNtB5_7StorageNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(1072) %i.ak) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !1308)
  call void @llvm.experimental.noalias.scope.decl(metadata !1309)
  %i.fd = load ptr, ptr %i.ak, align 8, !alias.scope !1310, !nonnull !5, !noundef !5
  %i.fe = atomicrmw sub ptr %i.fd, i64 1 release, align 8, !noalias !1311
  %i.ff = icmp eq i64 %i.fe, 1
  br i1 %i.ff, label %bb.n, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_local7StorageECshJgtdScfPDc_26benchmark_request_response.exit.thread

bb.n:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segment11DataSegmentNtNtNtB16_7service5local7ServiceENtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory23SharedMemoryCreateErrorEECshJgtdScfPDc_26benchmark_request_response.exit
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcNtNtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_local14StorageContentE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1072) %i.ak) #14
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_local7StorageECshJgtdScfPDc_26benchmark_request_response.exit.thread

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.fg = zext i8 %i.dy to i64                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.fg, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32) #15
  %i.fh = load i64, ptr %i.d, align 8, !range !15, !noundef !5
  %i.fi = trunc nuw i64 %i.fh to i1
  %i.fj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fk = load i64, ptr %i.fj, align 8, !range !27, !noundef !5 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.fi, label %bb.p, label %bb.q, !prof !20

bb.p:                                             ; preds = %bb.o
  %i.fm = load i64, ptr %i.fl, align 8
  call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.fk, i64 %i.fm) #17
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.fn = load ptr, ptr %i.fl, align 8, !nonnull !5, !noundef !5
  %i.fo = icmp samesign uge i64 %i.fk, %i.fg
  call void @llvm.assume(i1 %i.fo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.fk, ptr %i.v, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  store ptr %i.fn, ptr %i.fp, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  store i64 0, ptr %i.fq, align 8
  %.not127 = icmp eq i8 %i.dy, 0
  br i1 %.not127, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCshJgtdScfPDc_26benchmark_request_response.exit, %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.fr = load i64, ptr %i.cm, align 8, !noundef !5
  call void @_RNvXNtNtCsbqH9stoieM8_5alloc3vec14spec_from_iterINtB4_3VecINtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency4cell10UnsafeCellINtNtCs8Chj7Szqq0n_4core6option6OptionINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6sender10ConnectionNtNtNtB2E_7service5local7ServiceEEEEINtB2_12SpecFromIterBU_INtNtNtNtB1Y_4iter8adapters3map3MapINtNtNtB1Y_3ops5range5RangejENCNvMs5_NtB2C_6serverINtB5E_6ServerB3x_yuyuE3news_0EE9from_iterCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, i64 noundef 0, i64 noundef %i.fr) #15
  %.val97 = load ptr, ptr %i.ar, align 8, !nonnull !5, !noundef !5
  %i.fs = getelementptr inbounds nuw i8, ptr %.val97, i64 6144
  %.val79 = load ptr, ptr %i.fs, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ft = atomicrmw add ptr %.val79, i64 1 monotonic, align 8
  %i.fu = icmp slt i64 %i.ft, 0
  br i1 %i.fu, label %bb.r, label %_RNvXs1v_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB6_10SharedNodeNtNtNtB8_7service5local7ServiceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit

bb.r:                                             ; preds = %._crit_edge
  call void @llvm.trap()
  unreachable

_RNvXs1v_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB6_10SharedNodeNtNtNtB8_7service5local7ServiceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %._crit_edge
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.fw = load i64, ptr %i.fv, align 8, !noundef !5
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %i.fy = load i64, ptr %i.fx, align 8, !noundef !5
  %i.fz = load i64, ptr %i.bn, align 8, !noundef !5
  %i.ga = mul i64 %i.fz, %i.cx
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.gc = load i64, ptr %i.gb, align 8, !noundef !5
  %i.gd = mul i64 %i.ga, %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.gf = load i8, ptr %i.ge, align 1, !range !8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.s, ptr noundef nonnull align 16 dereferenceable(48) %i.gg, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.r, ptr noundef nonnull align 16 dereferenceable(64) %1, i64 64, i1 false)
  %.val104 = load ptr, ptr %i.ar, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.gh = atomicrmw add ptr %.val104, i64 1 monotonic, align 8
  %i.gi = icmp slt i64 %i.gh, 0
  br i1 %i.gi, label %bb.s, label %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_5local7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit109

bb.s:                                             ; preds = %_RNvXs1v_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB6_10SharedNodeNtNtNtB8_7service5local7ServiceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.trap()
  unreachable

_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_5local7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit109: ; preds = %_RNvXs1v_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB6_10SharedNodeNtNtNtB8_7service5local7ServiceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 225
  %i.gk = load i8, ptr %i.gj, align 1, !range !8, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(888) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(888) %i.dz, i64 888, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.6, ptr noundef nonnull align 16 dereferenceable(48) %i.s, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.04, ptr noundef nonnull align 16 dereferenceable(64) %i.r, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.23)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.26)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.27)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 16 dereferenceable(24) %i.bm, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvMs4_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB5_9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ClientDetailsE9get_stateCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.o, ptr noundef nonnull align 8 %i.ci) #15
  %.val103 = load ptr, ptr %i.ar, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.gl = atomicrmw add ptr %.val103, i64 1 monotonic, align 8
  %i.gm = icmp slt i64 %i.gl, 0
  br i1 %i.gm, label %bb.t, label %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_5local7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit110

bb.t:                                             ; preds = %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_5local7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit109
  call void @llvm.trap()
  unreachable

_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_5local7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit110: ; preds = %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_5local7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.27, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  %.sroa.23.3856..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.23, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1280) %.sroa.23.3856..sroa_idx, ptr noundef nonnull align 16 dereferenceable(1280) %i.af, i64 1280, i1 false)
  %.sroa.26.6240..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.26, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.26.6240..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %i.o, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !1312
  %i.gn = call noundef align 16 dereferenceable_or_null(6352) ptr @_RNvCsicpYtSlSgpD_7___rustc12___rust_alloc(i64 noundef range(i64 24, 7289) 6352, i64 noundef range(i64 8, 17) 16) #15, !noalias !1312 ; 36 uses
  %i.go = icmp eq ptr %i.gn, null
  br i1 %i.go, label %bb.u, label %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service5local7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response.exit, !prof !20

bb.u:                                             ; preds = %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_5local7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit110
  call void @_RNvNtCsbqH9stoieM8_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 6352) #17, !noalias !1312
  unreachable

.lr.ph:                                           ; preds = %bb.q, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCshJgtdScfPDc_26benchmark_request_response.exit
  %.sroa.075.0126 = phi i8 [ %i.gp, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCshJgtdScfPDc_26benchmark_request_response.exit ], [ 0, %bb.q ]
  %i.gp = add nuw i8 %.sroa.075.0126, 1           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_stateNtB2_12SegmentState3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.u, i64 noundef %i.cd) #15
  %i.gq = load i64, ptr %i.fq, align 8, !alias.scope !1313, !noalias !1314, !noundef !5 ; 3 uses
  %i.gr = load i64, ptr %i.v, align 8, !range !28, !alias.scope !1313, !noalias !1314, !noundef !5
  %i.gs = icmp eq i64 %i.gq, %i.gr
  br i1 %i.gs, label %bb.v, label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCshJgtdScfPDc_26benchmark_request_response.exit

bb.v:                                             ; preds = %.lr.ph
  call void @_RNvMs4_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8grow_oneCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v) #14, !noalias !1314
  br label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCshJgtdScfPDc_26benchmark_request_response.exit

_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details13segment_state12SegmentStateE8push_mutCshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %.lr.ph, %bb.v
  %i.gt = load ptr, ptr %i.fp, align 8, !alias.scope !1313, !noalias !1314, !nonnull !5, !noundef !5
  %i.gu = getelementptr inbounds nuw [32 x i8], ptr %i.gt, i64 %i.gq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gu, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.u, i64 32, i1 false)
  %i.gv = add i64 %i.gq, 1
  store i64 %i.gv, ptr %i.fq, align 8, !alias.scope !1313, !noalias !1314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %exitcond.not = icmp eq i8 %i.gp, %i.dy
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service5local7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %_RNvXs3_NtCsg6ZEkMtNi4J_8iceoryx27serviceINtB5_18SharedServiceStateNtNtB5_5local7ServiceNtB5_10NoResourceENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCshJgtdScfPDc_26benchmark_request_response.exit110
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1315
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.04, i64 64, i1 false)
  %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 80
  store i128 %.sroa.014.0.copyload, ptr %.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1316
  %.sroa.5118.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.5118.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.6, i64 48, i1 false)
  %.sroa.6119.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.6119.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.7, i64 24, i1 false)
  %.sroa.7120.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7120.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, i64 24, i1 false)
  %.sroa.8121.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(2712) %.sroa.8121.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 16 dereferenceable(2712) %i.q, i64 2712, i1 false)
  %.sroa.9122.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 2904
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(888) %.sroa.9122.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(888) %.sroa.10, i64 888, i1 false)
  %.sroa.10123.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 3792
  store ptr %.val79, ptr %.sroa.10123.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1316
  %.sroa.11.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 3800
  store ptr %.val104, ptr %.sroa.11.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8, !noalias !1316
  %.sroa.12.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 3808
  store i64 %i.fw, ptr %.sroa.12.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1316
  %.sroa.13.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 3816
end_hunk_5
begin_hunk_6_@_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service5local7ServiceyuyuE3newCshJgtdScfPDc_26benchmark_request_response:bb.a
  %.sroa.18.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 3856
  store i64 -1, ptr %.sroa.18.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1316
  %.sroa.19.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 3864
  store i8 %i.gf, ptr %.sroa.19.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8, !noalias !1316
  %.sroa.20.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 3865
  store i8 %i.gk, ptr %.sroa.20.0..sroa.5.0..sroa_idx.i.sroa_idx, align 1, !noalias !1316
  %.sroa.21.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 3866
  store i8 %i.dy, ptr %.sroa.21.0..sroa.5.0..sroa_idx.i.sroa_idx, align 2, !noalias !1316
  %.sroa.22.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 3867 ; 2 uses
  store i8 0, ptr %.sroa.22.0..sroa.5.0..sroa_idx.i.sroa_idx, align 1, !noalias !1316
  %.sroa.23.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 3868
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1284) %.sroa.23.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 4 dereferenceable(1284) %.sroa.23, i64 1284, i1 false), !noalias !1316
  %.sroa.24.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 5152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1072) %.sroa.24.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(1072) %i.ak, i64 1072, i1 false)
  %.sroa.25.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 6224
  store i64 0, ptr %.sroa.25.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1316
  %.sroa.26.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 6232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.26.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.26, i64 88, i1 false), !noalias !1316
  %.sroa.27.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 6320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.27.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.27, i64 24, i1 false), !noalias !1316
  %.sroa.28.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 6344
  store ptr %.val103, ptr %.sroa.28.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8, !noalias !1316
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.26)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.27)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.gw = load i64, ptr %i.bn, align 8, !noundef !5
  %.val87 = load ptr, ptr %i.ar, align 8, !nonnull !5, !noundef !5
  %i.gx = getelementptr inbounds nuw i8, ptr %.val87, i64 1112
  %i.gy = call noundef nonnull align 8 ptr @_RNvMNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_configNtB2_12StaticConfig16request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(5032) %i.gx) #15
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 2
  %i.ha = load i8, ptr %i.gz, align 2, !range !8, !noundef !5
  store ptr %i.gn, ptr %i.n, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.gw, ptr %i.hb, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i8 %i.ha, ptr %i.hc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 2, ptr %i.gn, align 16
  store ptr %i.gn, ptr %i.m, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gn, i64 3872
  %i.he = getelementptr inbounds nuw i8, ptr %i.gn, i64 5136
  %i.hf = atomicrmw add ptr %i.he, i8 1 monotonic, align 1 ; 0 uses
  %i.hg = atomicrmw add ptr %.sroa.22.0..sroa.5.0..sroa_idx.i.sroa_idx, i8 1 monotonic, align 1 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 2, ptr %i.a, align 1
  %i.hh = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gn, i64 6256
  call void @_RINvMs0_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB6_14ContainerStateNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ClientDetailsE8for_eachNCNvMs0_NtNtB1u_4port6serverINtB34_17SharedServerStateNtNtB1s_5local7ServiceE24force_update_connections0ECshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.hi, ptr noundef nonnull align 16 %.sroa.5.0..sroa_idx.i, ptr noalias nofree noundef nonnull dereferenceable(2) %i.a) #15
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service5local7ServiceE30finish_update_connection_cycleCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 16 %.sroa.5.0..sroa_idx.i) #15
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service5local7ServiceE30finish_update_connection_cycleCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 16 %i.hd) #15
  %i.hj = load i8, ptr %i.a, align 1, !range !18, !noundef !5 ; 2 uses
  %i.hk = load i8, ptr %i.hh, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not77 = icmp eq i8 %i.hj, 2
  br i1 %.not77, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service5local7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i8 %i.hj, ptr %i.l, align 1
  %i.hl = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.hk, ptr %i.hl, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.n, ptr %i.k, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXsb_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service5local7ServiceyuyuENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.458.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.l, ptr %i.j, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs2_NtNtCsg6ZEkMtNi4J_8iceoryx24port18update_connectionsNtB5_17ConnectionFailureNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.462.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 3, ptr noundef nonnull @1, ptr noundef nonnull %i.k, ptr noundef nonnull @35, ptr noundef nonnull %i.j) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  call void @llvm.experimental.noalias.scope.decl(metadata !1319)
  %i.hm = load ptr, ptr %i.m, align 8, !alias.scope !1320, !nonnull !5, !noundef !5 ; 2 uses
  %i.hn = load i64, ptr %i.hm, align 8, !noalias !1320, !noundef !5
  %i.ho = add i64 %i.hn, -1                       ; 2 uses
  store i64 %i.ho, ptr %i.hm, align 8, !noalias !1320
  %i.hp = icmp eq i64 %i.ho, 0
  br i1 %i.hp, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit.sink.split, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit

bb.x:                                             ; preds = %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service5local7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response.exit
  %i.hq = load i64, ptr %i.gn, align 16, !noalias !1321, !noundef !5
  %i.hr = add i64 %i.hq, -1                       ; 2 uses
  store i64 %i.hr, ptr %i.gn, align 16, !noalias !1321
  %i.hs = icmp eq i64 %i.hr, 0
  br i1 %i.hs, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit.sink.split, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit.sink.split: ; preds = %bb.x, %bb.w
  call void @_RNvMs6_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtBK_7service5local7ServiceEE9drop_slowCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #14
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit.sink.split, %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  fence syncscope("singlethread") seq_cst
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %.val101 = load ptr, ptr %i.ar, align 8, !nonnull !5, !noundef !5
  %i.ht = getelementptr i8, ptr %.val101, i64 832
  %.val = load ptr, ptr %i.ht, align 8, !nonnull !5, !noundef !5
  %i.hu = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.hv = load ptr, ptr %i.hu, align 8, !noundef !5
  %i.hw = call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig16request_response(ptr noundef nonnull align 8 %i.hv) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %.val96 = load ptr, ptr %i.ar, align 8, !nonnull !5, !noundef !5
  %i.hx = getelementptr inbounds nuw i8, ptr %.val96, i64 6144
  %.val106 = load ptr, ptr %i.hx, align 8, !nonnull !5, !noundef !5
  %i.hy = getelementptr inbounds nuw i8, ptr %.val106, i64 6024
  %i.hz = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hz, ptr noundef nonnull align 4 dereferenceable(16) %i.hy, i64 16, i1 false)
  %i.ia = load i64, ptr %i.bm, align 16, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 16 dereferenceable(16) %i.al, i64 16, i1 false)
  %i.ib = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 %i.cx, ptr %i.ib, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i64 %i.cd, ptr %i.ic, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i64 %i.ia, ptr %i.id, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store i32 %..i, ptr %i.ie, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.h, i64 60
  store i8 %i.dy, ptr %i.if, align 4
  call void @_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_responseNtB2_13DynamicConfig13add_server_id(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noundef nonnull align 8 %i.hw, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.h) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ig = load i64, ptr %i.i, align 8, !range !15, !noundef !5
  %i.ih = trunc nuw i64 %i.ig to i1
  br i1 %i.ih, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit
  %.val82 = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.ii = load i64, ptr %.val82, align 8, !noundef !5 ; 3 uses
  %i.ij = icmp ne i64 %i.ii, 0
  call void @llvm.assume(i1 %i.ij)
  %i.ik = icmp eq i64 %i.ii, -1
  br i1 %i.ik, label %bb.z, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit113, !prof !20

bb.z:                                             ; preds = %bb.y
  call void @llvm.trap()
  unreachable

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit113: ; preds = %bb.y
  %i.il = getelementptr inbounds nuw i8, ptr %.val82, i64 6224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.il, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  store i64 %i.ii, ptr %.val82, align 16, !noalias !1322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %bb.ac

bb.aa:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.am, ptr %i.g, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.466.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.val86 = load ptr, ptr %i.ar, align 8, !nonnull !5, !noundef !5
  %i.im = getelementptr inbounds nuw i8, ptr %.val86, i64 1112
  %i.in = call noundef nonnull align 8 ptr @_RNvMNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_configNtB2_12StaticConfig16request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(5032) %i.im) #15
  %i.io = getelementptr i8, ptr %i.in, i64 32
  %.val95 = load i64, ptr %i.io, align 8, !noundef !5
  store i64 %.val95, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.an, ptr %i.e, align 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.470.0..sroa_idx, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.ip, align 8
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.474.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.g, ptr noundef nonnull @36, ptr noundef nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i8 0, ptr %0, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 2, ptr %i.iq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1323)
  call void @llvm.experimental.noalias.scope.decl(metadata !1324)
  call void @llvm.experimental.noalias.scope.decl(metadata !1325)
  call void @llvm.experimental.noalias.scope.decl(metadata !1326)
  %i.ir = load ptr, ptr %i.n, align 8, !alias.scope !1327, !nonnull !5, !noundef !5 ; 2 uses
  %i.is = load i64, ptr %i.ir, align 8, !noalias !1327, !noundef !5
  %i.it = add i64 %i.is, -1                       ; 2 uses
  store i64 %i.it, ptr %i.ir, align 8, !noalias !1327
  %i.iu = icmp eq i64 %i.it, 0
  br i1 %i.iu, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvMs6_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtBK_7service5local7ServiceEE9drop_slowCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #14
  br label %bb.ad

bb.ac:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit.a, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit113
  %.sink = phi ptr [ %3, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit.a ], [ %i.cc, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit113 ]
  call void @_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6server1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %.sink) #15
  ret void

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_local7StorageECshJgtdScfPDc_26benchmark_request_response.exit.thread: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segment11DataSegmentNtNtNtB16_7service5local7ServiceENtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory23SharedMemoryCreateErrorEECshJgtdScfPDc_26benchmark_request_response.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %bb.ae

2:                                                ; preds = %bb.m
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segment11DataSegmentNtNtNtB16_7service5local7ServiceENtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory23SharedMemoryCreateErrorEECshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef align 8 dereferenceable(2712) %i.x) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #16
  unreachable

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit.a

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit.a: ; preds = %bb.af, %bb.ae, %bb.ad
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 160
  br label %bb.ac

bb.ae:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtNtCs7gufeB8TUC6_12iceoryx2_cal14static_storage13process_local7StorageECshJgtdScfPDc_26benchmark_request_response.exit.thread, %bb.b
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.iv) #15
  %i.iw = load i128, ptr %1, align 16, !range !16, !alias.scope !1328, !noundef !5
  %i.ix = icmp eq i128 %i.iw, 0
  br i1 %i.ix, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit.a, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24port1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.iy) #15
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit.a
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceyuyuE7receiveCshJgtdScfPDc_26benchmark_request_response(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 16 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 11 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %i.e = alloca [112 x i8], align 16              ; 17 uses
  %i.f = alloca [8 x i8], align 8                 ; 9 uses
  %.sroa.5.sroa.0 = alloca [30 x i8], align 2     ; 3 uses
  %i.g = alloca [80 x i8], align 16               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %1, ptr %i.d, align 8, !noalias !1360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1360
  %i.h = tail call noundef nonnull align 16 ptr @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #15, !noalias !1361
  store ptr %i.h, ptr %i.c, align 8, !noalias !1360
  %i.i = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c) #15, !noalias !1361
  %i.j = call fastcc { i8, i8 } @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_17SharedServerStateNtNtNtB9_7service14ipc_threadsafe7ServiceE18update_connectionsCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 16 %i.i) #15, !noalias !1361 ; 2 uses
  %i.k = extractvalue { i8, i8 } %i.j, 0          ; 2 uses
  %.not.i94 = icmp eq i8 %i.k, 2
  br i1 %.not.i94, label %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit.lr.ph, label %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit.thread

_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit.lr.ph: ; preds = %bb.a
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 17
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 18
  %.sroa.615.sroa.4.0..sroa.615.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.615.sroa.5.0..sroa.615.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %.sroa.615.sroa.6.0..sroa.615.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %.val18 = load ptr, ptr %1, align 8             ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val19 = load i64, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load i8, ptr %i.t, align 8, !range !8
  %i.v = trunc nuw i8 %i.u to i1                  ; 2 uses
  br label %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit

_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit.thread: ; preds = %.backedge, %bb.a
  %.lcssa67 = phi { i8, i8 } [ %i.j, %bb.a ], [ %i.bn, %.backedge ]
  %.lcssa = phi i8 [ %i.k, %bb.a ], [ %i.bo, %.backedge ] ; 2 uses
  %i.w = extractvalue { i8, i8 } %.lcssa67, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1362
  store ptr %i.d, ptr %i.b, align 8, !noalias !1362
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server6ServerNtNtNtBD_7service14ipc_threadsafe7ServiceyuyuENtB6_5Debug3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !1362
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.b, ptr noundef nonnull @29, ptr noundef nonnull inttoptr (i64 199 to ptr)) #15, !noalias !1363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1362
  %i.x = icmp ult i8 %.lcssa, 2
  call void @llvm.assume(i1 %i.x)
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB19_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #15, !noalias !1363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.loopexit59

_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit.lr.ph, %.backedge
  %i.y = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c) #15, !noalias !1363
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4992
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service14ipc_threadsafe7ServiceE7receiveCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.g, ptr noundef nonnull align 16 %i.z, i64 noundef 0) #15
  %.pr = load i128, ptr %i.g, align 16            ; 2 uses
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB19_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #15, !noalias !1363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.aa = icmp eq i128 %.pr, 2
  %.pre = load i8, ptr %.sroa.413.0..sroa_idx, align 16 ; 3 uses
  %.pre125 = load i8, ptr %.sroa.514.0..sroa_idx, align 1 ; 3 uses
  br i1 %i.aa, label %.loopexit59, label %bb.b

.loopexit59:                                      ; preds = %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit, %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit.thread
  %i.ab = phi i8 [ %i.w, %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit.thread ], [ %.pre125, %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit ]
  %i.ac = phi i8 [ %.lcssa, %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit.thread ], [ %.pre, %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ac, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.ab, ptr %i.ae, align 2
  store i8 1, ptr %0, align 16
  br label %bb.h

bb.b:                                             ; preds = %_RNvMs5_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceyuyuE12receive_implCshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5.sroa.0, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.615.0..sroa_idx, i64 30, i1 false)
  %.sroa.615.sroa.4.0.copyload = load ptr, ptr %.sroa.615.sroa.4.0..sroa.615.0..sroa_idx.sroa_idx, align 16 ; 5 uses
  %.sroa.615.sroa.5.0.copyload = load ptr, ptr %.sroa.615.sroa.5.0..sroa.615.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.615.sroa.6.0.copyload = load ptr, ptr %.sroa.615.sroa.6.0..sroa.615.0..sroa_idx.sroa_idx, align 16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.af = trunc i128 %.pr to i1
  br i1 %i.af, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ag = call noundef nonnull align 16 ptr @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) #15
  store ptr %i.ag, ptr %i.f, align 8
  %i.ah = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f) #15 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.615.sroa.4.0.copyload, i64 16
  %.val = load i128, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 2656
  %i.ak = load i64, ptr %i.aj, align 16, !noundef !5 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 7896722634293473
  call void @llvm.assume(i1 %i.al)
  %.not9.i = icmp eq i64 %i.ak, 0
  br i1 %.not9.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 2648
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !5, !noundef !5
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i
  %.sroa.02.04.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ao, %bb.f ] ; 4 uses
  %i.ao = add nuw nsw i64 %.sroa.02.04.i, 1       ; 2 uses
  %i.ap = getelementptr inbounds nuw [1168 x i8], ptr %i.an, i64 %.sroa.02.04.i ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 16, !range !21, !noundef !5
  %.not.i20 = icmp eq i64 %i.aq, 2
  br i1 %.not.i20, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 1136
  %i.as = load i128, ptr %i.ar, align 16, !noundef !5
  %i.at = icmp eq i128 %i.as, %.val
  br i1 %i.at, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %exitcond.not.i = icmp eq i64 %i.ao, %i.ak
  br i1 %exitcond.not.i, label %.loopexit, label %bb.d

bb.g:                                             ; preds = %bb.b
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr null, ptr %.sroa.3.0..sroa_idx, align 16
  store i8 0, ptr %0, align 16
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceyuyuE21create_active_requestCshJgtdScfPDc_26benchmark_request_response.exit29, %bb.g, %.loopexit59
  ret void

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !1364)
  call void @llvm.experimental.noalias.scope.decl(metadata !1365)
  call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !1366
  %i.au = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsicpYtSlSgpD_7___rustc12___rust_alloc(i64 noundef range(i64 24, 7289) 24, i64 noundef range(i64 8, 17) 8) #15, !noalias !1366 ; 5 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.j, label %_RNvNtCsbqH9stoieM8_5alloc5boxed14box_new_uninit.exit.i, !prof !20

bb.j:                                             ; preds = %bb.i
  call void @_RNvNtCsbqH9stoieM8_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #17, !noalias !1366
  unreachable

_RNvNtCsbqH9stoieM8_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.i
  store i64 1, ptr %i.au, align 8, !noalias !1367
  %.sroa.4.0..sroa_idx1.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx1.i, align 8, !noalias !1367
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx2.i, align 8, !noalias !1367
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.615.sroa.4.0.copyload, i64 32
  %i.ax = load <2 x i64>, ptr %i.aw, align 8, !noalias !1367
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val18) ]
  %i.ay = atomicrmw add ptr %.val18, i64 1 monotonic, align 8, !noalias !1367
  %i.az = icmp slt i64 %i.ay, 0
  br i1 %i.az, label %bb.k, label %_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceyuyuE21create_active_requestCshJgtdScfPDc_26benchmark_request_response.exit

bb.k:                                             ; preds = %_RNvNtCsbqH9stoieM8_5alloc5boxed14box_new_uninit.exit.i
  call void @llvm.trap()
  unreachable

_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceyuyuE21create_active_requestCshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %_RNvNtCsbqH9stoieM8_5alloc5boxed14box_new_uninit.exit.i
  store ptr %.sroa.615.sroa.4.0.copyload, ptr %i.m, align 16, !alias.scope !1364, !noalias !1368
  store ptr %.sroa.615.sroa.5.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1364, !noalias !1368
  store ptr %.sroa.615.sroa.6.0.copyload, ptr %.sroa.5.0..sroa_idx.i, align 16, !alias.scope !1364, !noalias !1368
  store ptr %.val18, ptr %i.n, align 8, !alias.scope !1364, !noalias !1368
  store ptr %i.au, ptr %i.o, align 16, !alias.scope !1364, !noalias !1368
  store i64 %.val19, ptr %i.p, align 8, !alias.scope !1364, !noalias !1368
  store i8 %.pre, ptr %i.e, align 16, !alias.scope !1369, !noalias !1370
  store i8 %.pre125, ptr %.sroa.7.0..sroa_idx, align 1, !alias.scope !1369, !noalias !1370
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5.sroa.0, i64 30, i1 false)
  %i.ba = shufflevector <2 x i64> %i.ax, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.ba, ptr %i.q, align 16, !alias.scope !1364, !noalias !1368
  store i64 %.sroa.02.04.i, ptr %i.s, align 16, !alias.scope !1364, !noalias !1368
  br i1 %i.v, label %bb.l, label %_RNvMs3_NtCsg6ZEkMtNi4J_8iceoryx214active_requestINtB5_13ActiveRequestNtNtNtB7_7service14ipc_threadsafe7ServiceyuyuE12is_connectedCshJgtdScfPDc_26benchmark_request_response.exit

.loopexit:                                        ; preds = %bb.f, %bb.c
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6server17SharedServerStateNtNtNtB19_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %i.v, label %bb.p, label %.backedge

_RNvMs3_NtCsg6ZEkMtNi4J_8iceoryx214active_requestINtB5_13ActiveRequestNtNtNtB7_7service14ipc_threadsafe7ServiceyuyuE12is_connectedCshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %_RNvMs6_NtNtCsg6ZEkMtNi4J_8iceoryx24port6serverINtB5_6ServerNtNtNtB9_7service14ipc_threadsafe7ServiceyuyuE21create_active_requestCshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1371)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1371
end_hunk_6
begin_hunk_7_@_RNvMs9_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_6ClientNtNtNtB9_7service14ipc_threadsafe7ServiceyuyuE3newCshJgtdScfPDc_26benchmark_request_response:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(888) %.sroa.1314.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(888) %.sroa.1314, i64 888, i1 false)
  %.sroa.1415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 6216
  store i64 1, ptr %.sroa.1415.0..sroa_idx, align 8
  %.sroa.1415.sroa.5.0..sroa.1415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 6224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.1415.sroa.5.0..sroa.1415.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1415.sroa.5, i64 32, i1 false)
  %.sroa.1516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 6256
  store i8 0, ptr %.sroa.1516.0..sroa_idx, align 16
  %.sroa.1617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 6257
  store i8 %i.fj, ptr %.sroa.1617.0..sroa_idx, align 1
  %i.fx = getelementptr inbounds nuw i8, ptr %i.u, i64 6288
  store i64 0, ptr %i.fx, align 16
  %i.fy = getelementptr inbounds nuw i8, ptr %i.u, i64 6384
  store i64 0, ptr %i.fy, align 16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.u, i64 6392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fz, ptr noundef nonnull align 8 dereferenceable(56) %i.s, i64 56, i1 false)
  %i.ga = getelementptr inbounds nuw i8, ptr %i.u, i64 3632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1360) %i.ga, ptr noundef nonnull align 8 dereferenceable(1360) %i.ap, i64 1360, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E3newCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.v, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(6448) %i.u) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.gb = load i8, ptr %i.v, align 8, !range !8, !noundef !5
  %i.gc = trunc nuw i8 %i.gb to i1
  br i1 %i.gc, label %bb.r, label %bb.s

.lr.ph133:                                        ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit, %.lr.ph133
  %.sroa.065.0132 = phi i64 [ %i.gd, %.lr.ph133 ], [ 0, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit ] ; 2 uses
  %i.gd = add nuw i64 %.sroa.065.0132, 1          ; 2 uses
  %i.ge = call noundef zeroext i1 @_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueueNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection9ChannelIdNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE9push_implCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.r, i64 noundef %.sroa.065.0132) #15 ; 0 uses
  %exitcond137.not = icmp eq i64 %i.gd, %i.bq
  br i1 %exitcond137.not, label %._crit_edge134, label %.lr.ph133

bb.r:                                             ; preds = %._crit_edge134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.gf = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.gg = load i8, ptr %i.gf, align 1, !range !8, !noundef !5
  store i8 %i.gg, ptr %i.q, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.ar, ptr %i.p, align 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.470.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.as, ptr %i.o, align 8
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.475.0..sroa_idx, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.q, ptr %i.gh, align 8
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr @_RNvXs0_NtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policyNtB5_26ArcSyncPolicyCreationErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.479.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.p, ptr noundef nonnull @37, ptr noundef nonnull %i.o) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.gi, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.y

bb.s:                                             ; preds = %._crit_edge134
  %i.gj = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.gl = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gl, ptr noundef nonnull align 16 dereferenceable(16) %i.aq, i64 16, i1 false)
  store ptr %i.gk, ptr %i.n, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 0, ptr %i.gm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.gn = call noundef nonnull align 16 ptr @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n) #15
  store ptr %i.gn, ptr %i.m, align 8
  %i.go = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m) #15 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 2, ptr %i.a, align 1
  %i.gp = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 3627
  %i.gr = atomicrmw add ptr %i.gq, i8 1 monotonic, align 1 ; 0 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 4992
  %i.gt = getelementptr inbounds nuw i8, ptr %i.go, i64 6256
  %i.gu = atomicrmw add ptr %i.gt, i8 1 monotonic, align 1 ; 0 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.go, i64 6320
  call void @_RINvMs0_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB6_14ContainerStateNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ServerDetailsE8for_eachNCNvMs5_NtNtB1u_4port6clientINtB34_17ClientSharedStateNtNtB1s_14ipc_threadsafe7ServiceE24force_update_connections0ECshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.gv, ptr noundef nonnull align 16 %i.go, ptr noalias nofree noundef nonnull dereferenceable(2) %i.a) #15
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service14ipc_threadsafe7ServiceE30finish_update_connection_cycleCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 16 %i.gs) #15
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service14ipc_threadsafe7ServiceE30finish_update_connection_cycleCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 16 %i.go) #15
  %i.gw = load i8, ptr %i.a, align 1, !range !18, !noundef !5 ; 2 uses
  %i.gx = load i8, ptr %i.gp, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not104 = icmp eq i8 %i.gw, 2
  br i1 %.not104, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i8 %i.gw, ptr %i.l, align 1
  %i.gy = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.gx, ptr %i.gy, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.n, ptr %i.k, align 8
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXsp_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_6ClientNtNtNtB9_7service14ipc_threadsafe7ServiceyuyuENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.483.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.l, ptr %i.j, align 8
  %.sroa.487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs2_NtNtCsg6ZEkMtNi4J_8iceoryx24port18update_connectionsNtB5_17ConnectionFailureNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.487.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 3, ptr noundef nonnull @1, ptr noundef nonnull %i.k, ptr noundef nonnull @47, ptr noundef nonnull %i.j) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB19_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  fence syncscope("singlethread") seq_cst
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %.val116 = load ptr, ptr %i.aw, align 8, !nonnull !5, !noundef !5
  %i.gz = getelementptr inbounds nuw i8, ptr %.val116, i64 16
  %i.ha = call noundef nonnull align 8 ptr @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigEINtB7_14DynamicStorageB1r_E3getCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 8 %i.gz) #15
  %i.hb = call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig16request_response(ptr noundef nonnull align 8 %i.ha) #15
  call void @_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_responseNtB2_13DynamicConfig13add_client_id(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noundef nonnull align 8 %i.hb, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.ag) #15
  %i.hc = load i64, ptr %i.i, align 8, !range !15, !noundef !5
  %i.hd = trunc nuw i64 %i.hc to i1
  br i1 %i.hd, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.he = call noundef nonnull align 16 ptr @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n) #15
  store ptr %i.he, ptr %i.e, align 8
  %i.hf = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e) #15
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 6288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.hg, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB19_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.bp) #15
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.ar, ptr %i.h, align 8
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.491.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %.val107 = load ptr, ptr %i.aw, align 8, !nonnull !5, !noundef !5
  %i.hh = getelementptr inbounds nuw i8, ptr %.val107, i64 2248
  %i.hi = call noundef nonnull align 8 ptr @_RNvMNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_configNtB2_12StaticConfig16request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(5032) %i.hh) #15
  %i.hj = getelementptr i8, ptr %i.hi, i64 40
  %.val124 = load i64, ptr %i.hj, align 8, !noundef !5
  store i64 %.val124, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.as, ptr %i.f, align 8
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.495.0..sroa_idx, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.g, ptr %i.hk, align 8
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.499.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.h, ptr noundef nonnull @48, ptr noundef nonnull %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.hl, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1699)
  call void @llvm.experimental.noalias.scope.decl(metadata !1700)
  call void @llvm.experimental.noalias.scope.decl(metadata !1701)
  call void @llvm.experimental.noalias.scope.decl(metadata !1702)
  %i.hm = load ptr, ptr %i.n, align 8, !alias.scope !1703, !nonnull !5, !noundef !5
  %i.hn = atomicrmw sub ptr %i.hm, i64 1 release, align 8, !noalias !1703
  %i.ho = icmp eq i64 %i.hn, 1
  br i1 %i.ho, label %bb.x, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBI_7service14ipc_threadsafe7ServiceyuyuEECshJgtdScfPDc_26benchmark_request_response.exit

bb.x:                                             ; preds = %bb.w
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1I_7service14ipc_threadsafe7ServiceEEE9drop_slowCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n) #14
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBI_7service14ipc_threadsafe7ServiceyuyuEECshJgtdScfPDc_26benchmark_request_response.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBI_7service14ipc_threadsafe7ServiceyuyuEECshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.y

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %bb.aa, %bb.z, %bb.y, %bb.v
  ret void

2:                                                ; preds = %bb.h
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segment11DataSegmentNtNtNtB16_7service14ipc_threadsafe7ServiceENtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory23SharedMemoryCreateErrorEECshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef align 8 dereferenceable(2488) %i.ah) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #16
  unreachable

bb.y:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBI_7service14ipc_threadsafe7ServiceyuyuEECshJgtdScfPDc_26benchmark_request_response.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.bp) #15
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit

bb.z:                                             ; preds = %.thread, %bb.b
  %.sink = phi ptr [ %i.bp, %.thread ], [ %i.be, %bb.b ]
  call void @_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %.sink) #15
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.hp) #15
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 176
  call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.hq) #15
  %i.hr = load i128, ptr %1, align 16, !range !16, !alias.scope !1704, !noundef !5
  %i.hs = icmp eq i128 %i.hr, 0
  br i1 %i.hs, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24port1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.ht) #15
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs9_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_6ClientNtNtNtB9_7service16local_threadsafe7ServiceyuyuE3newCshJgtdScfPDc_26benchmark_request_response(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 16 captures(address) dead_on_return dereferenceable(240) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 6 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [2 x i8], align 1                 ; 5 uses
  %i.m = alloca [8 x i8], align 8                 ; 5 uses
  %i.n = alloca [32 x i8], align 8                ; 12 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [1 x i8], align 1                 ; 4 uses
  %i.r = alloca [56 x i8], align 8                ; 8 uses
  %i.s = alloca [56 x i8], align 8                ; 4 uses
  %i.t = alloca [16 x i8], align 8                ; 4 uses
  %i.u = alloca [6384 x i8], align 16             ; 43 uses
  %i.v = alloca [16 x i8], align 8                ; 7 uses
  %i.w = alloca [32 x i8], align 8                ; 6 uses
  %i.x = alloca [32 x i8], align 8                ; 6 uses
  %i.y = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.05 = alloca [32 x i8], align 16          ; 5 uses
  %.sroa.67 = alloca [48 x i8], align 16          ; 5 uses
  %.sroa.1011 = alloca [200 x i8], align 8        ; 5 uses
  %.sroa.1314 = alloca [888 x i8], align 16       ; 5 uses
  %.sroa.1415.sroa.5 = alloca [32 x i8], align 8  ; 5 uses
  %i.z = alloca [64 x i8], align 16               ; 4 uses
  %i.aa = alloca [48 x i8], align 16              ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [32 x i8], align 8               ; 4 uses
  %i.ad = alloca [24 x i8], align 8               ; 8 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.0 = alloca [64 x i8], align 16           ; 5 uses
  %.sroa.6 = alloca [48 x i8], align 16           ; 5 uses
  %.sroa.7 = alloca [24 x i8], align 16           ; 5 uses
  %.sroa.8 = alloca [24 x i8], align 8            ; 5 uses
  %i.af = alloca [2712 x i8], align 16            ; 5 uses
  %.sroa.10 = alloca [888 x i8], align 8          ; 5 uses
  %i.ag = alloca [64 x i8], align 8               ; 11 uses
  %i.ah = alloca [2712 x i8], align 8             ; 6 uses
  %i.ai = alloca [16 x i8], align 8               ; 5 uses
  %i.aj = alloca [16 x i8], align 8               ; 5 uses
  %i.ak = alloca [264 x i8], align 8              ; 7 uses
  %i.al = alloca [32 x i8], align 8               ; 7 uses
  %i.am = alloca [16 x i8], align 8               ; 5 uses
  %i.an = alloca [1 x i8], align 1                ; 4 uses
  %i.ao = alloca [1072 x i8], align 8             ; 7 uses
  %i.ap = alloca [1072 x i8], align 8             ; 10 uses
  %i.aq = alloca [16 x i8], align 16              ; 9 uses
  %i.ar = alloca [16 x i8], align 8               ; 11 uses
  %i.as = alloca [16 x i8], align 8               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  store ptr @43, ptr %i.as, align 8, !captures !9
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 28, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store ptr @44, ptr %i.ar, align 8, !captures !9
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 13, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.aw = load ptr, ptr %i.av, align 16, !nonnull !5, !align !6, !noundef !5 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @_RNvMsS_NtCsg6ZEkMtNi4J_8iceoryx211identifiersNtB5_14UniqueClientId3new(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.aq) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %.val117 = load ptr, ptr %i.aw, align 8, !nonnull !5, !noundef !5
  %i.ax = getelementptr inbounds nuw i8, ptr %.val117, i64 6144
  %.sroa.033.0.copyload = load i128, ptr %i.aq, align 16 ; 4 uses
  call void @_RNvMsn_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB5_10SharedNodeNtNtNtB7_7service16local_threadsafe7ServiceE15create_port_tagCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([1072 x i8]) align 8 captures(address) dereferenceable(1072) %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ax, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 28, i128 noundef %.sroa.033.0.copyload) #15
  %i.ay = load ptr, ptr %i.ao, align 8, !noundef !5
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.bb = load i8, ptr %i.ba, align 8, !range !26, !noundef !5
  store i8 %i.bb, ptr %i.an, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store ptr %i.ar, ptr %i.am, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.437.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store ptr %i.as, ptr %i.al, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.441.0..sroa_idx, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %i.an, ptr %i.bc, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store ptr @_RNvXs6_NtCs7gufeB8TUC6_12iceoryx2_cal14static_storageNtB5_24StaticStorageCreateErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.445.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.am, ptr noundef nonnull @40, ptr noundef nonnull %i.al) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 3, ptr %i.bd, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 80
  br label %bb.aa

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1072) %i.ap, ptr noundef nonnull align 8 dereferenceable(1072) %i.ao, i64 1072, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  %i.bf = call noundef nonnull align 8 ptr @_RNvXs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_responseINtB5_11PortFactoryNtNtB9_16local_threadsafe7ServiceyuyuENtB7_11PortFactory13static_configCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aw) #15 ; 14 uses
  %.val110 = load ptr, ptr %i.aw, align 8, !nonnull !5, !noundef !5
  %i.bg = getelementptr inbounds nuw i8, ptr %.val110, i64 4296
  %i.bh = call noundef nonnull align 8 ptr @_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config17messaging_patternNtB4_16MessagingPattern16request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1848) %i.bg) #15 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !5 ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bh, i64 8
  %.val111 = load i64, ptr %i.bk, align 8, !noundef !5
  %i.bl = getelementptr i8, ptr %i.bh, i64 32
  %.val112 = load i64, ptr %i.bl, align 8, !noundef !5
  %i.bm = shl i64 %.val111, 1
  %i.bn = mul i64 %i.bm, %.val112
  %i.bo = add i64 %i.bn, %i.bj
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.bq = call noundef i64 @_RNvMsb_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6clientINtB5_28PreallocatedRequestsOverrideKj18_E4callCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.bp, i64 noundef %i.bo) #15 ; 10 uses
  %.val119 = load ptr, ptr %i.aw, align 8, !nonnull !5, !noundef !5
  %i.br = getelementptr i8, ptr %.val119, i64 832
  %.val105 = load ptr, ptr %i.br, align 8, !nonnull !5, !noundef !5
  %i.bs = getelementptr inbounds nuw i8, ptr %.val105, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !noundef !5
  %i.bu = call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig16request_response(ptr noundef nonnull align 8 %i.bt) #15 ; 2 uses
  %.val116 = load ptr, ptr %i.aw, align 8, !nonnull !5, !noundef !5
  %i.bv = getelementptr inbounds nuw i8, ptr %.val116, i64 6144
  %.val108 = load ptr, ptr %i.bv, align 8, !nonnull !5, !noundef !5
  %i.bw = getelementptr inbounds nuw i8, ptr %.val108, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @_RNvNtNtCsg6ZEkMtNi4J_8iceoryx27service13naming_scheme17data_segment_name(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(none) dereferenceable(264) %i.ak, i128 noundef %.sroa.033.0.copyload) #15
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 8, !range !18, !noundef !5
  %i.ca = icmp eq i8 %i.bz, 2                     ; 2 uses
  %..i = zext i1 %i.ca to i32                     ; 2 uses
  %i.cb = call noundef i8 @_RNvMs0_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_11DataSegmentNtNtNtBb_7service16local_threadsafe7ServiceE22max_number_of_segmentsCshJgtdScfPDc_26benchmark_request_response(i32 noundef %..i) #15 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.cd = load i64, ptr %i.bx, align 16, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !1734)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bf, i64 352
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !1734, !noundef !5 ; 6 uses
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %bb.d, label %_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtNtCs8Chj7Szqq0n_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #16, !noalias !1734
  unreachable

_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit: ; preds = %bb.c
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bf, i64 344
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !1734, !noundef !5
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bf, i64 640
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !1734, !noundef !5
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bf, i64 648
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !1734, !noundef !5
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bf, i64 936
  %i.co = load i64, ptr %i.cn, align 8, !alias.scope !1734, !noundef !5
  %i.cp = mul i64 %i.co, %i.cd
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bf, i64 944
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !1734, !noundef !5
  %i.cs = add i64 %i.ci, -2
  %i.ct = add i64 %i.cs, %i.ck
  %i.cu = add i64 %i.ct, %i.cm
  %i.cv = add i64 %i.cu, %i.cp
  %i.cw = add i64 %i.cv, %i.cr                    ; 2 uses
  %i.cx = urem i64 %i.cw, %i.cf                   ; 2 uses
  %i.cy = icmp eq i64 %i.cx, 0
  %i.cz = sub i64 %i.cf, %i.cx
  %i.da = select i1 %i.cy, i64 0, i64 %i.cz
  %.sroa.0.0.i = add i64 %i.da, %i.cw             ; 2 uses
  %i.db = icmp ult i64 %i.cf, -9223372036854775807
end_hunk_7
begin_hunk_8_@_RNvMs9_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_6ClientNtNtNtB9_7service16local_threadsafe7ServiceyuyuE3newCshJgtdScfPDc_26benchmark_request_response:bb.a
  store i64 1, ptr %.sroa.1415.0..sroa_idx, align 8
  %.sroa.1415.sroa.5.0..sroa.1415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 5088
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.1415.sroa.5.0..sroa.1415.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1415.sroa.5, i64 32, i1 false)
  %.sroa.1516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 5120
  store i8 0, ptr %.sroa.1516.0..sroa_idx, align 16
  %.sroa.1617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 5121
  store i8 %i.fm, ptr %.sroa.1617.0..sroa_idx, align 1
  %i.ga = getelementptr inbounds nuw i8, ptr %i.u, i64 6224
  store i64 0, ptr %i.ga, align 16
  %i.gb = getelementptr inbounds nuw i8, ptr %i.u, i64 6320
  store i64 0, ptr %i.gb, align 16
  %i.gc = getelementptr inbounds nuw i8, ptr %i.u, i64 6328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.gc, ptr noundef nonnull align 8 dereferenceable(56) %i.s, i64 56, i1 false)
  %i.gd = getelementptr inbounds nuw i8, ptr %i.u, i64 5152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1072) %i.gd, ptr noundef nonnull align 8 dereferenceable(1072) %i.ap, i64 1072, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1C_7service16local_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E3newCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.v, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(6384) %i.u) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.ge = load i8, ptr %i.v, align 8, !range !8, !noundef !5
  %i.gf = trunc nuw i8 %i.ge to i1
  br i1 %i.gf, label %bb.s, label %bb.t

.lr.ph135:                                        ; preds = %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit, %.lr.ph135
  %.sroa.065.0134 = phi i64 [ %i.gg, %.lr.ph135 ], [ 0, %_RNvMNtCs8Chj7Szqq0n_4core6resultINtB2_6ResultINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6vector15polymorphic_vec14PolymorphicVecNtNtBO_7slotmap10SlotMapKeyNtNtCsglnFQv1SDtP_18iceoryx2_bb_memory14heap_allocator13HeapAllocatorENtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits9allocator15AllocationErrorE6expectCshJgtdScfPDc_26benchmark_request_response.exit ] ; 2 uses
  %i.gg = add nuw i64 %.sroa.065.0134, 1          ; 2 uses
  %i.gh = call noundef zeroext i1 @_RNvMs4_NtCs5kzjBmDVxDj_21iceoryx2_bb_container5queueINtB5_9MetaQueueNtNtCs7gufeB8TUC6_12iceoryx2_cal20zero_copy_connection9ChannelIdNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits14owning_pointer20GenericOwningPointerE9push_implCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.r, i64 noundef %.sroa.065.0134) #15 ; 0 uses
  %exitcond139.not = icmp eq i64 %i.gg, %i.bq
  br i1 %exitcond139.not, label %._crit_edge136, label %.lr.ph135

bb.s:                                             ; preds = %._crit_edge136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.gj = load i8, ptr %i.gi, align 1, !range !8, !noundef !5
  store i8 %i.gj, ptr %i.q, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.ar, ptr %i.p, align 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.470.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.as, ptr %i.o, align 8
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.475.0..sroa_idx, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.q, ptr %i.gk, align 8
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr @_RNvXs0_NtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policyNtB5_26ArcSyncPolicyCreationErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.479.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.p, ptr noundef nonnull @37, ptr noundef nonnull %i.o) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.gl, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.z

bb.t:                                             ; preds = %._crit_edge136
  %i.gm = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.go = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.go, ptr noundef nonnull align 16 dereferenceable(16) %i.aq, i64 16, i1 false)
  store ptr %i.gn, ptr %i.n, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 0, ptr %i.gp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.gq = call noundef nonnull align 16 ptr @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1C_7service16local_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n) #15
  store ptr %i.gq, ptr %i.m, align 8
  %i.gr = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1p_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m) #15 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 2, ptr %i.a, align 1
  %i.gs = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 3851
  %i.gu = atomicrmw add ptr %i.gt, i8 1 monotonic, align 1 ; 0 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 3856
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gr, i64 5120
  %i.gx = atomicrmw add ptr %i.gw, i8 1 monotonic, align 1 ; 0 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gr, i64 6256
  call void @_RINvMs0_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB6_14ContainerStateNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ServerDetailsE8for_eachNCNvMs5_NtNtB1u_4port6clientINtB34_17ClientSharedStateNtNtB1s_16local_threadsafe7ServiceE24force_update_connections0ECshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.gy, ptr noundef nonnull align 16 %i.gr, ptr noalias nofree noundef nonnull dereferenceable(2) %i.a) #15
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service16local_threadsafe7ServiceE30finish_update_connection_cycleCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 16 %i.gv) #15
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service16local_threadsafe7ServiceE30finish_update_connection_cycleCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 16 %i.gr) #15
  %i.gz = load i8, ptr %i.a, align 1, !range !18, !noundef !5 ; 2 uses
  %i.ha = load i8, ptr %i.gs, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not104 = icmp eq i8 %i.gz, 2
  br i1 %.not104, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i8 %i.gz, ptr %i.l, align 1
  %i.hb = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.ha, ptr %i.hb, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.n, ptr %i.k, align 8
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXsp_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_6ClientNtNtNtB9_7service16local_threadsafe7ServiceyuyuENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.483.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.l, ptr %i.j, align 8
  %.sroa.487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs2_NtNtCsg6ZEkMtNi4J_8iceoryx24port18update_connectionsNtB5_17ConnectionFailureNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.487.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 3, ptr noundef nonnull @1, ptr noundef nonnull %i.k, ptr noundef nonnull @47, ptr noundef nonnull %i.j) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB19_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  fence syncscope("singlethread") seq_cst
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %.val118 = load ptr, ptr %i.aw, align 8, !nonnull !5, !noundef !5
  %i.hc = getelementptr i8, ptr %.val118, i64 832
  %.val = load ptr, ptr %i.hc, align 8, !nonnull !5, !noundef !5
  %i.hd = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.he = load ptr, ptr %i.hd, align 8, !noundef !5
  %i.hf = call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig16request_response(ptr noundef nonnull align 8 %i.he) #15
  call void @_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_responseNtB2_13DynamicConfig13add_client_id(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noundef nonnull align 8 %i.hf, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.ag) #15
  %i.hg = load i64, ptr %i.i, align 8, !range !15, !noundef !5
  %i.hh = trunc nuw i64 %i.hg to i1
  br i1 %i.hh, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.hi = call noundef nonnull align 16 ptr @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1C_7service16local_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n) #15
  store ptr %i.hi, ptr %i.e, align 8
  %i.hj = call noundef nonnull align 16 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1p_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e) #15
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 6224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.hk, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  call void @_RNvXse_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutexINtB5_10MutexGuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB19_7service16local_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1011)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1314)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1415.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.bp) #15
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.ar, ptr %i.h, align 8
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.491.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %.val109 = load ptr, ptr %i.aw, align 8, !nonnull !5, !noundef !5
  %i.hl = getelementptr inbounds nuw i8, ptr %.val109, i64 1112
  %i.hm = call noundef nonnull align 8 ptr @_RNvMNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_configNtB2_12StaticConfig16request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(5032) %i.hl) #15
  %i.hn = getelementptr i8, ptr %i.hm, i64 40
  %.val126 = load i64, ptr %i.hn, align 8, !noundef !5
  store i64 %.val126, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.as, ptr %i.f, align 8
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.495.0..sroa_idx, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.g, ptr %i.ho, align 8
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.499.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.h, ptr noundef nonnull @48, ptr noundef nonnull %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.hp, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1751)
  call void @llvm.experimental.noalias.scope.decl(metadata !1752)
  call void @llvm.experimental.noalias.scope.decl(metadata !1753)
  call void @llvm.experimental.noalias.scope.decl(metadata !1754)
  %i.hq = load ptr, ptr %i.n, align 8, !alias.scope !1755, !nonnull !5, !noundef !5
  %i.hr = atomicrmw sub ptr %i.hq, i64 1 release, align 8, !noalias !1755
  %i.hs = icmp eq i64 %i.hr, 1
  br i1 %i.hs, label %bb.y, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBI_7service16local_threadsafe7ServiceyuyuEECshJgtdScfPDc_26benchmark_request_response.exit

bb.y:                                             ; preds = %bb.x
  fence acquire
  call void @_RNvMsn_NtCsbqH9stoieM8_5alloc4syncINtB5_3ArcINtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix5mutex11MutexHandleINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1I_7service16local_threadsafe7ServiceEEE9drop_slowCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n) #14
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBI_7service16local_threadsafe7ServiceyuyuEECshJgtdScfPDc_26benchmark_request_response.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBI_7service16local_threadsafe7ServiceyuyuEECshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.z

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %bb.ab, %bb.aa, %bb.z, %bb.w
  ret void

2:                                                ; preds = %bb.h
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segment11DataSegmentNtNtNtB16_7service16local_threadsafe7ServiceENtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory23SharedMemoryCreateErrorEECshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef align 8 dereferenceable(2712) %i.ah) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #16
  unreachable

bb.z:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client6ClientNtNtNtBI_7service16local_threadsafe7ServiceyuyuEECshJgtdScfPDc_26benchmark_request_response.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1011)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1314)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1415.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.bp) #15
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit

bb.aa:                                            ; preds = %.thread, %bb.b
  %.sink = phi ptr [ %i.bp, %.thread ], [ %i.be, %bb.b ]
  call void @_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %.sink) #15
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.ht) #15
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 176
  call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.hu) #15
  %i.hv = load i128, ptr %1, align 16, !range !16, !alias.scope !1756, !noundef !5
  %i.hw = icmp eq i128 %i.hv, 0
  br i1 %i.hw, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24port1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.hx) #15
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs9_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_6ClientNtNtNtB9_7service3ipc7ServiceyuyuE3newCshJgtdScfPDc_26benchmark_request_response(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 16 captures(address) dead_on_return dereferenceable(240) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 6 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [2 x i8], align 1                 ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 11 uses
  %i.n = alloca [56 x i8], align 8                ; 8 uses
  %i.o = alloca [16 x i8], align 8                ; 4 uses
  %.sroa.0 = alloca [64 x i8], align 16           ; 2 uses
  %.sroa.6 = alloca [48 x i8], align 16           ; 2 uses
  %i.p = alloca [2488 x i8], align 16             ; 5 uses
  %.sroa.8 = alloca [24 x i8], align 8            ; 2 uses
  %.sroa.9 = alloca [24 x i8], align 16           ; 2 uses
  %.sroa.10 = alloca [888 x i8], align 8          ; 2 uses
  %.sroa.23 = alloca [1364 x i8], align 4         ; 4 uses
  %.sroa.05 = alloca [32 x i8], align 16          ; 2 uses
  %.sroa.67 = alloca [48 x i8], align 16          ; 2 uses
  %.sroa.1011 = alloca [200 x i8], align 8        ; 2 uses
  %.sroa.1314 = alloca [888 x i8], align 16       ; 2 uses
  %.sroa.1415.sroa.5 = alloca [32 x i8], align 16 ; 2 uses
  %.sroa.38 = alloca [30 x i8], align 2           ; 4 uses
  %.sroa.40 = alloca [88 x i8], align 8           ; 4 uses
  %.sroa.42 = alloca [56 x i8], align 8           ; 4 uses
  %i.q = alloca [32 x i8], align 8                ; 6 uses
  %i.r = alloca [32 x i8], align 8                ; 6 uses
  %i.s = alloca [32 x i8], align 8                ; 4 uses
  %i.t = alloca [64 x i8], align 16               ; 4 uses
  %i.u = alloca [48 x i8], align 16               ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [32 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 8 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [64 x i8], align 8                ; 11 uses
  %i.aa = alloca [2488 x i8], align 8             ; 6 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [264 x i8], align 8              ; 7 uses
  %i.ae = alloca [32 x i8], align 8               ; 7 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [1 x i8], align 1                ; 4 uses
  %i.ah = alloca [1360 x i8], align 8             ; 7 uses
  %i.ai = alloca [1360 x i8], align 8             ; 10 uses
  %i.aj = alloca [16 x i8], align 16              ; 9 uses
  %i.ak = alloca [16 x i8], align 8               ; 10 uses
  %i.al = alloca [16 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store ptr @43, ptr %i.al, align 8, !captures !9
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 28, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store ptr @44, ptr %i.ak, align 8, !captures !9
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 13, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ap = load ptr, ptr %i.ao, align 16, !nonnull !5, !align !6, !noundef !5 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @_RNvMsS_NtCsg6ZEkMtNi4J_8iceoryx211identifiersNtB5_14UniqueClientId3new(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.aj) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %.val115 = load ptr, ptr %i.ap, align 8, !nonnull !5, !noundef !5
  %i.aq = getelementptr inbounds nuw i8, ptr %.val115, i64 7280
  %.sroa.033.0.copyload = load i128, ptr %i.aj, align 16 ; 4 uses
  call void @_RNvMsn_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB5_10SharedNodeNtNtNtB7_7service3ipc7ServiceE15create_port_tagCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([1360 x i8]) align 8 captures(address) dereferenceable(1360) %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 28, i128 noundef %.sroa.033.0.copyload) #15
  %i.ar = load i64, ptr %i.ah, align 8, !range !21, !noundef !5
  %i.as = icmp eq i64 %i.ar, 2
  br i1 %i.as, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.au = load i8, ptr %i.at, align 8, !range !26, !noundef !5
  store i8 %i.au, ptr %i.ag, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store ptr %i.ak, ptr %i.af, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.437.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store ptr %i.al, ptr %i.ae, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.441.0..sroa_idx, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.ag, ptr %i.av, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr @_RNvXs6_NtCs7gufeB8TUC6_12iceoryx2_cal14static_storageNtB5_24StaticStorageCreateErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.445.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.af, ptr noundef nonnull @40, ptr noundef nonnull %i.ae) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 3, ptr %i.aw, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 80
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1360) %i.ai, ptr noundef nonnull align 8 dereferenceable(1360) %i.ah, i64 1360, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.ay = call noundef nonnull align 8 ptr @_RNvXs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_responseINtB5_11PortFactoryNtNtB9_3ipc7ServiceyuyuENtB7_11PortFactory13static_configCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ap) #15 ; 14 uses
  %.val108 = load ptr, ptr %i.ap, align 8, !nonnull !5, !noundef !5
  %i.az = getelementptr inbounds nuw i8, ptr %.val108, i64 5432
  %i.ba = call noundef nonnull align 8 ptr @_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config17messaging_patternNtB4_16MessagingPattern16request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1848) %i.az) #15 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !5 ; 2 uses
  %i.bd = getelementptr i8, ptr %i.ba, i64 8
  %.val109 = load i64, ptr %i.bd, align 8, !noundef !5
  %i.be = getelementptr i8, ptr %i.ba, i64 32
  %.val110 = load i64, ptr %i.be, align 8, !noundef !5
  %i.bf = shl i64 %.val109, 1
  %i.bg = mul i64 %i.bf, %.val110
  %i.bh = add i64 %i.bg, %i.bc
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.bj = call noundef i64 @_RNvMsb_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6clientINtB5_28PreallocatedRequestsOverrideKj18_E4callCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.bi, i64 noundef %i.bh) #15 ; 10 uses
  %.val117 = load ptr, ptr %i.ap, align 8, !nonnull !5, !noundef !5
  %i.bk = getelementptr inbounds nuw i8, ptr %.val117, i64 16
  %i.bl = call noundef nonnull align 8 ptr @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigEINtB7_14DynamicStorageB1r_E3getCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 8 %i.bk) #15
  %i.bm = call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig16request_response(ptr noundef nonnull align 8 %i.bl) #15 ; 2 uses
  %.val114 = load ptr, ptr %i.ap, align 8, !nonnull !5, !noundef !5
  %i.bn = getelementptr inbounds nuw i8, ptr %.val114, i64 7280
  %.val106 = load ptr, ptr %i.bn, align 8, !nonnull !5, !noundef !5
  %i.bo = getelementptr inbounds nuw i8, ptr %.val106, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @_RNvNtNtCsg6ZEkMtNi4J_8iceoryx27service13naming_scheme17data_segment_name(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(none) dereferenceable(264) %i.ad, i128 noundef %.sroa.033.0.copyload) #15
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 8, !range !18, !noundef !5
  %i.bs = icmp eq i8 %i.br, 2                     ; 2 uses
  %..i = zext i1 %i.bs to i32                     ; 2 uses
  %i.bt = call noundef i8 @_RNvMs0_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_11DataSegmentNtNtNtBb_7service3ipc7ServiceE22max_number_of_segmentsCshJgtdScfPDc_26benchmark_request_response(i32 noundef %..i) #15 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.bv = load i64, ptr %i.bp, align 16, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !1797)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ay, i64 352
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !1797, !noundef !5 ; 6 uses
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.d, label %_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtNtCs8Chj7Szqq0n_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #16, !noalias !1797
  unreachable

_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit: ; preds = %bb.c
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ay, i64 344
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !1797, !noundef !5
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ay, i64 640
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !1797, !noundef !5
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ay, i64 648
  %i.ce = load i64, ptr %i.cd, align 8, !alias.scope !1797, !noundef !5
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ay, i64 936
  %i.cg = load i64, ptr %i.cf, align 8, !alias.scope !1797, !noundef !5
  %i.ch = mul i64 %i.cg, %i.bv
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ay, i64 944
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !1797, !noundef !5
  %i.ck = add i64 %i.ca, -2
  %i.cl = add i64 %i.ck, %i.cc
  %i.cm = add i64 %i.cl, %i.ce
  %i.cn = add i64 %i.cm, %i.ch
  %i.co = add i64 %i.cn, %i.cj                    ; 2 uses
  %i.cp = urem i64 %i.co, %i.bx                   ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 0
  %i.cr = sub i64 %i.bx, %i.cp
  %i.cs = select i1 %i.cq, i64 0, i64 %i.cr
  %.sroa.0.0.i = add i64 %i.cs, %i.co             ; 2 uses
  %i.ct = icmp ult i64 %i.bx, -9223372036854775807
  call void @llvm.assume(i1 %i.ct)
  br i1 %i.bs, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit
  call void @_RNvMs0_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_11DataSegmentNtNtNtBb_7service3ipc7ServiceE21create_static_segmentCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([2488 x i8]) align 8 captures(none) dereferenceable(2488) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.ad, i64 noundef %i.bx, i64 noundef %.sroa.0.0.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4528) %i.bo, i64 noundef %i.bj) #15
end_hunk_8
begin_hunk_9_@_RNvMs9_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_6ClientNtNtNtB9_7service3ipc7ServiceyuyuE3newCshJgtdScfPDc_26benchmark_request_response:bb.a
  store i64 1, ptr %.sroa.17.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8, !noalias !1812
  %.sroa.18.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 3632
  store i64 0, ptr %.sroa.18.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1812
  %.sroa.19.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 3640
  store i8 %i.ec, ptr %.sroa.19.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8, !noalias !1812
  %.sroa.20.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 3641
  store i8 %i.eh, ptr %.sroa.20.0..sroa.5.0..sroa_idx.i.sroa_idx, align 1, !noalias !1812
  %.sroa.21.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 3642
  store i8 %i.bt, ptr %.sroa.21.0..sroa.5.0..sroa_idx.i.sroa_idx, align 2, !noalias !1812
  %.sroa.22.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 3643 ; 2 uses
  store i8 0, ptr %.sroa.22.0..sroa.5.0..sroa_idx.i.sroa_idx, align 1, !noalias !1812
  %.sroa.23.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 3644
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1364) %.sroa.23.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 4 dereferenceable(1364) %.sroa.23, i64 1364, i1 false), !noalias !1812
  %.sroa.24.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 5008 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.24.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.05, i64 32, i1 false)
  %.sroa.25.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 5040
  store i128 %.sroa.033.0.copyload, ptr %.sroa.25.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1812
  %.sroa.26.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 5056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.26.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.67, i64 48, i1 false)
  %.sroa.27.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 5104
  store i64 %i.dd, ptr %.sroa.27.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1812
  %.sroa.28.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 5112
  store i64 %i.fa, ptr %.sroa.28.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8, !noalias !1812
  %.sroa.29.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 5120
  store i64 %i.bj, ptr %.sroa.29.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1812
  %.sroa.30.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 5128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.30.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.1011, i64 200, i1 false)
  %.sroa.31.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 5328
  store i64 -1, ptr %.sroa.31.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1812
  %.sroa.32.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 5336
  store ptr %.val118, ptr %.sroa.32.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8, !noalias !1812
  %.sroa.33.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 5344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(888) %.sroa.33.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 16 dereferenceable(888) %.sroa.1314, i64 888, i1 false)
  %.sroa.34.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 6232
  store i64 1, ptr %.sroa.34.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8, !noalias !1812
  %.sroa.35.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 6240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.35.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.1415.sroa.5, i64 32, i1 false)
  %.sroa.36.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 6272 ; 2 uses
  store i8 0, ptr %.sroa.36.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1812
  %.sroa.37.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 6273
  store i8 %i.fc, ptr %.sroa.37.0..sroa.5.0..sroa_idx.i.sroa_idx, align 1, !noalias !1812
  %.sroa.38.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 6274
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.38.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.38, i64 30, i1 false), !noalias !1812
  %.sroa.39.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 6304
  store i64 0, ptr %.sroa.39.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1812
  %.sroa.40.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 6312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.40.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.40, i64 88, i1 false), !noalias !1812
  %.sroa.41.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 6400
  store i64 0, ptr %.sroa.41.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1812
  %.sroa.42.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 6408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.42.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.42, i64 56, i1 false), !noalias !1812
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.38)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.40)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.42)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fr, ptr noundef nonnull align 16 dereferenceable(16) %i.aj, i64 16, i1 false)
  store ptr %i.fn, ptr %i.m, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 0, ptr %i.fs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 2, ptr %i.fn, align 16
  store ptr %i.fn, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 2, ptr %i.a, align 1
  %i.ft = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.fu = atomicrmw add ptr %.sroa.22.0..sroa.5.0..sroa_idx.i.sroa_idx, i8 1 monotonic, align 1 ; 0 uses
  %i.fv = atomicrmw add ptr %.sroa.36.0..sroa.5.0..sroa_idx.i.sroa_idx, i8 1 monotonic, align 1 ; 0 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fn, i64 6336
  call void @_RINvMs0_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB6_14ContainerStateNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ServerDetailsE8for_eachNCNvMs5_NtNtB1u_4port6clientINtB34_17ClientSharedStateNtNtB1s_3ipc7ServiceE24force_update_connections0ECshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.fw, ptr noundef nonnull align 16 %.sroa.5.0..sroa_idx.i, ptr noalias nofree noundef nonnull dereferenceable(2) %i.a) #15
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service3ipc7ServiceE30finish_update_connection_cycleCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 16 %.sroa.24.0..sroa.5.0..sroa_idx.i.sroa_idx) #15
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service3ipc7ServiceE30finish_update_connection_cycleCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 16 %.sroa.5.0..sroa_idx.i) #15
  %i.fx = load i8, ptr %i.a, align 1, !range !18, !noundef !5 ; 2 uses
  %i.fy = load i8, ptr %i.ft, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not104 = icmp eq i8 %i.fx, 2
  br i1 %.not104, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i8 %i.fx, ptr %i.k, align 1
  %i.fz = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.fy, ptr %i.fz, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.m, ptr %i.j, align 8
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXsp_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_6ClientNtNtNtB9_7service3ipc7ServiceyuyuENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.483.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.k, ptr %i.i, align 8
  %.sroa.487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs2_NtNtCsg6ZEkMtNi4J_8iceoryx24port18update_connectionsNtB5_17ConnectionFailureNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.487.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 3, ptr noundef nonnull @1, ptr noundef nonnull %i.j, ptr noundef nonnull @47, ptr noundef nonnull %i.i) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !1813)
  call void @llvm.experimental.noalias.scope.decl(metadata !1814)
  call void @llvm.experimental.noalias.scope.decl(metadata !1815)
  %i.ga = load ptr, ptr %i.l, align 8, !alias.scope !1816, !nonnull !5, !noundef !5 ; 2 uses
  %i.gb = load i64, ptr %i.ga, align 8, !noalias !1816, !noundef !5
  %i.gc = add i64 %i.gb, -1                       ; 2 uses
  store i64 %i.gc, ptr %i.ga, align 8, !noalias !1816
  %i.gd = icmp eq i64 %i.gc, 0
  br i1 %i.gd, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit.sink.split, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit

bb.t:                                             ; preds = %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1C_7service3ipc7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response.exit
  %i.ge = load i64, ptr %i.fn, align 16, !noalias !1817, !noundef !5
  %i.gf = add i64 %i.ge, -1                       ; 2 uses
  store i64 %i.gf, ptr %i.fn, align 16, !noalias !1817
  %i.gg = icmp eq i64 %i.gf, 0
  br i1 %i.gg, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit.sink.split, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit.sink.split: ; preds = %bb.t, %bb.s
  call void @_RNvMs6_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtBK_7service3ipc7ServiceEE9drop_slowCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #14
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit.sink.split, %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  fence syncscope("singlethread") seq_cst
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %.val116 = load ptr, ptr %i.ap, align 8, !nonnull !5, !noundef !5
  %i.gh = getelementptr inbounds nuw i8, ptr %.val116, i64 16
  %i.gi = call noundef nonnull align 8 ptr @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigEINtB7_14DynamicStorageB1r_E3getCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 8 %i.gh) #15
  %i.gj = call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig16request_response(ptr noundef nonnull align 8 %i.gi) #15
  call void @_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_responseNtB2_13DynamicConfig13add_client_id(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noundef nonnull align 8 %i.gj, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.z) #15
  %i.gk = load i64, ptr %i.h, align 8, !range !15, !noundef !5
  %i.gl = trunc nuw i64 %i.gk to i1
  br i1 %i.gl, label %bb.u, label %bb.w

bb.u:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit
  %.val125 = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.gm = load i64, ptr %.val125, align 8, !noundef !5 ; 2 uses
  %i.gn = icmp ne i64 %i.gm, 0
  call void @llvm.assume(i1 %i.gn)
  %i.go = icmp eq i64 %i.gm, -1
  br i1 %i.go, label %bb.v, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit134, !prof !20

bb.v:                                             ; preds = %bb.u
  call void @llvm.trap()
  unreachable

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit134: ; preds = %bb.u
  %i.gp = getelementptr inbounds nuw i8, ptr %.val125, i64 6304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.gp, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.bi) #15
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit

bb.w:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.ak, ptr %i.g, align 8
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.491.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.val107 = load ptr, ptr %i.ap, align 8, !nonnull !5, !noundef !5
  %i.gq = getelementptr inbounds nuw i8, ptr %.val107, i64 2248
  %i.gr = call noundef nonnull align 8 ptr @_RNvMNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_configNtB2_12StaticConfig16request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(5032) %i.gq) #15
  %i.gs = getelementptr i8, ptr %i.gr, i64 40
  %.val124 = load i64, ptr %i.gs, align 8, !noundef !5
  store i64 %.val124, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.al, ptr %i.e, align 8
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.495.0..sroa_idx, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.gt, align 8
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.499.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.g, ptr noundef nonnull @48, ptr noundef nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.gu, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !1818)
  call void @llvm.experimental.noalias.scope.decl(metadata !1819)
  call void @llvm.experimental.noalias.scope.decl(metadata !1820)
  call void @llvm.experimental.noalias.scope.decl(metadata !1821)
  %i.gv = load ptr, ptr %i.m, align 8, !alias.scope !1822, !nonnull !5, !noundef !5 ; 2 uses
  %i.gw = load i64, ptr %i.gv, align 8, !noalias !1822, !noundef !5
  %i.gx = add i64 %i.gw, -1                       ; 2 uses
  store i64 %i.gx, ptr %i.gv, align 8, !noalias !1822
  %i.gy = icmp eq i64 %i.gx, 0
  br i1 %i.gy, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @_RNvMs6_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtBK_7service3ipc7ServiceEE9drop_slowCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m) #14
  br label %bb.y

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %bb.aa, %bb.z, %bb.y, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service3ipc7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit134
  ret void

2:                                                ; preds = %bb.h
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segment11DataSegmentNtNtNtB16_7service3ipc7ServiceENtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory23SharedMemoryCreateErrorEECshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef align 8 dereferenceable(2488) %i.aa) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #16
  unreachable

bb.y:                                             ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.bi) #15
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit

bb.z:                                             ; preds = %.thread, %bb.b
  %.sink = phi ptr [ %i.bi, %.thread ], [ %i.ax, %bb.b ]
  call void @_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %.sink) #15
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.gz) #15
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 176
  call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.ha) #15
  %i.hb = load i128, ptr %1, align 16, !range !16, !alias.scope !1823, !noundef !5
  %i.hc = icmp eq i128 %i.hb, 0
  br i1 %i.hc, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24port1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.hd) #15
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs9_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_6ClientNtNtNtB9_7service5local7ServiceyuyuE3newCshJgtdScfPDc_26benchmark_request_response(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 16 captures(address) dead_on_return dereferenceable(240) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 6 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [2 x i8], align 1                 ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 11 uses
  %i.n = alloca [56 x i8], align 8                ; 8 uses
  %i.o = alloca [16 x i8], align 8                ; 4 uses
  %.sroa.0 = alloca [64 x i8], align 16           ; 2 uses
  %.sroa.6 = alloca [48 x i8], align 16           ; 2 uses
  %.sroa.7 = alloca [24 x i8], align 16           ; 2 uses
  %.sroa.8 = alloca [24 x i8], align 8            ; 2 uses
  %i.p = alloca [2712 x i8], align 16             ; 5 uses
  %.sroa.10 = alloca [888 x i8], align 8          ; 2 uses
  %.sroa.23 = alloca [36 x i8], align 4           ; 4 uses
  %.sroa.67 = alloca [48 x i8], align 16          ; 2 uses
  %.sroa.1011 = alloca [200 x i8], align 8        ; 2 uses
  %.sroa.1314 = alloca [888 x i8], align 16       ; 2 uses
  %.sroa.1415.sroa.5 = alloca [32 x i8], align 16 ; 2 uses
  %.sroa.37 = alloca [30 x i8], align 2           ; 4 uses
  %.sroa.40 = alloca [88 x i8], align 8           ; 4 uses
  %.sroa.42 = alloca [56 x i8], align 8           ; 4 uses
  %i.q = alloca [32 x i8], align 8                ; 6 uses
  %i.r = alloca [32 x i8], align 8                ; 6 uses
  %i.s = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.05 = alloca [32 x i8], align 16          ; 5 uses
  %i.t = alloca [64 x i8], align 16               ; 4 uses
  %i.u = alloca [48 x i8], align 16               ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [32 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 8 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [64 x i8], align 8                ; 11 uses
  %i.aa = alloca [2712 x i8], align 8             ; 6 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [264 x i8], align 8              ; 7 uses
  %i.ae = alloca [32 x i8], align 8               ; 7 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [1 x i8], align 1                ; 4 uses
  %i.ah = alloca [1072 x i8], align 8             ; 7 uses
  %i.ai = alloca [1072 x i8], align 8             ; 10 uses
  %i.aj = alloca [16 x i8], align 16              ; 9 uses
  %i.ak = alloca [16 x i8], align 8               ; 10 uses
  %i.al = alloca [16 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store ptr @43, ptr %i.al, align 8, !captures !9
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 28, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store ptr @44, ptr %i.ak, align 8, !captures !9
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 13, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ap = load ptr, ptr %i.ao, align 16, !nonnull !5, !align !6, !noundef !5 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @_RNvMsS_NtCsg6ZEkMtNi4J_8iceoryx211identifiersNtB5_14UniqueClientId3new(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.aj) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %.val117 = load ptr, ptr %i.ap, align 8, !nonnull !5, !noundef !5
  %i.aq = getelementptr inbounds nuw i8, ptr %.val117, i64 6144
  %.sroa.033.0.copyload = load i128, ptr %i.aj, align 16 ; 4 uses
  call void @_RNvMsn_NtCsg6ZEkMtNi4J_8iceoryx24nodeINtB5_10SharedNodeNtNtNtB7_7service5local7ServiceE15create_port_tagCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull sret([1072 x i8]) align 8 captures(address) dereferenceable(1072) %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 28, i128 noundef %.sroa.033.0.copyload) #15
  %i.ar = load ptr, ptr %i.ah, align 8, !noundef !5
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.au = load i8, ptr %i.at, align 8, !range !26, !noundef !5
  store i8 %i.au, ptr %i.ag, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store ptr %i.ak, ptr %i.af, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.437.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store ptr %i.al, ptr %i.ae, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.441.0..sroa_idx, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.ag, ptr %i.av, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr @_RNvXs6_NtCs7gufeB8TUC6_12iceoryx2_cal14static_storageNtB5_24StaticStorageCreateErrorNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.445.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.af, ptr noundef nonnull @40, ptr noundef nonnull %i.ae) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 3, ptr %i.aw, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 80
  br label %bb.aa

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1072) %i.ai, ptr noundef nonnull align 8 dereferenceable(1072) %i.ah, i64 1072, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.ay = call noundef nonnull align 8 ptr @_RNvXs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory16request_responseINtB5_11PortFactoryNtNtB9_5local7ServiceyuyuENtB7_11PortFactory13static_configCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ap) #15 ; 14 uses
  %.val110 = load ptr, ptr %i.ap, align 8, !nonnull !5, !noundef !5
  %i.az = getelementptr inbounds nuw i8, ptr %.val110, i64 4296
  %i.ba = call noundef nonnull align 8 ptr @_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config17messaging_patternNtB4_16MessagingPattern16request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1848) %i.az) #15 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !5 ; 2 uses
  %i.bd = getelementptr i8, ptr %i.ba, i64 8
  %.val111 = load i64, ptr %i.bd, align 8, !noundef !5
  %i.be = getelementptr i8, ptr %i.ba, i64 32
  %.val112 = load i64, ptr %i.be, align 8, !noundef !5
  %i.bf = shl i64 %.val111, 1
  %i.bg = mul i64 %i.bf, %.val112
  %i.bh = add i64 %i.bg, %i.bc
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.bj = call noundef i64 @_RNvMsb_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6clientINtB5_28PreallocatedRequestsOverrideKj18_E4callCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.bi, i64 noundef %i.bh) #15 ; 10 uses
  %.val119 = load ptr, ptr %i.ap, align 8, !nonnull !5, !noundef !5
  %i.bk = getelementptr i8, ptr %.val119, i64 832
  %.val105 = load ptr, ptr %i.bk, align 8, !nonnull !5, !noundef !5
  %i.bl = getelementptr inbounds nuw i8, ptr %.val105, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !noundef !5
  %i.bn = call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig16request_response(ptr noundef nonnull align 8 %i.bm) #15 ; 2 uses
  %.val116 = load ptr, ptr %i.ap, align 8, !nonnull !5, !noundef !5
  %i.bo = getelementptr inbounds nuw i8, ptr %.val116, i64 6144
  %.val108 = load ptr, ptr %i.bo, align 8, !nonnull !5, !noundef !5
  %i.bp = getelementptr inbounds nuw i8, ptr %.val108, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @_RNvNtNtCsg6ZEkMtNi4J_8iceoryx27service13naming_scheme17data_segment_name(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(none) dereferenceable(264) %i.ad, i128 noundef %.sroa.033.0.copyload) #15
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 8, !range !18, !noundef !5
  %i.bt = icmp eq i8 %i.bs, 2                     ; 2 uses
  %..i = zext i1 %i.bt to i32                     ; 2 uses
  %i.bu = call noundef i8 @_RNvMs0_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segmentINtB5_11DataSegmentNtNtNtBb_7service5local7ServiceE22max_number_of_segmentsCshJgtdScfPDc_26benchmark_request_response(i32 noundef %..i) #15 ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.bw = load i64, ptr %i.bq, align 16, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !1870)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ay, i64 352
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !1870, !noundef !5 ; 6 uses
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %bb.d, label %_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtNtCs8Chj7Szqq0n_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #16, !noalias !1870
  unreachable

_RNvMs_NtNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_config20message_type_detailsNtB4_18MessageTypeDetails13sample_layout.exit: ; preds = %bb.c
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ay, i64 344
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !1870, !noundef !5
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ay, i64 640
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !1870, !noundef !5
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ay, i64 648
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !1870, !noundef !5
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ay, i64 936
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !1870, !noundef !5
  %i.ci = mul i64 %i.ch, %i.bw
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ay, i64 944
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !1870, !noundef !5
  %i.cl = add i64 %i.cb, -2
  %i.cm = add i64 %i.cl, %i.cd
  %i.cn = add i64 %i.cm, %i.cf
  %i.co = add i64 %i.cn, %i.ci
  %i.cp = add i64 %i.co, %i.ck                    ; 2 uses
  %i.cq = urem i64 %i.cp, %i.by                   ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 0
  %i.cs = sub i64 %i.by, %i.cq
  %i.ct = select i1 %i.cr, i64 0, i64 %i.cs
  %.sroa.0.0.i = add i64 %i.ct, %i.cp             ; 2 uses
  %i.cu = icmp ult i64 %i.by, -9223372036854775807
  call void @llvm.assume(i1 %i.cu)
  br i1 %i.bt, label %bb.e, label %bb.f

end_hunk_9
begin_hunk_10_@_RNvMs9_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_6ClientNtNtNtB9_7service5local7ServiceyuyuE3newCshJgtdScfPDc_26benchmark_request_response:bb.a
  store i8 %i.ef, ptr %.sroa.19.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8, !noalias !1889
  %.sroa.20.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 3865
  store i8 %i.ek, ptr %.sroa.20.0..sroa.5.0..sroa_idx.i.sroa_idx, align 1, !noalias !1889
  %.sroa.21.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 3866
  store i8 %i.bu, ptr %.sroa.21.0..sroa.5.0..sroa_idx.i.sroa_idx, align 2, !noalias !1889
  %.sroa.22.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 3867 ; 2 uses
  store i8 0, ptr %.sroa.22.0..sroa.5.0..sroa_idx.i.sroa_idx, align 1, !noalias !1889
  %.sroa.23.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 3868
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.23.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.23, i64 36, i1 false), !noalias !1889
  %.sroa.24.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 3904
  store i128 %.sroa.033.0.copyload, ptr %.sroa.24.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1889
  %.sroa.25.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 3920
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.25.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.67, i64 48, i1 false)
  %.sroa.26.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 3968
  store i64 %i.dg, ptr %.sroa.26.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1889
  %.sroa.27.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 3976
  store i64 %i.fd, ptr %.sroa.27.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8, !noalias !1889
  %.sroa.28.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 3984
  store i64 %i.bj, ptr %.sroa.28.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1889
  %.sroa.29.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 3992
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.29.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.1011, i64 200, i1 false)
  %.sroa.30.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 4192
  store i64 -1, ptr %.sroa.30.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1889
  %.sroa.31.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 4200
  store ptr %.val120, ptr %.sroa.31.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8, !noalias !1889
  %.sroa.32.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 4208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(888) %.sroa.32.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 16 dereferenceable(888) %.sroa.1314, i64 888, i1 false)
  %.sroa.33.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 5096
  store i64 1, ptr %.sroa.33.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8, !noalias !1889
  %.sroa.34.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 5104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.34.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.1415.sroa.5, i64 32, i1 false)
  %.sroa.35.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 5136 ; 2 uses
  store i8 0, ptr %.sroa.35.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1889
  %.sroa.36.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 5137
  store i8 %i.ff, ptr %.sroa.36.0..sroa.5.0..sroa_idx.i.sroa_idx, align 1, !noalias !1889
  %.sroa.37.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 5138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.37.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.37, i64 30, i1 false), !noalias !1889
  %.sroa.38.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 5168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1072) %.sroa.38.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(1072) %i.ai, i64 1072, i1 false)
  %.sroa.39.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 6240
  store i64 0, ptr %.sroa.39.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1889
  %.sroa.40.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 6248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.40.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.40, i64 88, i1 false), !noalias !1889
  %.sroa.41.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 6336
  store i64 0, ptr %.sroa.41.0..sroa.5.0..sroa_idx.i.sroa_idx, align 16, !noalias !1889
  %.sroa.42.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 6344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.42.0..sroa.5.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.42, i64 56, i1 false), !noalias !1889
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.37)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.40)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.42)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.fu = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fu, ptr noundef nonnull align 16 dereferenceable(16) %i.aj, i64 16, i1 false)
  store ptr %i.fq, ptr %i.m, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 0, ptr %i.fv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 2, ptr %i.fq, align 16
  store ptr %i.fq, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 2, ptr %i.a, align 1
  %i.fw = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.fx = atomicrmw add ptr %.sroa.22.0..sroa.5.0..sroa_idx.i.sroa_idx, i8 1 monotonic, align 1 ; 0 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fq, i64 3872
  %i.fz = atomicrmw add ptr %.sroa.35.0..sroa.5.0..sroa_idx.i.sroa_idx, i8 1 monotonic, align 1 ; 0 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fq, i64 6272
  call void @_RINvMs0_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB6_14ContainerStateNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_response13ServerDetailsE8for_eachNCNvMs5_NtNtB1u_4port6clientINtB34_17ClientSharedStateNtNtB1s_5local7ServiceE24force_update_connections0ECshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ga, ptr noundef nonnull align 16 %.sroa.5.0..sroa_idx.i, ptr noalias nofree noundef nonnull dereferenceable(2) %i.a) #15
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details8receiverINtB5_8ReceiverNtNtNtBb_7service5local7ServiceE30finish_update_connection_cycleCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 16 %i.fy) #15
  call void @_RNvMs2_NtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details6senderINtB5_6SenderNtNtNtBb_7service5local7ServiceE30finish_update_connection_cycleCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 16 %.sroa.5.0..sroa_idx.i) #15
  %i.gb = load i8, ptr %i.a, align 1, !range !18, !noundef !5 ; 2 uses
  %i.gc = load i8, ptr %i.fw, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not104 = icmp eq i8 %i.gb, 2
  br i1 %.not104, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1C_7service5local7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i8 %i.gb, ptr %i.k, align 1
  %i.gd = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.gc, ptr %i.gd, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.m, ptr %i.j, align 8
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXsp_NtNtCsg6ZEkMtNi4J_8iceoryx24port6clientINtB5_6ClientNtNtNtB9_7service5local7ServiceyuyuENtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.483.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.k, ptr %i.i, align 8
  %.sroa.487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs2_NtNtCsg6ZEkMtNi4J_8iceoryx24port18update_connectionsNtB5_17ConnectionFailureNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.487.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 3, ptr noundef nonnull @1, ptr noundef nonnull %i.j, ptr noundef nonnull @47, ptr noundef nonnull %i.i) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !1890)
  call void @llvm.experimental.noalias.scope.decl(metadata !1891)
  call void @llvm.experimental.noalias.scope.decl(metadata !1892)
  %i.ge = load ptr, ptr %i.l, align 8, !alias.scope !1893, !nonnull !5, !noundef !5 ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8, !noalias !1893, !noundef !5
  %i.gg = add i64 %i.gf, -1                       ; 2 uses
  store i64 %i.gg, ptr %i.ge, align 8, !noalias !1893
  %i.gh = icmp eq i64 %i.gg, 0
  br i1 %i.gh, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit.sink.split, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit

bb.u:                                             ; preds = %_RNvXs2_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threadedINtB5_14SingleThreadedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1C_7service5local7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response.exit
  %i.gi = load i64, ptr %i.fq, align 16, !noalias !1894, !noundef !5
  %i.gj = add i64 %i.gi, -1                       ; 2 uses
  store i64 %i.gj, ptr %i.fq, align 16, !noalias !1894
  %i.gk = icmp eq i64 %i.gj, 0
  br i1 %i.gk, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit.sink.split, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit.sink.split: ; preds = %bb.u, %bb.t
  call void @_RNvMs6_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtBK_7service5local7ServiceEE9drop_slowCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #14
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit.sink.split, %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  fence syncscope("singlethread") seq_cst
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %.val118 = load ptr, ptr %i.ap, align 8, !nonnull !5, !noundef !5
  %i.gl = getelementptr i8, ptr %.val118, i64 832
  %.val = load ptr, ptr %i.gl, align 8, !nonnull !5, !noundef !5
  %i.gm = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.gn = load ptr, ptr %i.gm, align 8, !noundef !5
  %i.go = call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig16request_response(ptr noundef nonnull align 8 %i.gn) #15
  call void @_RNvMNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config16request_responseNtB2_13DynamicConfig13add_client_id(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noundef nonnull align 8 %i.go, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.z) #15
  %i.gp = load i64, ptr %i.h, align 8, !range !15, !noundef !5
  %i.gq = trunc nuw i64 %i.gp to i1
  br i1 %i.gq, label %bb.v, label %bb.x

bb.v:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit
  %.val127 = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.gr = load i64, ptr %.val127, align 8, !noundef !5 ; 2 uses
  %i.gs = icmp ne i64 %i.gr, 0
  call void @llvm.assume(i1 %i.gs)
  %i.gt = icmp eq i64 %i.gr, -1
  br i1 %i.gt, label %bb.w, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit136, !prof !20

bb.w:                                             ; preds = %bb.v
  call void @llvm.trap()
  unreachable

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit136: ; preds = %bb.v
  %i.gu = getelementptr inbounds nuw i8, ptr %.val127, i64 6240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.gu, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.bi) #15
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit

bb.x:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.ak, ptr %i.g, align 8
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.491.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.val109 = load ptr, ptr %i.ap, align 8, !nonnull !5, !noundef !5
  %i.gv = getelementptr inbounds nuw i8, ptr %.val109, i64 1112
  %i.gw = call noundef nonnull align 8 ptr @_RNvMNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_configNtB2_12StaticConfig16request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(5032) %i.gv) #15
  %i.gx = getelementptr i8, ptr %i.gw, i64 40
  %.val126 = load i64, ptr %i.gx, align 8, !noundef !5
  store i64 %.val126, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.al, ptr %i.e, align 8
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.495.0..sroa_idx, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.gy, align 8
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.499.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.g, ptr noundef nonnull @48, ptr noundef nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.gz, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !1895)
  call void @llvm.experimental.noalias.scope.decl(metadata !1896)
  call void @llvm.experimental.noalias.scope.decl(metadata !1897)
  call void @llvm.experimental.noalias.scope.decl(metadata !1898)
  %i.ha = load ptr, ptr %i.m, align 8, !alias.scope !1899, !nonnull !5, !noundef !5 ; 2 uses
  %i.hb = load i64, ptr %i.ha, align 8, !noalias !1899, !noundef !5
  %i.hc = add i64 %i.hb, -1                       ; 2 uses
  store i64 %i.hc, ptr %i.ha, align 8, !noalias !1899
  %i.hd = icmp eq i64 %i.hc, 0
  br i1 %i.hd, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @_RNvMs6_NtCsbqH9stoieM8_5alloc2rcINtB5_2RcINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtBK_7service5local7ServiceEE9drop_slowCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m) #14
  br label %bb.z

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %bb.ab, %bb.aa, %bb.z, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15single_threaded5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port6client17ClientSharedStateNtNtNtB1V_7service5local7ServiceEEECshJgtdScfPDc_26benchmark_request_response.exit136
  ret void

2:                                                ; preds = %bb.h
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsg6ZEkMtNi4J_8iceoryx24port7details12data_segment11DataSegmentNtNtNtB16_7service5local7ServiceENtNtCs7gufeB8TUC6_12iceoryx2_cal13shared_memory23SharedMemoryCreateErrorEECshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef align 8 dereferenceable(2712) %i.aa) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #16
  unreachable

bb.z:                                             ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.bi) #15
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit

bb.aa:                                            ; preds = %.thread, %bb.b
  %.sink = phi ptr [ %i.bi, %.thread ], [ %i.ax, %bb.b ]
  call void @_RNvXNvNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12port_factory6client1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %.sink) #15
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.he) #15
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 176
  call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24ports_1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.hf) #15
  %i.hg = load i128, ptr %1, align 16, !range !16, !alias.scope !1900, !noundef !5
  %i.hh = icmp eq i128 %i.hg, 0
  br i1 %i.hh, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_RNvXNvNtCsg6ZEkMtNi4J_8iceoryx24port1__INtB2_11TinyClosureKj18_ENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.hi) #15
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsg6ZEkMtNi4J_8iceoryx24port19BackpressureHandlerKj18_EEECshJgtdScfPDc_26benchmark_request_response.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs9_NtNtCsg6ZEkMtNi4J_8iceoryx24port8notifierINtB5_8NotifierNtNtNtB9_7service14ipc_threadsafe7ServiceE17___internal_notifyCshJgtdScfPDc_26benchmark_request_response(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [1 x i8], align 1                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [48 x i8], align 8                ; 9 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [8 x i8], align 8                 ; 10 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 2 uses
  %i.q = alloca [8 x i8], align 8                 ; 5 uses
  store ptr %1, ptr %i.q, align 8
  store i64 %2, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr @51, ptr %i.o, align 8, !captures !9
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 22, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1408
  %i.t = tail call noundef nonnull align 8 ptr @_RNvXs4_NtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB5_14MutexProtectedINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19ListenerConnectionsNtNtNtB1C_7service14ipc_threadsafe7ServiceEEINtB7_13ArcSyncPolicyB1v_E4lockCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #15
  store ptr %i.t, ptr %i.n, align 8
  %i.u = call noundef nonnull align 8 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19ListenerConnectionsNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n) #15 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !5, !noundef !5
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = call noundef nonnull align 8 ptr @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigEINtB7_14DynamicStorageB1r_E3getCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 8 %i.x) #15
  %i.z = call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig5event(ptr noundef nonnull align 8 %i.y) #15
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ab = call noundef zeroext i1 @_RNvMs4_NtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9containerINtB5_9ContainerNtNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config5event15ListenerDetailsE12update_stateCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 8 %i.z, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.aa) #15
  br i1 %i.ab, label %bb.b, label %_RNvMs3_NtNtCsg6ZEkMtNi4J_8iceoryx24port8notifierINtB5_19ListenerConnectionsNtNtNtB9_7service14ipc_threadsafe7ServiceE18update_connectionsCshJgtdScfPDc_26benchmark_request_response.exit

bb.b:                                             ; preds = %bb.a
  call fastcc void @_RNvMs3_NtNtCsg6ZEkMtNi4J_8iceoryx24port8notifierINtB5_19ListenerConnectionsNtNtNtB9_7service14ipc_threadsafe7ServiceE26populate_listener_channelsCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 8 %i.u) #15
  br label %_RNvMs3_NtNtCsg6ZEkMtNi4J_8iceoryx24port8notifierINtB5_19ListenerConnectionsNtNtNtB9_7service14ipc_threadsafe7ServiceE18update_connectionsCshJgtdScfPDc_26benchmark_request_response.exit

_RNvMs3_NtNtCsg6ZEkMtNi4J_8iceoryx24port8notifierINtB5_19ListenerConnectionsNtNtNtB9_7service14ipc_threadsafe7ServiceE18update_connectionsCshJgtdScfPDc_26benchmark_request_response.exit: ; preds = %bb.a, %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 1424 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !5
  %i.ae = icmp ult i64 %i.ad, %2
  br i1 %i.ae, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMs3_NtNtCsg6ZEkMtNi4J_8iceoryx24port8notifierINtB5_19ListenerConnectionsNtNtNtB9_7service14ipc_threadsafe7ServiceE18update_connectionsCshJgtdScfPDc_26benchmark_request_response.exit
  %i.af = call noundef nonnull align 8 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19ListenerConnectionsNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n) #15
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !5 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16012798675095097
  call void @llvm.assume(i1 %i.ai)
  %.not77 = icmp eq i64 %i.ah, 0
  br i1 %.not77, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  br label %bb.e

bb.d:                                             ; preds = %_RNvMs3_NtNtCsg6ZEkMtNi4J_8iceoryx24port8notifierINtB5_19ListenerConnectionsNtNtNtB9_7service14ipc_threadsafe7ServiceE18update_connectionsCshJgtdScfPDc_26benchmark_request_response.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.q, ptr %i.m, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier8NotifierNtNtNtBD_7service14ipc_threadsafe7ServiceENtB6_5Debug3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.412.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.o, ptr %i.l, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.416.0..sroa_idx, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.p, ptr %i.ak, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @_RNvXsA_NtCs7gufeB8TUC6_12iceoryx2_cal5eventNtB5_9TriggerIdNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.420.0..sroa_idx, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.ac, ptr %i.al, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.424.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.m, ptr noundef nonnull @56, ptr noundef nonnull %i.l) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.am, align 1
  store i8 1, ptr %0, align 8
  br label %bb.m

._crit_edge:                                      ; preds = %bb.r, %bb.c
  %.sroa.0.0.lcssa = phi i64 [ 0, %bb.c ], [ %.sroa.0.1, %bb.r ]
  %i.an = call noundef nonnull align 8 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19ListenerConnectionsNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n) #15
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !5, !noundef !5
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 2248
  %i.ar = call noundef nonnull align 8 ptr @_RNvMNtNtCsg6ZEkMtNi4J_8iceoryx27service13static_configNtB2_12StaticConfig5event(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(5032) %i.aq) #15 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load i8, ptr %i.as, align 8, !range !8, !noundef !5
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.f, label %bb.g

bb.e:                                             ; preds = %.lr.ph, %bb.r
  %.sroa.0.076 = phi i64 [ 0, %.lr.ph ], [ %.sroa.0.1, %bb.r ] ; 4 uses
  %.sroa.025.075 = phi i64 [ 0, %.lr.ph ], [ %i.av, %bb.r ] ; 7 uses
  %i.av = add nuw nsw i64 %.sroa.025.075, 1       ; 2 uses
  %i.aw = call noundef nonnull align 8 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19ListenerConnectionsNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n) #15 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !5 ; 2 uses
  %i.az = icmp ult i64 %.sroa.025.075, %i.ay
  br i1 %i.az, label %bb.o, label %bb.p

bb.f:                                             ; preds = %._crit_edge
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr @52, ptr %i.g, align 8, !captures !9
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 25, ptr %i.bb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs8_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clockNtB5_4Time7elapsed(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ba) #15
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bd = load i32, ptr %i.bc, align 8, !range !10, !noundef !5 ; 2 uses
  %.not = icmp eq i32 %i.bd, -1
  br i1 %.not, label %bb.i, label %bb.h

bb.g:                                             ; preds = %._crit_edge, %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.lcssa, ptr %i.be, align 8
  store i8 0, ptr %0, align 8
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.bf = load i64, ptr %i.f, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bg = call noundef nonnull align 8 ptr @_RNvXNtNtCs7gufeB8TUC6_12iceoryx2_cal15arc_sync_policy15mutex_protectedINtB2_5GuardINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier19ListenerConnectionsNtNtNtB1p_7service14ipc_threadsafe7ServiceEENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCshJgtdScfPDc_26benchmark_request_response(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n) #15
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !5, !noundef !5
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = call noundef nonnull align 8 ptr @_RNvXsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageNtNtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_config13DynamicConfigEINtB7_14DynamicStorageB1r_E3getCshJgtdScfPDc_26benchmark_request_response(ptr noundef nonnull align 8 %i.bj) #15
  %i.bl = call noundef nonnull align 8 ptr @_RNvMs0_NtNtCsg6ZEkMtNi4J_8iceoryx27service14dynamic_configNtB5_13DynamicConfig5event(ptr noundef nonnull align 8 %i.bk) #15
  %i.bm = mul i64 %i.bf, 1000000000
  %i.bn = zext nneg i32 %i.bd to i64
  %i.bo = add i64 %i.bm, %i.bn                    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 160
  %i.bq = atomicrmw xchg ptr %i.bp, i64 %i.bo monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.br = sub i64 %i.bo, %i.bq                    ; 2 uses
  %i.bs = udiv i64 %i.br, 1000000000              ; 3 uses
  %i.bt = urem i64 %i.br, 1000000000
  %i.bu = trunc nuw nsw i64 %i.bt to i32          ; 2 uses
  store i64 %i.bs, ptr %i.c, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.bu, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ar, i64 64 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !5
  %i.by = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.bz = load i32, ptr %i.by, align 8, !noundef !5
  %i.ca = call { i64, i32 } @_RNvXs7_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix5clockNtNtCs8Chj7Szqq0n_4core4time8DurationINtNtBO_7convert4FromNtB5_19RelocatableDurationE4from(i64 noundef %i.bx, i32 noundef %i.bz) #15 ; 2 uses
  %i.cb = extractvalue { i64, i32 } %i.ca, 0      ; 2 uses
  %i.cc = icmp eq i64 %i.bs, %i.cb
  br i1 %i.cc, label %.split, label %bb.j

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.q, ptr %i.e, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRINtNtNtCsg6ZEkMtNi4J_8iceoryx24port8notifier8NotifierNtNtNtBD_7service14ipc_threadsafe7ServiceENtB6_5Debug3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.442.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.g, ptr %i.d, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCshJgtdScfPDc_26benchmark_request_response, ptr %.sroa.446.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @1, ptr noundef nonnull %i.e, ptr noundef nonnull @54, ptr noundef nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.cd, align 1
  store i8 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.n

.split:                                           ; preds = %bb.h
  %i.ce = extractvalue { i64, i32 } %i.ca, 1      ; 2 uses
end_hunk_10
