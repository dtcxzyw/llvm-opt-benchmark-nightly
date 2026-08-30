Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_load_balancing-58aa6fa8707f0f42.pingora_load_balancing.21c3f6b127470a61-cgu.10?download=true
inline.NumInlined: 190
inline.NumDeleted: 107
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtNtCs2awuzAz5vY4_5tokio7runtime4task8new_taskNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtBW_18TransportConnector10new_streamNtNtNtBY_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECs2TJrahNLnPN_22pingora_load_balancing:bb.a
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs2awuzAz5vY4_5tokio7runtime4task8new_taskNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtBW_18TransportConnector10new_streamNtNtNtBY_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB4_9scheduler12multi_thread6handle6HandleEECs2TJrahNLnPN_22pingora_load_balancing(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(1816) %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 128 ptr @_RNvMs0_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task4coreINtB5_4CellNCNCINvMs_NtCskeugdADtBsi_12pingora_core10connectorsNtB18_18TransportConnector10new_streamNtNtNtB1a_9upstreams4peer9BasicPeerE0s_0INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE3newCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1816) %1, ptr noundef nonnull %2, i64 noundef 204, i64 noundef %3) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsifUeDn7Bu1H_3nix3sys6socket11getpeernameNtNtB2_4addr15SockaddrStorageECs2TJrahNLnPN_22pingora_load_balancing(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) initializes((0, 4)) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 4 uses
  %i.b = alloca [136 x i8], align 8               ; 5 uses
  %i.c = alloca [4 x i8], align 4                 ; 6 uses
  %i.d = alloca [128 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 128, ptr %i.c, align 4
  %i.e = call noundef i32 @getpeername(i32 noundef %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) #18
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = call noundef i32 @_RNvMNtCsifUeDn7Bu1H_3nix5errnoNtNtB2_6consts5Errno4last()
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.g, ptr %i.h, align 4
  store i32 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.d, i64 128, i1 false)
  %i.i = load i32, ptr %i.c, align 4, !noundef !11
  call void @_RNvXsp_NtNtNtCsifUeDn7Bu1H_3nix3sys6socket4addrNtB5_15SockaddrStorageNtB5_12SockaddrLike8from_raw(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.b, ptr noundef nonnull %i.a, i32 noundef 1, i32 %i.i)
  %i.j = load i64, ptr %i.b, align 8, !range !120, !noundef !11
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.m, ptr noundef nonnull align 8 dereferenceable(128) %i.l, i64 128, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 22, ptr %i.n, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink = phi i32 [ 0, %bb.d ], [ 1, %bb.e ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsifUeDn7Bu1H_3nix3sys6socket11getpeernameNtNtB2_4addr8UnixAddrECs2TJrahNLnPN_22pingora_load_balancing(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([116 x i8]) align 4 captures(none) dereferenceable(116) initializes((0, 2), (4, 8)) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [110 x i8], align 2               ; 3 uses
  %i.b = alloca [112 x i8], align 2               ; 5 uses
  %i.c = alloca [4 x i8], align 4                 ; 6 uses
  %i.d = alloca [112 x i8], align 2               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 110, ptr %i.c, align 4
  %i.e = call noundef i32 @getpeername(i32 noundef %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) #18
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = call noundef i32 @_RNvMNtCsifUeDn7Bu1H_3nix5errnoNtNtB2_6consts5Errno4last()
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.g, ptr %i.h, align 4
  store i16 1, ptr %0, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(112) %i.b, ptr noundef nonnull align 2 dereferenceable(112) %i.d, i64 112, i1 false)
  %i.i = load i32, ptr %i.c, align 4, !noundef !11 ; 3 uses
  %i.j = add i32 %i.i, -2
  %or.cond.i = icmp ult i32 %i.j, 254
  %.0..0..0. = load i16, ptr %i.b, align 2
  %.not.i = icmp eq i16 %.0..0..0., 1
  %or.cond = select i1 %or.cond.i, i1 %.not.i, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(110) %i.a, i8 0, i64 110, i1 false)
  %i.k = zext nneg i32 %i.i to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.a, ptr nonnull readonly align 2 %i.b, i64 %i.k, i1 false)
  %i.l = trunc nuw i32 %i.i to i8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(110) %i.m, ptr noundef nonnull align 2 dereferenceable(110) %i.a, i64 110, i1 false)
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 %i.l, ptr %.sroa.47.0..sroa_idx, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 22, ptr %i.n, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink = phi i16 [ 0, %bb.d ], [ 1, %bb.e ]
  store i16 %.sink, ptr %0, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_12RawIterRangeTlINtNtCsisNNF9X7XVM_12pingora_pool10connection14PoolConnectionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCs2awuzAz5vY4_5tokio4sync5mutex5MutexINtNtB1Z_5boxed3BoxDNtNtCskeugdADtBsi_12pingora_core9protocols2IOEL_EEEEEE3newCs2TJrahNLnPN_22pingora_load_balancing(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %.val13 = load <16 x i8>, ptr %1, align 16
  %i.b = icmp sgt <16 x i8> %.val13, splat (i8 -1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <16 x i1> %i.b, ptr %i.d, align 8
  store ptr %2, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvMsn_NtCsaHowi4STlW6_9hashbrown3rawINtB5_7RawIterTINtCskD7i0qFYELX_3lru6KeyReflEINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtBR_8LruEntrylINtNtCsisNNF9X7XVM_12pingora_pool3lru4NodeNtNtB2o_10connection14ConnectionMetaEEEEE13drop_elementsCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(40) %0) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtNtNtCs2awuzAz5vY4_5tokio2io4util10buf_stream9BufStreamNtNtNtNtCskeugdADtBsi_12pingora_core9protocols2l46stream16RawStreamWrapperENtB6_5Debug3fmtCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !11, !align !116, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !121
  store ptr %i.b, ptr %i.a, align 8, !noalias !121
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !121
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs84JG9zk80ZV_4http10extensions10ExtensionsNtB6_5Debug3fmtCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !align !116, !noundef !11
  %i.b = tail call noundef zeroext i1 @_RNvXs0_NtCs84JG9zk80ZV_4http10extensionsNtB5_10ExtensionsNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2H_4SyncEL_EEENtNtBT_5clone5Clone5cloneCs2TJrahNLnPN_22pingora_load_balancing(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i.i = alloca [16 x i8], align 8        ; 4 uses
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !11 ; 6 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %i.c, 1                          ; 3 uses
  %i.f = icmp ugt i64 %i.e, 576460752303423487
  br i1 %i.f, label %bb.d, label %bb.c, !prof !26

bb.c:                                             ; preds = %bb.b
  %i.g = shl nuw i64 %i.e, 5                      ; 3 uses
  %i.h = add nsw i64 %i.c, 17                     ; 2 uses
  %i.i = add i64 %i.h, %i.g                       ; 5 uses
  %i.j = icmp ult i64 %i.i, %i.g
  %i.k = icmp ugt i64 %i.i, 9223372036854775792
  %or.cond.i.i = or i1 %i.j, %i.k
  br i1 %or.cond.i.i, label %bb.d, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !4

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.c
  %2 = icmp eq i64 %i.i, 0
  br i1 %2, label %bb.g, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !125
  %i.l = tail call noundef align 16 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #18, !noalias !125 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %bb.g

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !125
  br label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i
  %i.o = tail call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.i), !noalias !125
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i = phi { i64, i64 } [ %i.o, %bb.e ], [ %i.n, %bb.d ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2H_4SyncEL_EEE17new_uninitializedCs2TJrahNLnPN_22pingora_load_balancing.exit

bb.g:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.l, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.g
  %i.q = icmp ult i64 %i.c, 8
  %i.r = lshr i64 %i.e, 3
  %i.s = mul nuw nsw i64 %i.r, 7
  %.sroa.07.0.i.i = select i1 %i.q, i64 %i.c, i64 %i.s
  br label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2H_4SyncEL_EEE17new_uninitializedCs2TJrahNLnPN_22pingora_load_balancing.exit

_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2H_4SyncEL_EEE17new_uninitializedCs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %bb.f, %bb.g
  %.pre-phi = phi i64 [ %.pre, %bb.f ], [ %i.h, %bb.g ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.f ], [ %.sroa.07.0.i.i, %bb.g ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.f ], [ %i.c, %bb.g ]
  %.sroa.0.0 = phi ptr [ null, %bb.f ], [ %i.p, %bb.g ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.0, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.9.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %i.t = load ptr, ptr %1, align 8, !alias.scope !140, !noalias !141, !nonnull !11, !noundef !11 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.t, i64 %.pre-phi, i1 false), !noalias !142
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !140, !noalias !141, !noundef !11 ; 3 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2H_4SyncEL_EEE17new_uninitializedCs2TJrahNLnPN_22pingora_load_balancing.exit
  %.val13.i.i.i = load <16 x i8>, ptr %i.t, align 16, !noalias !143
  %i.x = icmp sgt <16 x i8> %.val13.i.i.i, splat (i8 -1)
  %i.y = bitcast <16 x i1> %i.x to i16
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.aa = ptrtoint ptr %i.t to i64
  br label %bb.i

bb.h:                                             ; preds = %.loopexit.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardTjQINtNtBG_3raw8RawTableTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3t_4SyncEL_EEEENCNvMse_B1y_B1v_15clone_from_impl0EECs2TJrahNLnPN_22pingora_load_balancing(i64 %.sroa.011.028.i.i, ptr nonnull align 8 dereferenceable(32) %i.a) #19
          to label %.body unwind label %bb.k, !noalias !140

bb.i:                                             ; preds = %bb.j, %.lr.ph.i.i
  %.sroa.011.028.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.az, %bb.j ]
  %.sroa.012.027.i.i = phi ptr [ %i.t, %.lr.ph.i.i ], [ %.sroa.012.1.i.i, %bb.j ] ; 2 uses
  %.sroa.6.026.i.i = phi ptr [ %i.z, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %bb.j ] ; 2 uses
  %.sroa.813.025.i.i = phi i16 [ %i.y, %.lr.ph.i.i ], [ %i.aq, %bb.j ] ; 2 uses
  %.sroa.1014.024.i.i = phi i64 [ %i.v, %.lr.ph.i.i ], [ %i.ao, %bb.j ]
  %.not11.i.i.i = icmp eq i16 %.sroa.813.025.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %.lr.ph.i.i.i
  %i.ac = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.sroa.6.026.i.i, %bb.i ] ; 2 uses
  %i.ad = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.sroa.012.027.i.i, %bb.i ]
  %.val79.i.i.i = load <16 x i8>, ptr %i.ac, align 16, !noalias !146
  %i.ae = icmp sgt <16 x i8> %.val79.i.i.i, splat (i8 -1)
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 -512 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ae to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.i
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.026.i.i, %bb.i ], [ %i.ag, %.lr.ph.i.i.i ]
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.027.i.i, %bb.i ], [ %i.af, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.813.025.i.i, %bb.i ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.ah = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.ai = zext nneg i16 %i.ah to i64
  %i.aj = sub nsw i64 0, %i.ai
  %i.ak = getelementptr inbounds [32 x i8], ptr %.sroa.012.1.i.i, i64 %i.aj ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false), !alias.scope !149, !noalias !142
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -16
  %i.an = invoke { ptr, ptr } @_RNvXs2_NtCs84JG9zk80ZV_4http10extensionsINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB5_8AnyCloneNtNtCskKLDkoKarTP_4core6marker4SendNtB1s_4SyncEL_ENtNtB1u_5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.am)
          to label %bb.j unwind label %bb.h, !noalias !142 ; 2 uses

bb.j:                                             ; preds = %.loopexit.i.i
  %i.ao = add i64 %.sroa.1014.024.i.i, -1         ; 2 uses
  %i.ap = add i16 %.lcssa.i.i.i, -1
  %i.aq = and i16 %i.ap, %.lcssa.i.i.i
  %i.ar = extractvalue { ptr, ptr } %i.an, 0
  %i.as = extractvalue { ptr, ptr } %i.an, 1
  %i.at = ptrtoint ptr %i.ak to i64
  %i.au = sub i64 %i.aa, %i.at
  %i.av = ashr exact i64 %i.au, 5                 ; 2 uses
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = getelementptr inbounds [32 x i8], ptr %.sroa.0.0, i64 %i.aw ; 3 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i, i64 16, i1 false), !noalias !142
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.ax, i64 -16
  store ptr %i.ar, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !142
  %.sroa.516.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.ax, i64 -8
  store ptr %i.as, ptr %.sroa.516.0..sroa_idx.i.i, align 8, !noalias !142
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.az = add nsw i64 %i.av, 1
  %i.ba = icmp eq i64 %i.ao, 0
  br i1 %i.ba, label %.loopexit, label %bb.i

bb.k:                                             ; preds = %bb.h
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !noalias !142
  unreachable

bb.l:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  br label %bb.m

.body:                                            ; preds = %bb.h
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2H_4SyncEL_EEENtNtNtBT_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3raw8RawTableTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2U_4SyncEL_EEEECs2TJrahNLnPN_22pingora_load_balancing.exit unwind label %bb.n

.loopexit:                                        ; preds = %bb.j, %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2H_4SyncEL_EEE17new_uninitializedCs2TJrahNLnPN_22pingora_load_balancing.exit
  store i64 %i.v, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !141, !noalias !140
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !140, !noalias !141, !noundef !11
  store i64 %i.bd, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !141, !noalias !140
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.m:                                             ; preds = %.loopexit, %bb.l
  ret void

bb.n:                                             ; preds = %.body
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3raw8RawTableTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2U_4SyncEL_EEEECs2TJrahNLnPN_22pingora_load_balancing.exit: ; preds = %.body
  resume { ptr, i32 } %i.ab
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsd_NtNtCs2awuzAz5vY4_5tokio7runtime4taskINtB5_4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB7_9scheduler14current_thread6HandleEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.b = tail call noundef zeroext i1 @_RNvMNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %i.a)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task3rawNtB4_7RawTask7dealloc(ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsd_NtNtCs2awuzAz5vY4_5tokio7runtime4taskINtB5_4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB7_9scheduler12multi_thread6handle6HandleEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.b = tail call noundef zeroext i1 @_RNvMNtNtNtCs2awuzAz5vY4_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %i.a)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtNtCs2awuzAz5vY4_5tokio7runtime4task3rawNtB4_7RawTask7dealloc(ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2H_4SyncEL_EEENtNtNtBT_3ops4drop4Drop4dropCs2TJrahNLnPN_22pingora_load_balancing(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !156, !noundef !11 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB1h_6marker4SendNtB35_4SyncEL_EENtNtB1Q_5alloc6GlobalECs2TJrahNLnPN_22pingora_load_balancing.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !162, !noundef !11 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB1e_6marker4SendNtB32_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !162, !nonnull !11, !noundef !11 ; 3 uses
  %.val13.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !163
  %i.h = icmp sgt <16 x i8> %.val13.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2e_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i, %bb.c
  %.sroa.06.017.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.06.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2e_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i ] ; 2 uses
  %.sroa.6.016.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2e_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i ] ; 2 uses
  %.sroa.87.015.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2e_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i ] ; 2 uses
  %.sroa.108.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB2e_4SyncEL_EEECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i ]
  %.not11.i.i.i = icmp eq i16 %.sroa.87.015.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBZ_6marker4SendNtB2N_4SyncEL_EEE9next_implKb0_ECs2TJrahNLnPN_22pingora_load_balancing.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
end_hunk_0
