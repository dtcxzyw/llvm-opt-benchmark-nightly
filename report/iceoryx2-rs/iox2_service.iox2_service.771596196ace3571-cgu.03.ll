Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iox2_service.iox2_service.771596196ace3571-cgu.03?download=true
inline.NumInlined: 891
inline.NumDeleted: 433
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RNvXsZ_NtNtCs8Chj7Szqq0n_4core3fmt3numjNtB7_5Debug3fmt:bb.a
bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #27
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs8_NtNtCs8Chj7Szqq0n_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #27
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsePUspIjoSTD_10serde_core2deINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string19StaticStringVisitorKj100_ENtB4_8Expected3fmtCsadSKrpJ73hd_12iox2_service(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !886
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !886
  store ptr @32, ptr %i.a, align 8, !noalias !886
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !886
  call void @_RNvNvNtCsbqH9stoieM8_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @106, ptr noundef nonnull %i.a) #27, !noalias !886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !886
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !noalias !886, !nonnull !5, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noalias !886, !noundef !5
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.f) #27
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #27
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !886
  ret i1 %i.g
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i1, i8 } @_RNvXsa_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_13DynamicMemoryNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1t_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2p_16AllocatorDetailsB1t_EEEENtNtB9_13named_concept16NamedConceptMgmt10remove_cfgCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(824) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [264 x i8], align 8               ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [264 x i8], align 8               ; 11 uses
  %i.m = alloca [16 x i8], align 8                ; 9 uses
  %i.n = alloca [16 x i8], align 8                ; 9 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 9 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [8 x i8], align 8                 ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [264 x i8], align 8               ; 5 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [1 x i8], align 1                 ; 4 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [24 x i8], align 8               ; 11 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [264 x i8], align 8              ; 5 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [24 x i8], align 8               ; 9 uses
  %i.ai = alloca [16 x i8], align 8               ; 8 uses
  %i.aj = alloca [8 x i8], align 8                ; 4 uses
  store ptr %0, ptr %i.aj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store ptr @207, ptr %i.ai, align 8, !captures !9
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 46, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %i.aj, ptr %i.ag, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_name8FileNameNtB6_5Debug3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.417.0..sroa_idx, align 8
  call void @_RNvNvNtCsbqH9stoieM8_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ah, ptr noundef nonnull @208, ptr noundef nonnull %i.ag) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %i.al = load ptr, ptr %i.aj, align 8, !nonnull !5, !align !17, !noundef !5
  call fastcc void @_RNvMsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_13DynamicMemoryNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1t_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2p_16AllocatorDetailsB1t_EEEE22managment_segment_nameCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 8 captures(none) dereferenceable(264) %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.al) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.af, ptr %i.t, align 8, !noalias !909
  %i.am = call { i1, i8 } @_RNvXsa_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageINtNtNtNtB9_13shared_memory6common7details16AllocatorDetailsNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorEENtNtB9_13named_concept16NamedConceptMgmt10remove_cfgCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(824) %1) #27 ; 3 uses
  %i.an = extractvalue { i1, i8 } %i.am, 0
  br i1 %i.an, label %bb.d, label %bb.a

bb.a:                                             ; preds = %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.ao = extractvalue { i1, i8 } %i.am, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !910
  call void @_RNvXsa_NtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage19posix_shared_memoryINtB5_7StorageINtNtNtNtB9_13shared_memory6common7details16AllocatorDetailsNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorEENtNtB9_13named_concept16NamedConceptMgmt8list_cfgCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(824) %1) #27, !noalias !911
  %i.ap = load i64, ptr %i.q, align 8, !range !13, !noalias !910, !noundef !5 ; 2 uses
  %.not.i = icmp eq i64 %i.ap, -1
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !910
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !910
  %i.aq = load i64, ptr %i.o, align 8, !range !13, !noalias !910, !noundef !5
  %i.ar = icmp eq i64 %i.aq, -1
  br i1 %i.ar, label %bb.c, label %bb.f, !prof !7

bb.c:                                             ; preds = %bb.b
  call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_name8FileNameENtNtCs7gufeB8TUC6_12iceoryx2_cal13named_concept21NamedConceptListErrorEECsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #27, !noalias !911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !910
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @175) #28, !noalias !911
  unreachable

bb.d:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !909
  store ptr @171, ptr %i.s, align 8, !noalias !909
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !909
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !909
  store ptr %i.t, ptr %i.r, align 8, !noalias !909
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtRNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_name8FileNameNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !909
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @14, ptr noundef nonnull %i.s, ptr noundef nonnull @172, ptr noundef nonnull %i.r) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !909
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !909
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.as = extractvalue { i1, i8 } %i.am, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store ptr %i.ai, ptr %i.ae, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.423.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store ptr %i.ah, ptr %i.ad, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr @_RNvXsq_NtCsbqH9stoieM8_5alloc6stringNtB5_6StringNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt, ptr %.sroa.427.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @14, ptr noundef nonnull %i.ae, ptr noundef nonnull @209, ptr noundef nonnull %i.ad) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.al

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !910
  store ptr @177, ptr %i.p, align 8, !noalias !910
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !910
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @14, ptr noundef nonnull %i.p, ptr noundef nonnull @178, ptr noundef nonnull inttoptr (i64 77 to ptr)) #27, !noalias !911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !910
  %i.at = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.au = load i8, ptr %i.at, align 8, !range !10, !noalias !910, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !910
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.am, label %bb.an

bb.f:                                             ; preds = %bb.b
  %.sroa.7.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.7.0.copyload66 = load i8, ptr %.sroa.7.0..sroa_idx65, align 8, !noalias !912
  %.sroa.10.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %i.q, i64 9
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.10.0..sroa_idx68, i64 15, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !910
  store i64 %i.ap, ptr %i.ac, align 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  store i8 %.sroa.7.0.copyload66, ptr %.sroa.470.0..sroa_idx, align 8
  %i.aw = load ptr, ptr %.sroa.470.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.ay, 264
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx
  %i.ba = icmp eq i64 %i.ay, 0
  br i1 %i.ba, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 256 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.aj
  %.sroa.05.092 = phi i8 [ %i.ao, %.lr.ph ], [ %.sroa.05.2, %bb.aj ] ; 2 uses
  %.sroa.07.091 = phi ptr [ %i.aw, %.lr.ph ], [ %i.bh, %bb.aj ] ; 10 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.07.091, i64 264 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !913)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !914
  store ptr @76, ptr %i.n, align 8, !noalias !914, !captures !9
  store i64 69, ptr %i.bb, align 8, !noalias !914
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !914
  store ptr @77, ptr %i.m, align 8, !noalias !914, !captures !9
  store i64 37, ptr %i.bc, align 8, !noalias !914
  call void @llvm.experimental.noalias.scope.decl(metadata !915)
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.07.091, i64 256
  %.val12.i.i = load i64, ptr %i.bi, align 8, !alias.scope !916, !noalias !917, !noundef !5 ; 3 uses
  %i.bj = icmp ult i64 %.val12.i.i, 2
  br i1 %i.bj, label %_RNvMsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_13DynamicMemoryNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1t_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2p_16AllocatorDetailsB1t_EEEE27extract_name_and_segment_idCsadSKrpJ73hd_12iox2_service.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g
  %reass.sub.i.i = add i64 %.val12.i.i, -2        ; 2 uses
  br label %bb.l

.loopexit19.i.i:                                  ; preds = %bb.n, %bb.l
  %exitcond.not.i.i = icmp eq i64 %.sroa.07.024.i.i, %reass.sub.i.i
  br i1 %exitcond.not.i.i, label %_RNvMsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_13DynamicMemoryNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1t_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2p_16AllocatorDetailsB1t_EEEE27extract_name_and_segment_idCsadSKrpJ73hd_12iox2_service.exit.thread, label %bb.h

bb.h:                                             ; preds = %.loopexit19.i.i
  %i.bk = add nuw nsw i64 %.sroa.07.024.i.i, 2    ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %.sroa.07.024.i.i, 254
  br i1 %exitcond.not.i.1, label %split.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.07.091, i64 %i.bq
  %i.bm = load i8, ptr %i.bl, align 1, !alias.scope !916, !noalias !917, !noundef !5
  %.not11.i.i.1 = icmp eq i8 %i.bm, 95
  br i1 %.not11.i.i.1, label %bb.j, label %.loopexit19.i.i.1

bb.j:                                             ; preds = %bb.i
  %i.bn = icmp samesign ult i64 %.sroa.07.024.i.i, 254
  br i1 %i.bn, label %bb.k, label %split.i

bb.k:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.07.091, i64 %i.bk
  %i.bp = load i8, ptr %i.bo, align 1, !alias.scope !916, !noalias !917, !noundef !5
  %.not11.i.1.i.1 = icmp eq i8 %i.bp, 95
  br i1 %.not11.i.1.i.1, label %bb.o, label %.loopexit19.i.i.1

.loopexit19.i.i.1:                                ; preds = %bb.k, %bb.i
  %exitcond.not.i.i.1 = icmp eq i64 %i.bq, %reass.sub.i.i
  br i1 %exitcond.not.i.i.1, label %_RNvMsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_13DynamicMemoryNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1t_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2p_16AllocatorDetailsB1t_EEEE27extract_name_and_segment_idCsadSKrpJ73hd_12iox2_service.exit.thread, label %bb.l

bb.l:                                             ; preds = %.loopexit19.i.i.1, %.lr.ph.i.i
  %.sroa.07.024.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bk, %.loopexit19.i.i.1 ] ; 8 uses
  %i.bq = or disjoint i64 %.sroa.07.024.i.i, 1    ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.07.091, i64 %.sroa.07.024.i.i
  %i.bs = load i8, ptr %i.br, align 1, !alias.scope !916, !noalias !917, !noundef !5
  %.not11.i.i = icmp eq i8 %i.bs, 95
  br i1 %.not11.i.i, label %bb.m, label %.loopexit19.i.i

bb.m:                                             ; preds = %bb.l
  %i.bt = icmp samesign ult i64 %.sroa.07.024.i.i, 254
  br i1 %i.bt, label %bb.n, label %split.i

bb.n:                                             ; preds = %bb.m
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.07.091, i64 %i.bq
  %i.bv = load i8, ptr %i.bu, align 1, !alias.scope !916, !noalias !917, !noundef !5
  %.not11.i.1.i = icmp eq i8 %i.bv, 95
  br i1 %.not11.i.1.i, label %bb.o, label %.loopexit19.i.i

split.i:                                          ; preds = %bb.j, %bb.h, %bb.m
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef 255, i64 noundef 255, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @367) #28, !noalias !918
  unreachable

bb.o:                                             ; preds = %bb.k, %bb.n
  %.sroa.07.024.i.i.lcssa127 = phi i64 [ %.sroa.07.024.i.i, %bb.n ], [ %i.bq, %bb.k ] ; 4 uses
  %i.bw = add nuw nsw i64 %.sroa.07.024.i.i.lcssa127, 2 ; 6 uses
  %i.bx = add nuw nsw i64 %.sroa.07.024.i.i.lcssa127, 5
  %i.by = icmp ugt i64 %.val12.i.i, %i.bx
  br i1 %i.by, label %_RNvMsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_13DynamicMemoryNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1t_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2p_16AllocatorDetailsB1t_EEEE27extract_name_and_segment_idCsadSKrpJ73hd_12iox2_service.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !914
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.l, ptr noundef nonnull readonly align 8 dereferenceable(264) %.sroa.07.091, i64 264, i1 false), !noalias !919
  call void @llvm.experimental.noalias.scope.decl(metadata !920)
  %.val5.i.i = load i64, ptr %i.bd, align 8, !alias.scope !920, !noalias !914, !noundef !5 ; 4 uses
  %.not60.i = icmp ult i64 %.val5.i.i, %i.bw
  br i1 %.not60.i, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKjff_ENtB7_6String12remove_rangeCsadSKrpJ73hd_12iox2_service.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not.i49.i = icmp eq i64 %.val5.i.i, %i.bw
  br i1 %.not.i49.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bw
  %i.ca = sub nuw i64 %.val5.i.i, %i.bw
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 1 %i.bz, i64 %i.ca, i1 false), !alias.scope !920, !noalias !914
  %.val.pre.i.i = load i64, ptr %i.bd, align 8, !alias.scope !920, !noalias !914
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.val.i.i = phi i64 [ %i.bw, %bb.q ], [ %.val.pre.i.i, %bb.r ]
  %i.cb = sub i64 %.val.i.i, %i.bw                ; 5 uses
  %i.cc = icmp ult i64 %i.cb, 255
  br i1 %i.cc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.cb
  store i8 0, ptr %i.cd, align 1, !alias.scope !920, !noalias !914
  store i64 %i.cb, ptr %i.bd, align 8, !alias.scope !921, !noalias !914
  br label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKjff_ENtB7_6String12remove_rangeCsadSKrpJ73hd_12iox2_service.exit.i

bb.u:                                             ; preds = %bb.s
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.cb, i64 noundef 255, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @365) #28, !noalias !922
  unreachable

_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKjff_ENtB7_6String12remove_rangeCsadSKrpJ73hd_12iox2_service.exit.i: ; preds = %bb.t, %bb.p
  %.val.i50.i = phi i64 [ %.val5.i.i, %bb.p ], [ %i.cb, %bb.t ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.l, i64 %.val.i50.i
  %i.cf = icmp samesign eq i64 %.val.i50.i, 0
  br i1 %i.cf, label %._crit_edge120, label %.lr.ph119

bb.v:                                             ; preds = %.lr.ph119
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i118, i64 1 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.ce
  br i1 %i.ch, label %._crit_edge120, label %.lr.ph119

.lr.ph119:                                        ; preds = %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKjff_ENtB7_6String12remove_rangeCsadSKrpJ73hd_12iox2_service.exit.i, %bb.v
  %.sroa.03.0.i118 = phi ptr [ %i.cg, %bb.v ], [ %i.l, %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKjff_ENtB7_6String12remove_rangeCsadSKrpJ73hd_12iox2_service.exit.i ] ; 2 uses
  %i.ci = load i8, ptr %.sroa.03.0.i118, align 1, !noalias !914, !noundef !5
  %i.cj = add i8 %i.ci, -48
  %or.cond.i = icmp ult i8 %i.cj, 10
  br i1 %or.cond.i, label %bb.v, label %_RNvMsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_13DynamicMemoryNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1t_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2p_16AllocatorDetailsB1t_EEEE27extract_name_and_segment_idCsadSKrpJ73hd_12iox2_service.exit.thread77

._crit_edge120:                                   ; preds = %bb.v, %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKjff_ENtB7_6String12remove_rangeCsadSKrpJ73hd_12iox2_service.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !914
  call void @_RNvMNtCsbqH9stoieM8_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %.val.i50.i) #27, !noalias !914
  %i.ck = load i64, ptr %i.k, align 8, !range !13, !noalias !914, !noundef !5
  %.not.i59 = icmp eq i64 %i.ck, -1
  %i.cl = load ptr, ptr %i.be, align 8, !noalias !914, !nonnull !5 ; 3 uses
  %i.cm = load i64, ptr %i.bf, align 8, !noalias !914 ; 2 uses
  switch i64 %i.cm, label %thread-pre-split.i.i [
    i64 0, label %_RNvMsD_NtCs8Chj7Szqq0n_4core3numy27from_ascii_bytes_radix_impl.exit.i
    i64 1, label %bb.w
  ]

bb.w:                                             ; preds = %._crit_edge120
  %i.cn = load i8, ptr %i.cl, align 1, !alias.scope !923, !noalias !924, !noundef !5 ; 2 uses
  switch i8 %i.cn, label %bb.x [
    i8 43, label %_RNvMsD_NtCs8Chj7Szqq0n_4core3numy27from_ascii_bytes_radix_impl.exit.i
    i8 45, label %_RNvMsD_NtCs8Chj7Szqq0n_4core3numy27from_ascii_bytes_radix_impl.exit.i
  ]

thread-pre-split.i.i:                             ; preds = %._crit_edge120
  %.pr.i.i = load i8, ptr %i.cl, align 1, !alias.scope !923, !noalias !924
  br label %bb.x

bb.x:                                             ; preds = %thread-pre-split.i.i, %bb.w
  %i.co = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.cn, %bb.w ]
  %cond.i.i = icmp eq i8 %i.co, 43                ; 2 uses
  %i.cp = sext i1 %cond.i.i to i64
  %.sroa.15.0.i.i = add nsw i64 %i.cm, %i.cp      ; 4 uses
  %.sroa.0.0.idx.i.i = zext i1 %cond.i.i to i64
  %.sroa.0.0.i52.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.sroa.0.0.idx.i.i ; 2 uses
  %i.cq = icmp samesign ult i64 %.sroa.15.0.i.i, 17
  br i1 %i.cq, label %.preheader.i.i, label %.preheader60.split.us.i.i.preheader

.preheader60.split.us.i.i:                        ; preds = %bb.y
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.1.us.i.i123, i64 1
  %i.cs = add nsw i64 %.sroa.15.1.us.i.i122, -1   ; 2 uses
  %.not52.us.i.i = icmp eq i64 %i.cs, 0
  br i1 %.not52.us.i.i, label %_RNvMsD_NtCs8Chj7Szqq0n_4core3numy27from_ascii_bytes_radix_impl.exit.i, label %.preheader60.split.us.i.i.preheader

.preheader60.split.us.i.i.preheader:              ; preds = %bb.x, %.preheader60.split.us.i.i
  %.sroa.0.1.us.i.i123 = phi ptr [ %i.cr, %.preheader60.split.us.i.i ], [ %.sroa.0.0.i52.i, %bb.x ] ; 2 uses
  %.sroa.15.1.us.i.i122 = phi i64 [ %i.cs, %.preheader60.split.us.i.i ], [ %.sroa.15.0.i.i, %bb.x ]
  %.sroa.042.0.us.i.i121 = phi i64 [ %i.db, %.preheader60.split.us.i.i ], [ 0, %bb.x ]
  %i.ct = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.us.i.i121, i64 10) ; 2 uses
  %i.cu = extractvalue { i64, i1 } %i.ct, 1
  br i1 %i.cu, label %_RNvMsD_NtCs8Chj7Szqq0n_4core3numy27from_ascii_bytes_radix_impl.exit.i, label %bb.y, !prof !7

bb.y:                                             ; preds = %.preheader60.split.us.i.i.preheader
  %i.cv = extractvalue { i64, i1 } %i.ct, 0       ; 2 uses
  %i.cw = load i8, ptr %.sroa.0.1.us.i.i123, align 1, !alias.scope !923, !noalias !924, !noundef !5
  %i.cx = zext i8 %i.cw to i32
  %i.cy = add nsw i32 %i.cx, -48                  ; 2 uses
  %i.cz = icmp ugt i32 %i.cy, 9
  %i.da = zext nneg i32 %i.cy to i64
  %i.db = add i64 %i.cv, %i.da                    ; 3 uses
  %i.dc = icmp ult i64 %i.db, %i.cv
  %or.cond59.i = select i1 %i.cz, i1 true, i1 %i.dc, !prof !8
  br i1 %or.cond59.i, label %_RNvMsD_NtCs8Chj7Szqq0n_4core3numy27from_ascii_bytes_radix_impl.exit.i, label %.preheader60.split.us.i.i, !prof !8

.preheader.i.i:                                   ; preds = %bb.x
  %.not5373.i.i = icmp eq i64 %.sroa.15.0.i.i, 0
  br i1 %.not5373.i.i, label %_RNvMsD_NtCs8Chj7Szqq0n_4core3numy27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.preheader.i.i, %bb.z
  %.sroa.0.276.us.i.i = phi ptr [ %i.dj, %bb.z ], [ %.sroa.0.0.i52.i, %.preheader.i.i ] ; 2 uses
  %.sroa.15.275.us.i.i = phi i64 [ %i.di, %bb.z ], [ %.sroa.15.0.i.i, %.preheader.i.i ]
  %.sroa.042.274.us.i.i = phi i64 [ %i.dl, %bb.z ], [ 0, %.preheader.i.i ]
  %i.dd = load i8, ptr %.sroa.0.276.us.i.i, align 1, !alias.scope !923, !noalias !924, !noundef !5
  %i.de = zext i8 %i.dd to i32
  %i.df = add nsw i32 %i.de, -48                  ; 2 uses
  %i.dg = icmp ult i32 %i.df, 10                  ; 3 uses
  br i1 %i.dg, label %bb.z, label %_RNvMsD_NtCs8Chj7Szqq0n_4core3numy27from_ascii_bytes_radix_impl.exit.i

bb.z:                                             ; preds = %.lr.ph.split.us.i.i
  %i.dh = mul i64 %.sroa.042.274.us.i.i, 10
  %i.di = add nsw i64 %.sroa.15.275.us.i.i, -1    ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.276.us.i.i, i64 1
  %i.dk = zext nneg i32 %i.df to i64
  %i.dl = add i64 %i.dh, %i.dk                    ; 2 uses
  %.not53.us.i.i = icmp eq i64 %i.di, 0
  br i1 %.not53.us.i.i, label %_RNvMsD_NtCs8Chj7Szqq0n_4core3numy27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph.split.us.i.i

_RNvMsD_NtCs8Chj7Szqq0n_4core3numy27from_ascii_bytes_radix_impl.exit.i: ; preds = %bb.y, %.preheader60.split.us.i.i.preheader, %.preheader60.split.us.i.i, %bb.z, %.lr.ph.split.us.i.i, %.preheader.i.i, %bb.w, %bb.w, %._crit_edge120
  %.sroa.1054.0.i = phi i64 [ undef, %bb.w ], [ undef, %._crit_edge120 ], [ 0, %.preheader.i.i ], [ undef, %bb.w ], [ undef, %.lr.ph.split.us.i.i ], [ %i.dl, %bb.z ], [ undef, %bb.y ], [ undef, %.preheader60.split.us.i.i.preheader ], [ %i.db, %.preheader60.split.us.i.i ]
  %.not47.i = phi i1 [ false, %bb.w ], [ false, %._crit_edge120 ], [ true, %.preheader.i.i ], [ false, %bb.w ], [ %i.dg, %bb.z ], [ %i.dg, %.lr.ph.split.us.i.i ], [ false, %bb.y ], [ false, %.preheader60.split.us.i.i.preheader ], [ true, %.preheader60.split.us.i.i ]
  br i1 %.not.i59, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc6borrow3CoweEECsadSKrpJ73hd_12iox2_service.exit.i, label %bb.aa

bb.aa:                                            ; preds = %_RNvMsD_NtCs8Chj7Szqq0n_4core3numy27from_ascii_bytes_radix_impl.exit.i
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #27, !noalias !914
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #27, !noalias !914
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc6borrow3CoweEECsadSKrpJ73hd_12iox2_service.exit.i

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc6borrow3CoweEECsadSKrpJ73hd_12iox2_service.exit.i: ; preds = %bb.aa, %_RNvMsD_NtCs8Chj7Szqq0n_4core3numy27from_ascii_bytes_radix_impl.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !914
  br i1 %.not47.i, label %bb.ab, label %bb.ac, !prof !6

bb.ab:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc6borrow3CoweEECsadSKrpJ73hd_12iox2_service.exit.i
  %i.dm = icmp ugt i64 %.sroa.1054.0.i, 255
  br i1 %i.dm, label %_RNvMsb_NtNtCs7gufeB8TUC6_12iceoryx2_cal23resizable_shared_memory7dynamicINtB5_13DynamicMemoryNtNtNtB9_13shm_allocator14pool_allocator13PoolAllocatorINtNtNtNtB9_13shared_memory6common7details6MemoryB1t_INtNtNtB9_15dynamic_storage19posix_shared_memory7StorageINtB2p_16AllocatorDetailsB1t_EEEE27extract_name_and_segment_idCsadSKrpJ73hd_12iox2_service.exit.thread77, label %bb.ad

bb.ac:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc6borrow3CoweEECsadSKrpJ73hd_12iox2_service.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !914
  store ptr %i.n, ptr %i.j, align 8, !noalias !914
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.415.0..sroa_idx.i, align 8, !noalias !914
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !914
  store ptr %i.m, ptr %i.i, align 8, !noalias !914
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !914
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @14, ptr noundef nonnull %i.j, ptr noundef nonnull @82, ptr noundef nonnull %i.i) #27, !noalias !914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !914
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !914
  store ptr %i.n, ptr %i.h, align 8, !noalias !914
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.423.0..sroa_idx.i, align 8, !noalias !914
  %i.dn = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.m, ptr %i.dn, align 8, !noalias !914
  %.sroa.427.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.427.0..sroa_idx.i, align 8, !noalias !914
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @83, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #28, !noalias !914
  unreachable

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !914
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(264) %.sroa.07.091, i64 264, i1 false), !noalias !919
  %i.do = load i64, ptr %i.bg, align 8, !noalias !914, !noundef !5
  %i.dp = sub i64 %i.do, %.sroa.07.024.i.i.lcssa127
  %i.dq = call noundef i8 @_RNvYNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_name8FileNameINtNtCs5kzjBmDVxDj_21iceoryx2_bb_container15semantic_string14SemanticStringKjff_E12remove_rangeCsadSKrpJ73hd_12iox2_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(264) %i.g, i64 noundef %.sroa.07.024.i.i.lcssa127, i64 noundef %i.dp) #27, !noalias !914
  %.not48.i = icmp eq i8 %i.dq, 2
  br i1 %.not48.i, label %bb.af, label %bb.ae, !prof !6

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !914
  store ptr %i.n, ptr %i.f, align 8, !noalias !914
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.431.0..sroa_idx.i, align 8, !noalias !914
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !914
  store ptr %i.m, ptr %i.e, align 8, !noalias !914
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsadSKrpJ73hd_12iox2_service, ptr %.sroa.435.0..sroa_idx.i, align 8, !noalias !914
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 5, ptr noundef nonnull @14, ptr noundef nonnull %i.f, ptr noundef nonnull @79, ptr noundef nonnull %i.e) #27, !noalias !914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !914
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !914
  store ptr %i.n, ptr %i.d, align 8, !noalias !914
end_hunk_0
