Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/ssservice.ssservice.c5eed45f505fd4ef-cgu.0?download=true
inline.NumInlined: 40153
inline.NumDeleted: 17541
loop-unroll.NumCompletelyUnrolled: 94
loop-unroll.NumRuntimeUnrolled: 164
loop-unroll.NumUnrolled: 272
begin_hunk_0_@_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder6headerReBT_ECsgZAIVb0XKpv_9ssservice:bb.a
  br label %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerReBV_E0CsgZAIVb0XKpv_9ssservice.exit.i

_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerReBV_E0CsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsgZAIVb0XKpv_9ssservice.exit.i.i, %bb.i, %bb.c
  %.sroa.8.2.i = phi i8 [ 4, %bb.c ], [ %.sroa.8.1.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsgZAIVb0XKpv_9ssservice.exit.i.i ], [ %.sroa.8.0.copyload9.i, %bb.i ]
  %.sroa.0.2.i = phi i64 [ -1, %bb.c ], [ -1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameECsgZAIVb0XKpv_9ssservice.exit.i.i ], [ %.sroa.0.0.copyload3.i, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3468
  br label %_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder8and_thenNCINvB2_6headerReB1a_E0ECsgZAIVb0XKpv_9ssservice.exit

_RINvMs4_NtCs7ewmRfXve8r_4http7requestNtB6_7Builder8and_thenNCINvB2_6headerReB1a_E0ECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.a, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerReBV_E0CsgZAIVb0XKpv_9ssservice.exit.i
  %.sroa.8.0.i = phi i8 [ %.sroa.8.0.copyload.i, %bb.a ], [ %.sroa.8.2.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerReBV_E0CsgZAIVb0XKpv_9ssservice.exit.i ]
  %.sroa.0.0.i = phi i64 [ -1, %bb.a ], [ %.sroa.0.2.i, %_RNCINvMs4_NtCs7ewmRfXve8r_4http7requestNtB8_7Builder6headerReBV_E0CsgZAIVb0XKpv_9ssservice.exit.i ]
  store i64 %.sroa.0.0.i, ptr %0, align 8, !alias.scope !3465
  %.sroa.8.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.8.0.i, ptr %.sroa.8.0..sroa_idx6.i, align 8, !alias.scope !3465
  %.sroa.11.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(215) %.sroa.11.0..sroa_idx11.i, ptr noundef nonnull align 1 dereferenceable(215) %.sroa.11.i, i64 215, i1 false), !noalias !3476
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMs5_NtNtNtCsaI3lGUjttVO_5hyper5proto2h14connNtB6_5State14try_keep_aliveNtNtB8_4role6ServerECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.c = load i64, ptr %i.a, align 8, !range !215, !noundef !177
  switch i64 %i.c, label %_RINvMs5_NtNtNtCsaI3lGUjttVO_5hyper5proto2h14connNtB6_5State4idleNtNtB8_4role6ServerECsgZAIVb0XKpv_9ssservice.exit [
    i64 3, label %bb.b
    i64 4, label %bb.c
  ]

_RINvMs5_NtNtNtCsaI3lGUjttVO_5hyper5proto2h14connNtB6_5State4idleNtNtB8_4role6ServerECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsaI3lGUjttVO_5hyper5proto2h14conn7WritingECsgZAIVb0XKpv_9ssservice.exit.i, %bb.j, %bb.e, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !range !216, !noundef !177 ; 2 uses
  %i.e = icmp ne i64 %i.d, -9223372036854775805
  tail call void @llvm.assume(i1 %i.e)
  switch i64 %i.d, label %_RINvMs5_NtNtNtCsaI3lGUjttVO_5hyper5proto2h14connNtB6_5State4idleNtNtB8_4role6ServerECsgZAIVb0XKpv_9ssservice.exit [
    i64 -9223372036854775804, label %bb.d
    i64 -9223372036854775803, label %bb.e
  ]

bb.c:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.b, align 8, !range !216, !noundef !177 ; 2 uses
  %i.g = icmp ne i64 %i.f, -9223372036854775805
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp eq i64 %i.f, -9223372036854775804
  br i1 %i.h, label %bb.e, label %_RINvMs5_NtNtNtCsaI3lGUjttVO_5hyper5proto2h14connNtB6_5State4idleNtNtB8_4role6ServerECsgZAIVb0XKpv_9ssservice.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 375 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !range !198, !noundef !177
  %i.k = icmp eq i8 %i.j, 1
  br i1 %i.k, label %bb.f, label %bb.j

bb.e:                                             ; preds = %bb.c, %bb.b
  tail call void @_RNvMs5_NtNtNtCsaI3lGUjttVO_5hyper5proto2h14connNtB5_5State5close(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %0) #52
  br label %_RINvMs5_NtNtNtCsaI3lGUjttVO_5hyper5proto2h14connNtB6_5State4idleNtNtB8_4role6ServerECsgZAIVb0XKpv_9ssservice.exit

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3489)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3490)
  %i.m = load i8, ptr %i.l, align 8, !range !217, !alias.scope !3491, !noundef !177 ; 2 uses
  %i.n = icmp eq i8 %i.m, -1
  br i1 %i.n, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsaI3lGUjttVO_5hyper5proto2h14conn7WritingECsgZAIVb0XKpv_9ssservice.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3492)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3493)
  %switch.i.i.i.i = icmp samesign ult i8 %i.m, 11
  br i1 %switch.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsaI3lGUjttVO_5hyper5proto2h14conn7WritingECsgZAIVb0XKpv_9ssservice.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 296
  %.val1.i.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !3494, !noundef !177 ; 2 uses
  %i.p = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsaI3lGUjttVO_5hyper5proto2h14conn7WritingECsgZAIVb0XKpv_9ssservice.exit.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 288
  %.val.i.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !3495, !nonnull !177, !noundef !177
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %.val1.i.i.i.i, i64 noundef 1) #52, !noalias !3496
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsaI3lGUjttVO_5hyper5proto2h14conn7WritingECsgZAIVb0XKpv_9ssservice.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsaI3lGUjttVO_5hyper5proto2h14conn7WritingECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %bb.h, %bb.g, %bb.f
  store i8 -1, ptr %i.l, align 8, !alias.scope !3489
  store i8 0, ptr %i.i, align 1, !alias.scope !3489
  store i64 0, ptr %i.a, align 8, !alias.scope !3489
  store i64 -9223372036854775806, ptr %i.b, align 8, !alias.scope !3489
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.s = load i32, ptr %i.r, align 8, !range !197, !alias.scope !3489, !noundef !177
  %.not.i = icmp eq i32 %i.s, -1
  br i1 %.not.i, label %_RINvMs5_NtNtNtCsaI3lGUjttVO_5hyper5proto2h14connNtB6_5State4idleNtNtB8_4role6ServerECsgZAIVb0XKpv_9ssservice.exit, label %bb.i

bb.i:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsaI3lGUjttVO_5hyper5proto2h14conn7WritingECsgZAIVb0XKpv_9ssservice.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 373
  store i8 1, ptr %i.t, align 1, !alias.scope !3489
  br label %_RINvMs5_NtNtNtCsaI3lGUjttVO_5hyper5proto2h14connNtB6_5State4idleNtNtB8_4role6ServerECsgZAIVb0XKpv_9ssservice.exit

bb.j:                                             ; preds = %bb.d
  tail call void @_RNvMs5_NtNtNtCsaI3lGUjttVO_5hyper5proto2h14connNtB5_5State5close(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %0) #52
  br label %_RINvMs5_NtNtNtCsaI3lGUjttVO_5hyper5proto2h14connNtB6_5State4idleNtNtB8_4role6ServerECsgZAIVb0XKpv_9ssservice.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMs7_NtCsi1FNhPBS7PW_11hickory_net5errorNtB6_9NoRecords3newNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op5query5QueryECsgZAIVb0XKpv_9ssservice(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(88) %1, i16 noundef range(i16 0, 4) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !3503
  %i.a = tail call noundef align 8 dereferenceable_or_null(88) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 88, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !3503 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvXs1_NtCsf3Ta7LF998c_4core7convertNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op5query5QueryINtB5_4IntoINtNtCsgCecv3eZDcN_5alloc5boxed3BoxBy_EE4intoCsgZAIVb0XKpv_9ssservice.exit, !prof !182

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 88) #61, !noalias !3503
  unreachable

_RNvXs1_NtCsf3Ta7LF998c_4core7convertNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op5query5QueryINtB5_4IntoINtNtCsgCecv3eZDcN_5alloc5boxed3BoxBy_EE4intoCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(88) %1, i64 88, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store i16 %2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.f, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMs9_NtCsiwebgwkgVmN_10etherparse14packet_builderINtB6_17PacketBuilderStepNtNtNtB8_9transport10udp_header9UdpHeaderE5writeINtNtNtCsknai52m1gBp_5bytes3buf6writer6WriterNtNtB26_9bytes_mut8BytesMutEECsgZAIVb0XKpv_9ssservice(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(9380) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1032 x i8], align 4              ; 6 uses
  %i.b = alloca [1032 x i8], align 4              ; 6 uses
  %i.c = alloca [8 x i8], align 1                 ; 12 uses
  %i.d = alloca [2052 x i8], align 4              ; 6 uses
  %i.e = alloca [2052 x i8], align 4              ; 6 uses
  %i.f = alloca [2052 x i8], align 4              ; 6 uses
  %i.g = alloca [2052 x i8], align 4              ; 6 uses
  %i.h = alloca [1032 x i8], align 4              ; 10 uses
  %.sroa.0265.i = alloca [16 x i8], align 8       ; 4 uses
  %.sroa.6267.i = alloca [7 x i8], align 1        ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [64 x i8], align 4                ; 6 uses
  %i.k = alloca [68 x i8], align 8                ; 8 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [8 x i8], align 8                 ; 5 uses
  %i.n = alloca [16 x i8], align 4                ; 6 uses
  %i.o = alloca [14 x i8], align 8                ; 6 uses
  %i.p = alloca [44 x i8], align 4                ; 6 uses
  %i.q = alloca [16 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 4                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [1032 x i8], align 4              ; 6 uses
  %.sroa.94.i = alloca [1020 x i8], align 2       ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [40 x i8], align 1                ; 12 uses
  %i.w = alloca [9236 x i8], align 4              ; 38 uses
  %i.x = alloca [44 x i8], align 4                ; 14 uses
  %i.y = alloca [64 x i8], align 4                ; 6 uses
  %i.z = alloca [1032 x i8], align 4              ; 11 uses
  %i.aa = alloca [64 x i8], align 2               ; 12 uses
  %i.ab = alloca [4 x i8], align 1                ; 7 uses
  %i.ac = alloca [4 x i8], align 1                ; 8 uses
  %i.ad = alloca [4 x i8], align 1                ; 7 uses
  %i.ae = alloca [16 x i8], align 2               ; 9 uses
  %i.af = alloca [18 x i8], align 2               ; 18 uses
  %i.ag = alloca [14 x i8], align 1               ; 10 uses
  %i.ah = alloca [68 x i8], align 8               ; 16 uses
  %.sroa.7.sroa.11.i = alloca [1020 x i8], align 4 ; 5 uses
  %.sroa.9.i = alloca [64 x i8], align 4          ; 4 uses
  %.sroa.1018.i = alloca [8180 x i8], align 4     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3647)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3648)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0265.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6267.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 9360
  %.sroa.0.0.copyload.i = load i16, ptr %i.ai, align 4, !alias.scope !3648 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 9362 ; 2 uses
  %.sroa.6.sroa.0.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 9363
  %.sroa.6.sroa.0.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 9364
  %.sroa.6.sroa.0.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 9365
  %.sroa.6.sroa.0.sroa.8.0..sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 9366
  %.sroa.6.sroa.0.sroa.8.0.copyload.i = load i8, ptr %.sroa.6.sroa.0.sroa.8.0..sroa.6.0..sroa_idx.sroa_idx.i, align 2, !alias.scope !3648 ; 2 uses
  %.sroa.6.sroa.0.sroa.9.0..sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 9367
  %.sroa.6.sroa.0.sroa.9.0.copyload.i = load i8, ptr %.sroa.6.sroa.0.sroa.9.0..sroa.6.0..sroa_idx.sroa_idx.i, align 1, !alias.scope !3648 ; 2 uses
  %.sroa.6.sroa.0.sroa.10.0..sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 9368
  %.sroa.6.sroa.0.sroa.10.sroa.0.0.copyload.i = load i8, ptr %.sroa.6.sroa.0.sroa.10.0..sroa.6.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !3648 ; 2 uses
  %.sroa.6.sroa.0.sroa.10.sroa.5.0..sroa.6.sroa.0.sroa.10.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 9369
  %.sroa.6.sroa.0.sroa.10.sroa.5.0.copyload.i = load i8, ptr %.sroa.6.sroa.0.sroa.10.sroa.5.0..sroa.6.sroa.0.sroa.10.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i, align 1, !alias.scope !3648 ; 2 uses
  %.sroa.6.sroa.0.sroa.10.sroa.6.0..sroa.6.sroa.0.sroa.10.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 9370 ; 2 uses
  %.sroa.6.sroa.0.sroa.10.sroa.7.0..sroa.6.sroa.0.sroa.10.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 9371
  %.sroa.6.sroa.0.sroa.10.sroa.8.0..sroa.6.sroa.0.sroa.10.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 9372
  %.sroa.6.sroa.0.sroa.10.sroa.9.0..sroa.6.sroa.0.sroa.10.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 9373
  %5 = load <4 x i8>, ptr %.sroa.6.0..sroa_idx.i, align 2, !alias.scope !3648
  %.sroa.6.sroa.0.sroa.7.0.copyload.i = load i8, ptr %.sroa.6.sroa.0.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx.i, align 1, !alias.scope !3648
  %.sroa.6.sroa.0.sroa.6.0.copyload.i = load i8, ptr %.sroa.6.sroa.0.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !3648
  %.sroa.6.sroa.0.sroa.5.0.copyload.i = load i8, ptr %.sroa.6.sroa.0.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i, align 1, !alias.scope !3648
  %.sroa.6.sroa.0.sroa.0.0.copyload.i = load i8, ptr %.sroa.6.0..sroa_idx.i, align 2, !alias.scope !3648
  %6 = load <4 x i8>, ptr %.sroa.6.sroa.0.sroa.10.sroa.6.0..sroa.6.sroa.0.sroa.10.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i, align 2, !alias.scope !3648
  %.sroa.6.sroa.0.sroa.10.sroa.9.0.copyload.i = load i8, ptr %.sroa.6.sroa.0.sroa.10.sroa.9.0..sroa.6.sroa.0.sroa.10.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i, align 1, !alias.scope !3648
  %.sroa.6.sroa.0.sroa.10.sroa.8.0.copyload.i = load i8, ptr %.sroa.6.sroa.0.sroa.10.sroa.8.0..sroa.6.sroa.0.sroa.10.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i, align 4, !alias.scope !3648
  %.sroa.6.sroa.0.sroa.10.sroa.7.0.copyload.i = load i8, ptr %.sroa.6.sroa.0.sroa.10.sroa.7.0..sroa.6.sroa.0.sroa.10.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i, align 1, !alias.scope !3648
  %.sroa.6.sroa.0.sroa.10.sroa.6.0.copyload.i = load i8, ptr %.sroa.6.sroa.0.sroa.10.sroa.6.0..sroa.6.sroa.0.sroa.10.0..sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i, align 2, !alias.scope !3648
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 9374
  %i.aj = load <2 x i16>, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i, align 2, !alias.scope !3648
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 9280
  %.sroa.03.0.copyload.i = load i16, ptr %i.ak, align 4, !alias.scope !3648 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 9284
  %.sroa.8.0.copyload.i = load i8, ptr %.sroa.8.0..sroa_idx.i, align 4, !alias.scope !3648 ; 2 uses
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 9285
  %.sroa.10.0.copyload.i = load i8, ptr %.sroa.10.0..sroa_idx.i, align 1, !alias.scope !3648 ; 2 uses
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 9286
  %.sroa.12.0.copyload.i = load i16, ptr %.sroa.12.0..sroa_idx.i, align 2, !alias.scope !3648
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 9290
  %.sroa.14.0.copyload.i = load i8, ptr %.sroa.14.0..sroa_idx.i, align 2, !alias.scope !3648
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 9291
  %.sroa.15.0.copyload.i = load i8, ptr %.sroa.15.0..sroa_idx.i, align 1, !alias.scope !3648 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.11.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1018.i)
  %.sroa.013.0.copyload.i = load i32, ptr %1, align 4, !alias.scope !3648 ; 7 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.7.sroa.0.0.copyload.i = load i16, ptr %.sroa.7.0..sroa_idx.i, align 4, !alias.scope !3648 ; 3 uses
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 6
  %.sroa.7.sroa.7.0.copyload.i = load i16, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx.i, align 2, !alias.scope !3648 ; 3 uses
  %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.7.sroa.8.0.copyload.i = load i16, ptr %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !3648 ; 3 uses
  %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 10
  %.sroa.7.sroa.9.0.copyload.i = load i8, ptr %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx.sroa_idx.i, align 2, !alias.scope !3648 ; 5 uses
  %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 11
  %.sroa.7.sroa.10.0.copyload.i = load i8, ptr %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx.sroa_idx.i, align 1, !alias.scope !3648 ; 5 uses
  %.sroa.7.sroa.11.0..sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1020) %.sroa.7.sroa.11.i, ptr noundef nonnull readonly align 4 dereferenceable(1020) %.sroa.7.sroa.11.0..sroa.7.0..sroa_idx.sroa_idx.i, i64 1020, i1 false), !noalias !3649
  %.sroa.7.sroa.12.0..sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1032
  %.sroa.7.sroa.12.0.copyload.i = load i32, ptr %.sroa.7.sroa.12.0..sroa.7.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !3648 ; 4 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1036 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.sroa.9.i, ptr noundef nonnull readonly align 4 dereferenceable(64) %.sroa.9.0..sroa_idx.i, i64 64, i1 false), !noalias !3649
  %.sroa.1018.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(8180) %.sroa.1018.i, ptr noundef nonnull readonly align 4 dereferenceable(8180) %.sroa.1018.0..sroa_idx.i, i64 8180, i1 false), !noalias !3649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !3650
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 9292
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.ah, ptr noundef nonnull readonly align 4 dereferenceable(68) %i.al, i64 68, i1 false), !noalias !3649
  %.not.i = icmp eq i32 %.sroa.013.0.copyload.i, -1
  br i1 %.not.i, label %bb.b, label %switch.lookup, !prof !186

switch.lookup:                                    ; preds = %bb.a
  %i.am = icmp ne i32 %.sroa.013.0.copyload.i, 3
  tail call void @llvm.assume(i1 %i.am)
  %i.an = add i32 %.sroa.013.0.copyload.i, -2
  %i.ao = icmp ugt i32 %.sroa.013.0.copyload.i, 1
  %narrow.i = select i1 %i.ao, i32 %i.an, i32 1   ; 2 uses
  %switch.cast = zext i32 %narrow.i to i48
  %switch.shiftamt = shl nuw nsw i48 %switch.cast, 4
  %switch.downshift = lshr i48 8824125458432, %switch.shiftamt
  %switch.masked = trunc i48 %switch.downshift to i16 ; 4 uses
  switch i16 %.sroa.0.0.copyload.i, label %bb.f [
    i16 -2, label %bb.d
    i16 -1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @358, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @360) #62, !noalias !3651
  unreachable

bb.c:                                             ; preds = %bb.dl, %bb.x
  unreachable

bb.d:                                             ; preds = %bb.m, %bb.h, %switch.lookup
  switch i8 %.sroa.15.0.copyload.i, label %bb.o [
    i8 -1, label %bb.n
    i8 2, label %bb.q
  ]

bb.e:                                             ; preds = %switch.lookup
  switch i8 %.sroa.15.0.copyload.i, label %bb.j [
    i8 -1, label %bb.i
    i8 2, label %bb.l
  ]

bb.f:                                             ; preds = %switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !3650
  store i16 %.sroa.0.0.copyload.i, ptr %i.af, align 2, !noalias !3650
  %.sroa.624.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 2 ; 2 uses
  store i8 %.sroa.6.sroa.0.sroa.0.0.copyload.i, ptr %.sroa.624.0..sroa_idx.i, align 2, !noalias !3650
  %.sroa.624.sroa.6.0..sroa.624.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 3
  store i8 %.sroa.6.sroa.0.sroa.5.0.copyload.i, ptr %.sroa.624.sroa.6.0..sroa.624.0..sroa_idx.sroa_idx.i, align 1, !noalias !3650
  %.sroa.624.sroa.7.0..sroa.624.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  store i8 %.sroa.6.sroa.0.sroa.6.0.copyload.i, ptr %.sroa.624.sroa.7.0..sroa.624.0..sroa_idx.sroa_idx.i, align 2, !noalias !3650
  %.sroa.624.sroa.8.0..sroa.624.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 5
  store i8 %.sroa.6.sroa.0.sroa.7.0.copyload.i, ptr %.sroa.624.sroa.8.0..sroa.624.0..sroa_idx.sroa_idx.i, align 1, !noalias !3650
  %.sroa.624.sroa.9.0..sroa.624.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 6 ; 2 uses
  store i8 %.sroa.6.sroa.0.sroa.8.0.copyload.i, ptr %.sroa.624.sroa.9.0..sroa.624.0..sroa_idx.sroa_idx.i, align 2, !noalias !3650
  %.sroa.624.sroa.10.0..sroa.624.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 7
  store i8 %.sroa.6.sroa.0.sroa.9.0.copyload.i, ptr %.sroa.624.sroa.10.0..sroa.624.0..sroa_idx.sroa_idx.i, align 1, !noalias !3650
  %.sroa.624.sroa.11.0..sroa.624.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  store i8 %.sroa.6.sroa.0.sroa.10.sroa.0.0.copyload.i, ptr %.sroa.624.sroa.11.0..sroa.624.0..sroa_idx.sroa_idx.i, align 2, !noalias !3650
  %.sroa.624.sroa.11.sroa.6.0..sroa.624.sroa.11.0..sroa.624.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 9
  store i8 %.sroa.6.sroa.0.sroa.10.sroa.5.0.copyload.i, ptr %.sroa.624.sroa.11.sroa.6.0..sroa.624.sroa.11.0..sroa.624.0..sroa_idx.sroa_idx.sroa_idx.i, align 1, !noalias !3650
  %.sroa.624.sroa.11.sroa.7.0..sroa.624.sroa.11.0..sroa.624.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 10 ; 2 uses
  store i8 %.sroa.6.sroa.0.sroa.10.sroa.6.0.copyload.i, ptr %.sroa.624.sroa.11.sroa.7.0..sroa.624.sroa.11.0..sroa.624.0..sroa_idx.sroa_idx.sroa_idx.i, align 2, !noalias !3650
  %.sroa.624.sroa.11.sroa.8.0..sroa.624.sroa.11.0..sroa.624.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 11
  store i8 %.sroa.6.sroa.0.sroa.10.sroa.7.0.copyload.i, ptr %.sroa.624.sroa.11.sroa.8.0..sroa.624.sroa.11.0..sroa.624.0..sroa_idx.sroa_idx.sroa_idx.i, align 1, !noalias !3650
  %.sroa.624.sroa.11.sroa.9.0..sroa.624.sroa.11.0..sroa.624.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i8 %.sroa.6.sroa.0.sroa.10.sroa.8.0.copyload.i, ptr %.sroa.624.sroa.11.sroa.9.0..sroa.624.sroa.11.0..sroa.624.0..sroa_idx.sroa_idx.sroa_idx.i, align 2, !noalias !3650
  %.sroa.624.sroa.11.sroa.10.0..sroa.624.sroa.11.0..sroa.624.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 13
  store i8 %.sroa.6.sroa.0.sroa.10.sroa.9.0.copyload.i, ptr %.sroa.624.sroa.11.sroa.10.0..sroa.624.sroa.11.0..sroa.624.0..sroa_idx.sroa_idx.sroa_idx.i, align 1, !noalias !3650
  %.sroa.925.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 14
  store <2 x i16> %i.aj, ptr %.sroa.925.0..sroa_idx.i, align 2, !noalias !3650
  call void @_RNvMNtNtCsiwebgwkgVmN_10etherparse4link23linux_sll_protocol_typeNtB2_20LinuxSllProtocolType12change_value(ptr noalias nofree noundef nonnull align 2 dereferenceable(4) %i.af, i16 noundef %switch.masked) #52, !noalias !3651
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !3650
  call void @llvm.experimental.noalias.scope.decl(metadata !3652)
  call void @llvm.experimental.noalias.scope.decl(metadata !3653)
  %i.ap = load i16, ptr %.sroa.624.sroa.7.0..sroa.624.0..sroa_idx.sroa_idx.i, align 2, !alias.scope !3653, !noalias !3650, !noundef !177
  %i.aq = load i16, ptr %.sroa.624.sroa.9.0..sroa.624.0..sroa_idx.sroa_idx.i, align 2, !alias.scope !3653, !noalias !3650, !noundef !177
  %i.ar = load i16, ptr %.sroa.624.sroa.11.0..sroa.624.0..sroa_idx.sroa_idx.i, align 2, !alias.scope !3653, !noalias !3650, !noundef !177
  %i.as = load i16, ptr %.sroa.624.0..sroa_idx.i, align 2, !alias.scope !3653, !noalias !3650, !noundef !177
  %i.at = call i16 @llvm.bswap.i16(i16 %i.ar)
  %i.au = call i16 @llvm.bswap.i16(i16 %i.aq)
  %i.av = call i16 @llvm.bswap.i16(i16 %i.ap)
  %i.aw = call i16 @llvm.bswap.i16(i16 %i.as)
  store i16 %i.av, ptr %i.ae, align 2, !alias.scope !3652, !noalias !3650
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  store i16 %i.au, ptr %i.ax, align 2, !alias.scope !3652, !noalias !3650
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i16 %i.at, ptr %i.ay, align 2, !alias.scope !3652, !noalias !3650
  %i.az = getelementptr inbounds nuw i8, ptr %i.ae, i64 6
  %i.ba = load <8 x i8>, ptr %.sroa.624.sroa.11.sroa.7.0..sroa.624.sroa.11.0..sroa.624.0..sroa_idx.sroa_idx.sroa_idx.i, align 2, !alias.scope !3653, !noalias !3650
  store <8 x i8> %i.ba, ptr %i.az, align 2, !alias.scope !3652, !noalias !3650
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ae, i64 14
  store i16 %i.aw, ptr %i.bb, align 2, !alias.scope !3652, !noalias !3650
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %bb.f
  %.sroa.0.010.i.i.i = phi ptr [ %i.bh, %bb.g ], [ %i.ae, %bb.f ] ; 2 uses
  %.sroa.6.09.i.i.i = phi i64 [ %i.bg, %bb.g ], [ 16, %bb.f ] ; 2 uses
  %.val.i.i.i.i = load i64, ptr %i.bc, align 8, !alias.scope !3654, !noalias !3655, !noundef !177 ; 2 uses
  %i.bd = sub i64 9223372036854775807, %.val.i.i.i.i
  %i.be = call i64 @llvm.umin.i64(i64 %i.bd, i64 range(i64 1, -9223372036854775808) %.sroa.6.09.i.i.i) ; 3 uses
  call void @_RNvXs2_NtCsknai52m1gBp_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.010.i.i.i, i64 noundef %i.be) #52, !noalias !3651
  %i.bf = icmp eq i64 %.val.i.i.i.i, 9223372036854775807
  br i1 %i.bf, label %_RNvXs0_NtCsiwebgwkgVmN_10etherparse6writerINtB5_8IoWriterINtNtNtCsknai52m1gBp_5bytes3buf6writer6WriterNtNtB10_9bytes_mut8BytesMutEENtB5_9CoreWrite9write_allCsgZAIVb0XKpv_9ssservice.exit.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.bg = sub nuw nsw i64 %.sroa.6.09.i.i.i, %i.be ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i, i64 %i.be
  %i.bi = icmp eq i64 %i.bg, 0
  br i1 %i.bi, label %bb.h, label %.lr.ph.i.i.i

_RNvXs0_NtCsiwebgwkgVmN_10etherparse6writerINtB5_8IoWriterINtNtNtCsknai52m1gBp_5bytes3buf6writer6WriterNtNtB10_9bytes_mut8BytesMutEENtB5_9CoreWrite9write_allCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %.lr.ph.i.i.i
  store ptr @3944, ptr %0, align 8, !alias.scope !3647
  %.sroa.581.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 17, ptr %.sroa.581.0..sroa_idx.i, align 8, !alias.scope !3647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !3650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !3650
  br label %_RINvNtCsiwebgwkgVmN_10etherparse14packet_builder20final_write_with_netINtNtB4_6writer8IoWriterINtNtNtCsknai52m1gBp_5bytes3buf6writer6WriterNtNtB1B_9bytes_mut8BytesMutEENtNtNtB4_9transport10udp_header9UdpHeaderNtNtNtNtB4_3err6packet17build_write_error15BuildWriteErrorECsgZAIVb0XKpv_9ssservice.exit

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !3650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !3650
  br label %bb.d

bb.i:                                             ; preds = %bb.e
  %i.bj = tail call i16 @llvm.bswap.i16(i16 %switch.masked)
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i, %bb.e
  %.sroa.0131.0.i = phi i16 [ %i.bj, %bb.i ], [ 129, %bb.l ], [ -22392, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !3650
  store i8 %.sroa.6.sroa.0.sroa.10.sroa.0.0.copyload.i, ptr %i.ag, align 1, !noalias !3650
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  store i8 %.sroa.6.sroa.0.sroa.10.sroa.5.0.copyload.i, ptr %i.bk, align 1, !noalias !3650
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %7 = shufflevector <4 x i8> %6, <4 x i8> %5, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x i8> %7, ptr %i.bl, align 1, !noalias !3650
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ag, i64 10
  store i8 %.sroa.6.sroa.0.sroa.8.0.copyload.i, ptr %i.bm, align 1, !noalias !3650
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 11
  store i8 %.sroa.6.sroa.0.sroa.9.0.copyload.i, ptr %i.bn, align 1, !noalias !3650
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i16 %.sroa.0131.0.i, ptr %i.bo, align 1, !noalias !3650
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %.lr.ph.i.i192.i

.lr.ph.i.i192.i:                                  ; preds = %bb.k, %bb.j
  %.sroa.0.010.i.i193.i = phi ptr [ %i.bu, %bb.k ], [ %i.ag, %bb.j ] ; 2 uses
  %.sroa.6.09.i.i194.i = phi i64 [ %i.bt, %bb.k ], [ 14, %bb.j ] ; 2 uses
  %.val.i.i.i195.i = load i64, ptr %i.bp, align 8, !alias.scope !3656, !noalias !3657, !noundef !177 ; 2 uses
  %i.bq = sub i64 9223372036854775807, %.val.i.i.i195.i
  %i.br = call i64 @llvm.umin.i64(i64 %i.bq, i64 range(i64 1, -9223372036854775808) %.sroa.6.09.i.i194.i) ; 3 uses
  call void @_RNvXs2_NtCsknai52m1gBp_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.010.i.i193.i, i64 noundef %i.br) #52, !noalias !3651
  %i.bs = icmp eq i64 %.val.i.i.i195.i, 9223372036854775807
  br i1 %i.bs, label %_RNvXs0_NtCsiwebgwkgVmN_10etherparse6writerINtB5_8IoWriterINtNtNtCsknai52m1gBp_5bytes3buf6writer6WriterNtNtB10_9bytes_mut8BytesMutEENtB5_9CoreWrite9write_allCsgZAIVb0XKpv_9ssservice.exit197.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i192.i
  %i.bt = sub nuw nsw i64 %.sroa.6.09.i.i194.i, %i.br ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i193.i, i64 %i.br
  %i.bv = icmp eq i64 %i.bt, 0
  br i1 %i.bv, label %bb.m, label %.lr.ph.i.i192.i

bb.l:                                             ; preds = %bb.e
  br label %bb.j

_RNvXs0_NtCsiwebgwkgVmN_10etherparse6writerINtB5_8IoWriterINtNtNtCsknai52m1gBp_5bytes3buf6writer6WriterNtNtB10_9bytes_mut8BytesMutEENtB5_9CoreWrite9write_allCsgZAIVb0XKpv_9ssservice.exit197.i: ; preds = %.lr.ph.i.i192.i
  store ptr @3944, ptr %0, align 8, !alias.scope !3647
  %.sroa.553.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 17, ptr %.sroa.553.0..sroa_idx.i, align 8, !alias.scope !3647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !3650
  br label %_RINvNtCsiwebgwkgVmN_10etherparse14packet_builder20final_write_with_netINtNtB4_6writer8IoWriterINtNtNtCsknai52m1gBp_5bytes3buf6writer6WriterNtNtB1B_9bytes_mut8BytesMutEENtNtNtB4_9transport10udp_header9UdpHeaderNtNtNtNtB4_3err6packet17build_write_error15BuildWriteErrorECsgZAIVb0XKpv_9ssservice.exit

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !3650
  br label %bb.d

bb.n:                                             ; preds = %bb.v, %bb.s, %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ah, i64 67 ; 4 uses
  %i.bx = load i8, ptr %i.bw, align 1, !range !3658, !noalias !3650, !noundef !177 ; 12 uses
  %.not152.i = icmp eq i8 %i.bx, -1               ; 4 uses
  br i1 %.not152.i, label %bb.x, label %bb.w

bb.o:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !3650
  %i.by = call i16 @llvm.bswap.i16(i16 %.sroa.03.0.copyload.i) ; 2 uses
  %.sroa.073.0.extract.trunc.i = trunc i16 %i.by to i8
  %.sroa.5.0.extract.shift.i = lshr i16 %i.by, 8
  %.sroa.5.0.extract.trunc.i = trunc nuw i16 %.sroa.5.0.extract.shift.i to i8
  %i.bz = shl i8 %.sroa.10.0.copyload.i, 4
  %i.ca = shl i8 %.sroa.8.0.copyload.i, 5
  %.sroa.077.0.i = or i8 %i.ca, %.sroa.073.0.extract.trunc.i
  %i.cb = or i8 %.sroa.077.0.i, %i.bz
  store i8 %i.cb, ptr %i.ac, align 1, !noalias !3650
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store i8 %.sroa.5.0.extract.trunc.i, ptr %i.cc, align 1, !noalias !3650
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  store i8 -127, ptr %i.cd, align 1, !noalias !3650
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ac, i64 3
  store i8 0, ptr %i.ce, align 1, !noalias !3650
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %.lr.ph.i.i198.i

.lr.ph.i.i198.i:                                  ; preds = %bb.p, %bb.o
  %.sroa.0.010.i.i199.i = phi ptr [ %i.ck, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  %.sroa.6.09.i.i200.i = phi i64 [ %i.cj, %bb.p ], [ 4, %bb.o ] ; 2 uses
  %.val.i.i.i201.i = load i64, ptr %i.cf, align 8, !alias.scope !3659, !noalias !3660, !noundef !177 ; 2 uses
  %i.cg = sub i64 9223372036854775807, %.val.i.i.i201.i
  %i.ch = call i64 @llvm.umin.i64(i64 %i.cg, i64 range(i64 1, -9223372036854775808) %.sroa.6.09.i.i200.i) ; 3 uses
  call void @_RNvXs2_NtCsknai52m1gBp_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.010.i.i199.i, i64 noundef %i.ch) #52, !noalias !3651
  %i.ci = icmp eq i64 %.val.i.i.i201.i, 9223372036854775807
  br i1 %i.ci, label %_RNvXs0_NtCsiwebgwkgVmN_10etherparse6writerINtB5_8IoWriterINtNtNtCsknai52m1gBp_5bytes3buf6writer6WriterNtNtB10_9bytes_mut8BytesMutEENtB5_9CoreWrite9write_allCsgZAIVb0XKpv_9ssservice.exit203.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i198.i
  %i.cj = sub nuw nsw i64 %.sroa.6.09.i.i200.i, %i.ch ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i199.i, i64 %i.ch
  %i.cl = icmp eq i64 %i.cj, 0
  br i1 %i.cl, label %bb.t, label %.lr.ph.i.i198.i

bb.q:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !3650
  %i.cm = call i16 @llvm.bswap.i16(i16 %.sroa.03.0.copyload.i) ; 2 uses
  %.sroa.078.0.extract.trunc.i = trunc i16 %i.cm to i8
  %.sroa.580.0.extract.shift.i = lshr i16 %i.cm, 8
  %.sroa.580.0.extract.trunc.i = trunc nuw i16 %.sroa.580.0.extract.shift.i to i8
  %i.cn = call i16 @llvm.bswap.i16(i16 %switch.masked)
  %i.co = shl i8 %.sroa.10.0.copyload.i, 4
  %i.cp = shl i8 %.sroa.8.0.copyload.i, 5
  %.sroa.083.0.i = or i8 %i.cp, %.sroa.078.0.extract.trunc.i
  %i.cq = or i8 %.sroa.083.0.i, %i.co
  store i8 %i.cq, ptr %i.ad, align 1, !noalias !3650
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store i8 %.sroa.580.0.extract.trunc.i, ptr %i.cr, align 1, !noalias !3650
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  store i16 %i.cn, ptr %i.cs, align 1, !noalias !3650
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %.lr.ph.i.i204.i

.lr.ph.i.i204.i:                                  ; preds = %bb.r, %bb.q
  %.sroa.0.010.i.i205.i = phi ptr [ %i.cy, %bb.r ], [ %i.ad, %bb.q ] ; 2 uses
  %.sroa.6.09.i.i206.i = phi i64 [ %i.cx, %bb.r ], [ 4, %bb.q ] ; 2 uses
  %.val.i.i.i207.i = load i64, ptr %i.ct, align 8, !alias.scope !3661, !noalias !3662, !noundef !177 ; 2 uses
  %i.cu = sub i64 9223372036854775807, %.val.i.i.i207.i
  %i.cv = call i64 @llvm.umin.i64(i64 %i.cu, i64 range(i64 1, -9223372036854775808) %.sroa.6.09.i.i206.i) ; 3 uses
  call void @_RNvXs2_NtCsknai52m1gBp_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.010.i.i205.i, i64 noundef %i.cv) #52, !noalias !3651
  %i.cw = icmp eq i64 %.val.i.i.i207.i, 9223372036854775807
  br i1 %i.cw, label %_RNvXs0_NtCsiwebgwkgVmN_10etherparse6writerINtB5_8IoWriterINtNtNtCsknai52m1gBp_5bytes3buf6writer6WriterNtNtB10_9bytes_mut8BytesMutEENtB5_9CoreWrite9write_allCsgZAIVb0XKpv_9ssservice.exit209.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i204.i
  %i.cx = sub nuw nsw i64 %.sroa.6.09.i.i206.i, %i.cv ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i205.i, i64 %i.cv
  %i.cz = icmp eq i64 %i.cx, 0
  br i1 %i.cz, label %bb.s, label %.lr.ph.i.i204.i

_RNvXs0_NtCsiwebgwkgVmN_10etherparse6writerINtB5_8IoWriterINtNtNtCsknai52m1gBp_5bytes3buf6writer6WriterNtNtB10_9bytes_mut8BytesMutEENtB5_9CoreWrite9write_allCsgZAIVb0XKpv_9ssservice.exit209.i: ; preds = %.lr.ph.i.i204.i
  store ptr @3944, ptr %0, align 8, !alias.scope !3647
  %.sroa.5109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 17, ptr %.sroa.5109.0..sroa_idx.i, align 8, !alias.scope !3647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !3650
  br label %_RINvNtCsiwebgwkgVmN_10etherparse14packet_builder20final_write_with_netINtNtB4_6writer8IoWriterINtNtNtCsknai52m1gBp_5bytes3buf6writer6WriterNtNtB1B_9bytes_mut8BytesMutEENtNtNtB4_9transport10udp_header9UdpHeaderNtNtNtNtB4_3err6packet17build_write_error15BuildWriteErrorECsgZAIVb0XKpv_9ssservice.exit

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !3650
  br label %bb.n

_RNvXs0_NtCsiwebgwkgVmN_10etherparse6writerINtB5_8IoWriterINtNtNtCsknai52m1gBp_5bytes3buf6writer6WriterNtNtB10_9bytes_mut8BytesMutEENtB5_9CoreWrite9write_allCsgZAIVb0XKpv_9ssservice.exit203.i: ; preds = %.lr.ph.i.i198.i
  store ptr @3944, ptr %0, align 8, !alias.scope !3647
  %.sroa.5137.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 17, ptr %.sroa.5137.0..sroa_idx.i, align 8, !alias.scope !3647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !3650
  br label %_RINvNtCsiwebgwkgVmN_10etherparse14packet_builder20final_write_with_netINtNtB4_6writer8IoWriterINtNtNtCsknai52m1gBp_5bytes3buf6writer6WriterNtNtB1B_9bytes_mut8BytesMutEENtNtNtB4_9transport10udp_header9UdpHeaderNtNtNtNtB4_3err6packet17build_write_error15BuildWriteErrorECsgZAIVb0XKpv_9ssservice.exit

bb.t:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !3650
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !3650
  %i.da = call i16 @llvm.bswap.i16(i16 %.sroa.12.0.copyload.i) ; 2 uses
  %.sroa.084.0.extract.trunc.i = trunc i16 %i.da to i8
  %.sroa.586.0.extract.shift.i = lshr i16 %i.da, 8
  %.sroa.586.0.extract.trunc.i = trunc nuw i16 %.sroa.586.0.extract.shift.i to i8
  %i.db = call i16 @llvm.bswap.i16(i16 %switch.masked)
  %i.dc = shl i8 %.sroa.15.0.copyload.i, 4
  %i.dd = shl i8 %.sroa.14.0.copyload.i, 5
  %.sroa.089.0.i = or i8 %i.dd, %.sroa.084.0.extract.trunc.i
  %i.de = or i8 %.sroa.089.0.i, %i.dc
  store i8 %i.de, ptr %i.ab, align 1, !noalias !3650
  %i.df = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store i8 %.sroa.586.0.extract.trunc.i, ptr %i.df, align 1, !noalias !3650
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  store i16 %i.db, ptr %i.dg, align 1, !noalias !3650
  br label %.lr.ph.i.i210.i

.lr.ph.i.i210.i:                                  ; preds = %bb.u, %bb.t
  %.sroa.0.010.i.i211.i = phi ptr [ %i.dl, %bb.u ], [ %i.ab, %bb.t ] ; 2 uses
  %.sroa.6.09.i.i212.i = phi i64 [ %i.dk, %bb.u ], [ 4, %bb.t ] ; 2 uses
  %.val.i.i.i213.i = load i64, ptr %i.cf, align 8, !alias.scope !3663, !noalias !3664, !noundef !177 ; 2 uses
  %i.dh = sub i64 9223372036854775807, %.val.i.i.i213.i
  %i.di = call i64 @llvm.umin.i64(i64 %i.dh, i64 range(i64 1, -9223372036854775808) %.sroa.6.09.i.i212.i) ; 3 uses
  call void @_RNvXs2_NtCsknai52m1gBp_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.010.i.i211.i, i64 noundef %i.di) #52, !noalias !3651
  %i.dj = icmp eq i64 %.val.i.i.i213.i, 9223372036854775807
  br i1 %i.dj, label %_RNvXs0_NtCsiwebgwkgVmN_10etherparse6writerINtB5_8IoWriterINtNtNtCsknai52m1gBp_5bytes3buf6writer6WriterNtNtB10_9bytes_mut8BytesMutEENtB5_9CoreWrite9write_allCsgZAIVb0XKpv_9ssservice.exit215.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i210.i
  %i.dk = sub nuw nsw i64 %.sroa.6.09.i.i212.i, %i.di ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i211.i, i64 %i.di
  %i.dm = icmp eq i64 %i.dk, 0
  br i1 %i.dm, label %bb.v, label %.lr.ph.i.i210.i

_RNvXs0_NtCsiwebgwkgVmN_10etherparse6writerINtB5_8IoWriterINtNtNtCsknai52m1gBp_5bytes3buf6writer6WriterNtNtB10_9bytes_mut8BytesMutEENtB5_9CoreWrite9write_allCsgZAIVb0XKpv_9ssservice.exit215.i: ; preds = %.lr.ph.i.i210.i
  store ptr @3944, ptr %0, align 8, !alias.scope !3647
  %.sroa.5165.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 17, ptr %.sroa.5165.0..sroa_idx.i, align 8, !alias.scope !3647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !3650
  br label %_RINvNtCsiwebgwkgVmN_10etherparse14packet_builder20final_write_with_netINtNtB4_6writer8IoWriterINtNtNtCsknai52m1gBp_5bytes3buf6writer6WriterNtNtB1B_9bytes_mut8BytesMutEENtNtNtB4_9transport10udp_header9UdpHeaderNtNtNtNtB4_3err6packet17build_write_error15BuildWriteErrorECsgZAIVb0XKpv_9ssservice.exit

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !3650
  br label %bb.n

bb.w:                                             ; preds = %bb.n
  %i.dn = icmp ne i8 %i.bx, 3
  call void @llvm.assume(i1 %i.dn)
  %i.do = icmp eq i8 %i.bx, 2
  br i1 %i.do, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.y, %bb.w, %bb.n
  switch i32 %narrow.i, label %bb.c [
    i32 0, label %bb.z
    i32 1, label %bb.aa
    i32 2, label %bb.ad
  ]

bb.y:                                             ; preds = %bb.w
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.dq = trunc i64 %4 to i16
  %i.dr = add i16 %i.dq, 8
  store i16 %i.dr, ptr %i.dp, align 4, !noalias !3650
  br label %bb.x

end_hunk_0
begin_hunk_1_@_RNvMs3_NtNtCscVsx2cUGvkQ_12futures_util4lock5mutexINtB5_5MutexNtNtCs8AjStw0eGtC_16hickory_resolver16name_server_pool24NameServerTransportStateE12remove_wakerCsgZAIVb0XKpv_9ssservice:bb.a

bb.h:                                             ; preds = %bb.g, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardINtCs1xKDb8L2iy4_4slab4SlabNtNtNtCscVsx2cUGvkQ_12futures_util4lock5mutex6WaiterEEINtBM_11PoisonErrorBH_EE6unwrapCsgZAIVb0XKpv_9ssservice.exit
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2222, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2226) #62, !noalias !89397
  unreachable

_RNvMs3_Cs1xKDb8L2iy4_4slabINtB5_4SlabNtNtNtCscVsx2cUGvkQ_12futures_util4lock5mutex6WaiterE6removeCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !89399, !noundef !177
  %.sroa.4.0..sroa.0.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa.0.0..sroa_idx.i.i, align 8, !noalias !89400 ; 2 uses
  %.sroa.5.0..sroa.0.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa.0.0..sroa_idx.i.i, align 8, !noalias !89400
  store i64 0, ptr %i.t, align 8, !noalias !89400
  store i64 %i.x, ptr %.sroa.4.0..sroa.0.0..sroa_idx.i.i, align 8, !noalias !89400
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !89399, !noundef !177
  %i.aa = add i64 %i.z, -1
  store i64 %i.aa, ptr %i.y, align 8, !alias.scope !89399
  store i64 %1, ptr %i.w, align 8, !alias.scope !89399
  %i.ab = icmp eq ptr %.sroa.4.0.copyload.i.i, null ; 2 uses
  %brmerge.not = and i1 %2, %i.ab
  br i1 %brmerge.not, label %bb.j, label %_RNvXso_Cs1xKDb8L2iy4_4slabINtB5_7IterMutNtNtNtCscVsx2cUGvkQ_12futures_util4lock5mutex6WaiterENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread

_RNvXso_Cs1xKDb8L2iy4_4slabINtB5_7IterMutNtNtNtCscVsx2cUGvkQ_12futures_util4lock5mutex6WaiterENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread: ; preds = %bb.k, %bb.j, %bb.l, %_RNvMs3_Cs1xKDb8L2iy4_4slabINtB5_4SlabNtNtNtCscVsx2cUGvkQ_12futures_util4lock5mutex6WaiterE6removeCsgZAIVb0XKpv_9ssservice.exit
  br i1 %i.ab, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscVsx2cUGvkQ_12futures_util4lock5mutex6WaiterECsgZAIVb0XKpv_9ssservice.exit, label %bb.i

bb.i:                                             ; preds = %_RNvXso_Cs1xKDb8L2iy4_4slabINtB5_7IterMutNtNtNtCscVsx2cUGvkQ_12futures_util4lock5mutex6WaiterENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !177, !noundef !177
  tail call void %i.ad(ptr noundef %.sroa.5.0.copyload.i.i) #52, !inline_history !156
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscVsx2cUGvkQ_12futures_util4lock5mutex6WaiterECsgZAIVb0XKpv_9ssservice.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscVsx2cUGvkQ_12futures_util4lock5mutex6WaiterECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvXso_Cs1xKDb8L2iy4_4slabINtB5_7IterMutNtNtNtCscVsx2cUGvkQ_12futures_util4lock5mutex6WaiterENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread, %bb.i
  %i.ae = load i64, ptr %i.y, align 8, !noundef !177
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.r, label %bb.m

bb.j:                                             ; preds = %_RNvMs3_Cs1xKDb8L2iy4_4slabINtB5_4SlabNtNtNtCscVsx2cUGvkQ_12futures_util4lock5mutex6WaiterE6removeCsgZAIVb0XKpv_9ssservice.exit
  %i.ag = load ptr, ptr %i.r, align 8, !nonnull !177, !noundef !177 ; 2 uses
  %i.ah = load i64, ptr %i.o, align 8, !noundef !177 ; 2 uses
  %.idx = mul nuw nsw i64 %i.ah, 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx
  %i.aj = icmp eq i64 %i.ah, 0
  br i1 %i.aj, label %_RNvXso_Cs1xKDb8L2iy4_4slabINtB5_7IterMutNtNtNtCscVsx2cUGvkQ_12futures_util4lock5mutex6WaiterENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread, label %.lr.ph

bb.k:                                             ; preds = %.lr.ph
  %i.ak = getelementptr inbounds nuw i8, ptr %i.am, i64 24 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.ai
  br i1 %i.al, label %_RNvXso_Cs1xKDb8L2iy4_4slabINtB5_7IterMutNtNtNtCscVsx2cUGvkQ_12futures_util4lock5mutex6WaiterENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %bb.k
  %i.am = phi ptr [ %i.ak, %bb.k ], [ %i.ag, %bb.j ] ; 3 uses
  %i.an = load i64, ptr %i.am, align 8, !range !181, !noalias !89401, !noundef !177
  %i.ao = trunc nuw i64 %i.an to i1
  br i1 %i.ao, label %bb.l, label %bb.k

bb.l:                                             ; preds = %.lr.ph
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  tail call void @_RNvMs1_NtNtCscVsx2cUGvkQ_12futures_util4lock5mutexNtB5_6Waiter4wake(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ap) #52
  br label %_RNvXso_Cs1xKDb8L2iy4_4slabINtB5_7IterMutNtNtNtCscVsx2cUGvkQ_12futures_util4lock5mutex6WaiterENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread

bb.m:                                             ; preds = %bb.r, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscVsx2cUGvkQ_12futures_util4lock5mutex6WaiterECsgZAIVb0XKpv_9ssservice.exit
  br i1 %i.n, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ar = and i64 %i.aq, 9223372036854775807
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.o, !prof !191

bb.o:                                             ; preds = %bb.n
  %i.at = tail call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #59
  br i1 %i.at, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  store atomic i8 1, ptr %i.k monotonic, align 4
  br label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %i.au = atomicrmw xchg ptr %0, i32 0 release, align 4
  %i.av = icmp eq i32 %i.au, 2
  br i1 %i.av, label %bb.q, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardINtCs1xKDb8L2iy4_4slab4SlabNtNtNtCscVsx2cUGvkQ_12futures_util4lock5mutex6WaiterEEECsgZAIVb0XKpv_9ssservice.exit, !prof !186

bb.q:                                             ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %0) #52
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardINtCs1xKDb8L2iy4_4slab4SlabNtNtNtCscVsx2cUGvkQ_12futures_util4lock5mutex6WaiterEEECsgZAIVb0XKpv_9ssservice.exit

bb.r:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCscVsx2cUGvkQ_12futures_util4lock5mutex6WaiterECsgZAIVb0XKpv_9ssservice.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ax = atomicrmw and ptr %i.aw, i64 -3 monotonic, align 8 ; 0 uses
  br label %bb.m
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB5_5QueueNtNtB7_6stream10NextAcceptE4pushCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(20) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = load atomic i64, ptr @_RNvNtCs1kwRxRulhfk_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.p = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB7_5QueuepE4push10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.p, label %bb.c [
    i8 0, label %bb.e
    i8 1, label %bb.d
    i8 2, label %bb.d
  ], !prof !184

bb.c:                                             ; preds = %bb.b
  %i.q = tail call noundef i8 @_RNvMNtCs1kwRxRulhfk_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB7_5QueuepE4push10___CALLSITE) #59 ; 2 uses
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.c
  %.sroa.07.0 = phi i8 [ %i.q, %bb.c ], [ %i.p, %bb.b ], [ %i.p, %bb.b ]
  %i.s = load ptr, ptr @_RNvNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB7_5QueuepE4push10___CALLSITE, align 8, !nonnull !177, !align !185, !noundef !177
  %i.t = tail call noundef zeroext i1 @_RNvNtCsb1q9vQXIC0o_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.s, i8 noundef %.sroa.07.0) #52
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.f, %bb.d
  %i.u = call noundef nonnull align 8 ptr @_RNvXs7_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeNtB5_3PtrNtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) #52
  %i.v = getelementptr i8, ptr %i.u, i64 318
  %.val = load i8, ptr %i.v, align 2, !range !180, !noundef !177
  %i.w = trunc nuw i8 %.val to i1
  br i1 %i.w, label %bb.u, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.x = load ptr, ptr @_RNvNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB7_5QueuepE4push10___CALLSITE, align 8, !nonnull !177, !align !185, !noundef !177 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr @2229, ptr %i.l, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr inttoptr (i64 33 to ptr), ptr %i.z, align 8
  store ptr %i.l, ptr %i.m, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @19, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 1, ptr %i.d, align 8
  %.sroa.09.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.m, ptr %.sroa.09.sroa.4.0..sroa_idx, align 8
  %.sroa.09.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 1, ptr %.sroa.09.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.y, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_RNvMNtCs1kwRxRulhfk_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.e

bb.g:                                             ; preds = %bb.e
  %i.ab = call noundef nonnull align 8 ptr @_RNvXs8_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeNtB5_3PtrNtNtNtCsf3Ta7LF998c_4core3ops5deref8DerefMut9deref_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1) #52
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 318
  store i8 1, ptr %i.ac, align 2, !alias.scope !89407
  %i.ad = load i32, ptr %0, align 4, !range !195, !noundef !177
  %i.ae = trunc nuw i32 %i.ad to i1
  %i.af = load atomic i64, ptr @_RNvNtCs1kwRxRulhfk_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ag = icmp eq i64 %i.af, 0                    ; 2 uses
  br i1 %i.ae, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.ag, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ah = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB7_5QueuepE4pushs1_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.ah, label %bb.j [
    i8 0, label %bb.l
    i8 1, label %bb.k
    i8 2, label %bb.k
  ], !prof !184

bb.j:                                             ; preds = %bb.i
  %i.ai = call noundef i8 @_RNvMNtCs1kwRxRulhfk_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB7_5QueuepE4pushs1_10___CALLSITE) #59 ; 2 uses
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.i, %bb.j
  %.sroa.036.0 = phi i8 [ %i.ai, %bb.j ], [ %i.ah, %bb.i ], [ %i.ah, %bb.i ]
  %i.ak = load ptr, ptr @_RNvNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB7_5QueuepE4pushs1_10___CALLSITE, align 8, !nonnull !177, !align !185, !noundef !177
  %i.al = call noundef zeroext i1 @_RNvNtCsb1q9vQXIC0o_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ak, i8 noundef %.sroa.036.0) #52
  br i1 %i.al, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.m, %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 1, ptr %0, align 4
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %2 = load <2 x i32>, ptr %i.am, align 8
  %3 = shufflevector <2 x i32> %2, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x i32> %3, ptr %.sroa.441.0..sroa_idx, align 4
  br label %bb.t

bb.m:                                             ; preds = %bb.k
  %i.an = load ptr, ptr @_RNvNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB7_5QueuepE4pushs1_10___CALLSITE, align 8, !nonnull !177, !align !185, !noundef !177 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @2230, ptr %i.e, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 31 to ptr), ptr %i.ap, align 8
  store ptr %i.e, ptr %i.f, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @19, ptr %i.aq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %.sroa.038.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %.sroa.038.sroa.4.0..sroa_idx, align 8
  %.sroa.038.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %.sroa.038.sroa.5.0..sroa_idx, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.ao, ptr %.sroa.439.0..sroa_idx, align 8
  call void @_RNvMNtCs1kwRxRulhfk_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.an, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.l

bb.n:                                             ; preds = %bb.g
  br i1 %i.ag, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ar = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB7_5QueuepE4pushs0_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.ar, label %bb.p [
    i8 0, label %bb.r
    i8 1, label %bb.q
    i8 2, label %bb.q
  ], !prof !184

bb.p:                                             ; preds = %bb.o
  %i.as = call noundef i8 @_RNvMNtCs1kwRxRulhfk_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB7_5QueuepE4pushs0_10___CALLSITE) #59 ; 2 uses
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.o, %bb.p
  %.sroa.026.0 = phi i8 [ %i.as, %bb.p ], [ %i.ar, %bb.o ], [ %i.ar, %bb.o ]
  %i.au = load ptr, ptr @_RNvNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB7_5QueuepE4pushs0_10___CALLSITE, align 8, !nonnull !177, !align !185, !noundef !177
  %i.av = call noundef zeroext i1 @_RNvNtCsb1q9vQXIC0o_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.au, i8 noundef %.sroa.026.0) #52
  br i1 %i.av, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.s, %bb.q
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ay = load ptr, ptr %1, align 8, !nonnull !177, !align !185, !noundef !177
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ba = load <2 x i32>, ptr %i.ax, align 4
  store <2 x i32> %i.ba, ptr %i.az, align 8
  store ptr %i.ay, ptr %i.g, align 8
  %i.bb = load <2 x i32>, ptr %i.aw, align 8
  %i.bc = call noundef nonnull align 8 ptr @_RNvXs8_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeNtB5_3PtrNtNtNtCsf3Ta7LF998c_4core3ops5deref8DerefMut9deref_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g) #52 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 244
  store i32 1, ptr %i.bd, align 4, !alias.scope !89408
  %.sroa.4.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %i.bc, i64 248
  store <2 x i32> %i.bb, ptr %.sroa.4.0..sroa_idx64, align 8, !alias.scope !89408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.be = load <2 x i32>, ptr %i.aw, align 8
  store <2 x i32> %i.be, ptr %i.ax, align 4
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bf = load ptr, ptr @_RNvNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB7_5QueuepE4pushs0_10___CALLSITE, align 8, !nonnull !177, !align !185, !noundef !177 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @2231, ptr %i.h, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr inttoptr (i64 41 to ptr), ptr %i.bh, align 8
  store ptr %i.h, ptr %i.i, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @19, ptr %i.bi, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %.sroa.028.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.028.sroa.4.0..sroa_idx, align 8
  %.sroa.028.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1, ptr %.sroa.028.sroa.5.0..sroa_idx, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.bg, ptr %.sroa.429.0..sroa_idx, align 8
  call void @_RNvMNtCs1kwRxRulhfk_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.r

bb.t:                                             ; preds = %bb.x, %bb.y, %bb.u, %bb.v, %bb.w, %bb.l, %bb.r
  ret void

bb.u:                                             ; preds = %bb.e
  %i.bj = load atomic i64, ptr @_RNvNtCs1kwRxRulhfk_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.v, label %bb.t

bb.v:                                             ; preds = %bb.u
  %i.bl = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB7_5QueuepE4pushs_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.bl, label %bb.w [
    i8 0, label %bb.t
    i8 1, label %bb.x
    i8 2, label %bb.x
  ], !prof !184

bb.w:                                             ; preds = %bb.v
  %i.bm = call noundef i8 @_RNvMNtCs1kwRxRulhfk_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB7_5QueuepE4pushs_10___CALLSITE) #59 ; 2 uses
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %bb.t, label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.v, %bb.w
  %.sroa.016.0 = phi i8 [ %i.bm, %bb.w ], [ %i.bl, %bb.v ], [ %i.bl, %bb.v ]
  %i.bo = load ptr, ptr @_RNvNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB7_5QueuepE4pushs_10___CALLSITE, align 8, !nonnull !177, !align !185, !noundef !177
  %i.bp = call noundef zeroext i1 @_RNvNtCsb1q9vQXIC0o_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bo, i8 noundef %.sroa.016.0) #52
  br i1 %i.bp, label %bb.y, label %bb.t

bb.y:                                             ; preds = %bb.x
  %i.bq = load ptr, ptr @_RNvNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB7_5QueuepE4pushs_10___CALLSITE, align 8, !nonnull !177, !align !185, !noundef !177 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr @2232, ptr %i.j, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 37 to ptr), ptr %i.bs, align 8
  store ptr %i.j, ptr %i.k, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @19, ptr %i.bt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.c, align 8
  %.sroa.018.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.k, ptr %.sroa.018.sroa.4.0..sroa_idx, align 8
  %.sroa.018.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1, ptr %.sroa.018.sroa.5.0..sroa_idx, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.br, ptr %.sroa.419.0..sroa_idx, align 8
  call void @_RNvMNtCs1kwRxRulhfk_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.t
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB5_5QueueNtNtB7_6stream8NextSendE10push_frontCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(20) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = load atomic i64, ptr @_RNvNtCs1kwRxRulhfk_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.o = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB7_5QueuepE10push_front10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.o, label %bb.c [
    i8 0, label %bb.e
    i8 1, label %bb.d
    i8 2, label %bb.d
  ], !prof !184

bb.c:                                             ; preds = %bb.b
  %i.p = tail call noundef i8 @_RNvMNtCs1kwRxRulhfk_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB7_5QueuepE10push_front10___CALLSITE) #59 ; 2 uses
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.c
  %.sroa.07.0 = phi i8 [ %i.p, %bb.c ], [ %i.o, %bb.b ], [ %i.o, %bb.b ]
  %i.r = load ptr, ptr @_RNvNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB7_5QueuepE10push_front10___CALLSITE, align 8, !nonnull !177, !align !185, !noundef !177
  %i.s = tail call noundef zeroext i1 @_RNvNtCsb1q9vQXIC0o_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.r, i8 noundef %.sroa.07.0) #52
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.f, %bb.d
  %i.t = call noundef nonnull align 8 ptr @_RNvXs7_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeNtB5_3PtrNtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) #52
  %i.u = getelementptr i8, ptr %i.t, i64 313
  %.val = load i8, ptr %i.u, align 1, !range !180, !noundef !177
  %i.v = trunc nuw i8 %.val to i1
  br i1 %i.v, label %bb.u, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.w = load ptr, ptr @_RNvNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB7_5QueuepE10push_front10___CALLSITE, align 8, !nonnull !177, !align !185, !noundef !177 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr @2233, ptr %i.k, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr inttoptr (i64 35 to ptr), ptr %i.y, align 8
  store ptr %i.k, ptr %i.l, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @19, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 1, ptr %i.d, align 8
  %.sroa.09.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.l, ptr %.sroa.09.sroa.4.0..sroa_idx, align 8
  %.sroa.09.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 1, ptr %.sroa.09.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.x, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_RNvMNtCs1kwRxRulhfk_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.e

bb.g:                                             ; preds = %bb.e
  %i.aa = call noundef nonnull align 8 ptr @_RNvXs8_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeNtB5_3PtrNtNtNtCsf3Ta7LF998c_4core3ops5deref8DerefMut9deref_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1) #52
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 313
  store i8 1, ptr %i.ab, align 1, !alias.scope !89414
  %i.ac = load i32, ptr %0, align 4, !range !195, !noundef !177
  %i.ad = trunc nuw i32 %i.ac to i1
  %i.ae = load atomic i64, ptr @_RNvNtCs1kwRxRulhfk_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.af = icmp eq i64 %i.ae, 0                    ; 2 uses
  br i1 %i.ad, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.af, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ag = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB7_5QueuepE10push_fronts1_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.ag, label %bb.j [
    i8 0, label %bb.l
    i8 1, label %bb.k
    i8 2, label %bb.k
  ], !prof !184

bb.j:                                             ; preds = %bb.i
  %i.ah = call noundef i8 @_RNvMNtCs1kwRxRulhfk_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB7_5QueuepE10push_fronts1_10___CALLSITE) #59 ; 2 uses
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.i, %bb.j
  %.sroa.036.0 = phi i8 [ %i.ah, %bb.j ], [ %i.ag, %bb.i ], [ %i.ag, %bb.i ]
  %i.aj = load ptr, ptr @_RNvNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB7_5QueuepE10push_fronts1_10___CALLSITE, align 8, !nonnull !177, !align !185, !noundef !177
  %i.ak = call noundef zeroext i1 @_RNvNtCsb1q9vQXIC0o_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aj, i8 noundef %.sroa.036.0) #52
  br i1 %i.ak, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.m, %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 1, ptr %0, align 4
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %2 = load <2 x i32>, ptr %i.al, align 8
  %3 = shufflevector <2 x i32> %2, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x i32> %3, ptr %.sroa.441.0..sroa_idx, align 4
  br label %bb.t

bb.m:                                             ; preds = %bb.k
  %i.am = load ptr, ptr @_RNvNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB7_5QueuepE10push_fronts1_10___CALLSITE, align 8, !nonnull !177, !align !185, !noundef !177 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @2230, ptr %i.e, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 31 to ptr), ptr %i.ao, align 8
  store ptr %i.e, ptr %i.f, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @19, ptr %i.ap, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %.sroa.038.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %.sroa.038.sroa.4.0..sroa_idx, align 8
  %.sroa.038.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %.sroa.038.sroa.5.0..sroa_idx, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.an, ptr %.sroa.439.0..sroa_idx, align 8
  call void @_RNvMNtCs1kwRxRulhfk_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.l

bb.n:                                             ; preds = %bb.g
  br i1 %i.af, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.aq = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB7_5QueuepE10push_fronts0_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.aq, label %bb.p [
    i8 0, label %bb.r
    i8 1, label %bb.q
    i8 2, label %bb.q
  ], !prof !184

bb.p:                                             ; preds = %bb.o
  %i.ar = call noundef i8 @_RNvMNtCs1kwRxRulhfk_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB7_5QueuepE10push_fronts0_10___CALLSITE) #59 ; 2 uses
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.o, %bb.p
  %.sroa.026.0 = phi i8 [ %i.ar, %bb.p ], [ %i.aq, %bb.o ], [ %i.aq, %bb.o ]
  %i.at = load ptr, ptr @_RNvNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB7_5QueuepE10push_fronts0_10___CALLSITE, align 8, !nonnull !177, !align !185, !noundef !177
  %i.au = call noundef zeroext i1 @_RNvNtCsb1q9vQXIC0o_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at, i8 noundef %.sroa.026.0) #52
  br i1 %i.au, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.s, %bb.q
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.aw = call noundef nonnull align 8 ptr @_RNvXs8_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeNtB5_3PtrNtNtNtCsf3Ta7LF998c_4core3ops5deref8DerefMut9deref_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1) #52 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 208
  store i32 1, ptr %i.ax, align 8, !alias.scope !89415
  %.sroa.4.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %i.aw, i64 212
  %i.ay = load <2 x i32>, ptr %i.av, align 4
  store <2 x i32> %i.ay, ptr %.sroa.4.0..sroa_idx64, align 4, !alias.scope !89415
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = load <2 x i32>, ptr %i.az, align 8
  store <2 x i32> %i.ba, ptr %i.av, align 4
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bb = load ptr, ptr @_RNvNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB7_5QueuepE10push_fronts0_10___CALLSITE, align 8, !nonnull !177, !align !185, !noundef !177 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr @2231, ptr %i.g, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr inttoptr (i64 41 to ptr), ptr %i.bd, align 8
  store ptr %i.g, ptr %i.h, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @19, ptr %i.be, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %.sroa.028.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %.sroa.028.sroa.4.0..sroa_idx, align 8
  %.sroa.028.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1, ptr %.sroa.028.sroa.5.0..sroa_idx, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.bc, ptr %.sroa.429.0..sroa_idx, align 8
  call void @_RNvMNtCs1kwRxRulhfk_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.r

bb.t:                                             ; preds = %bb.x, %bb.y, %bb.u, %bb.v, %bb.w, %bb.l, %bb.r
  ret void

bb.u:                                             ; preds = %bb.e
  %i.bf = load atomic i64, ptr @_RNvNtCs1kwRxRulhfk_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.v, label %bb.t

bb.v:                                             ; preds = %bb.u
  %i.bh = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB7_5QueuepE10push_fronts_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.bh, label %bb.w [
    i8 0, label %bb.t
    i8 1, label %bb.x
    i8 2, label %bb.x
  ], !prof !184

bb.w:                                             ; preds = %bb.v
  %i.bi = call noundef i8 @_RNvMNtCs1kwRxRulhfk_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB7_5QueuepE10push_fronts_10___CALLSITE) #59 ; 2 uses
  %i.bj = icmp eq i8 %i.bi, 0
  br i1 %i.bj, label %bb.t, label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.v, %bb.w
  %.sroa.016.0 = phi i8 [ %i.bi, %bb.w ], [ %i.bh, %bb.v ], [ %i.bh, %bb.v ]
  %i.bk = load ptr, ptr @_RNvNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB7_5QueuepE10push_fronts_10___CALLSITE, align 8, !nonnull !177, !align !185, !noundef !177
  %i.bl = call noundef zeroext i1 @_RNvNtCsb1q9vQXIC0o_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bk, i8 noundef %.sroa.016.0) #52
  br i1 %i.bl, label %bb.y, label %bb.t

bb.y:                                             ; preds = %bb.x
  %i.bm = load ptr, ptr @_RNvNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB7_5QueuepE10push_fronts_10___CALLSITE, align 8, !nonnull !177, !align !185, !noundef !177 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @2232, ptr %i.i, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr inttoptr (i64 37 to ptr), ptr %i.bo, align 8
  store ptr %i.i, ptr %i.j, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @19, ptr %i.bp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.c, align 8
  %.sroa.018.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %.sroa.018.sroa.4.0..sroa_idx, align 8
  %.sroa.018.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1, ptr %.sroa.018.sroa.5.0..sroa_idx, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.bn, ptr %.sroa.419.0..sroa_idx, align 8
  call void @_RNvMNtCs1kwRxRulhfk_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.t
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB5_5QueueNtNtB7_6stream8NextSendE4pushCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(20) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = load atomic i64, ptr @_RNvNtCs1kwRxRulhfk_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.p = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB7_5QueuepE4push10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.p, label %bb.c [
    i8 0, label %bb.e
    i8 1, label %bb.d
    i8 2, label %bb.d
  ], !prof !184

bb.c:                                             ; preds = %bb.b
  %i.q = tail call noundef i8 @_RNvMNtCs1kwRxRulhfk_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB7_5QueuepE4push10___CALLSITE) #59 ; 2 uses
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.c
  %.sroa.07.0 = phi i8 [ %i.q, %bb.c ], [ %i.p, %bb.b ], [ %i.p, %bb.b ]
  %i.s = load ptr, ptr @_RNvNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB7_5QueuepE4push10___CALLSITE, align 8, !nonnull !177, !align !185, !noundef !177
  %i.t = tail call noundef zeroext i1 @_RNvNtCsb1q9vQXIC0o_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.s, i8 noundef %.sroa.07.0) #52
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.f, %bb.d
  %i.u = call noundef nonnull align 8 ptr @_RNvXs7_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeNtB5_3PtrNtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) #52
  %i.v = getelementptr i8, ptr %i.u, i64 313
  %.val = load i8, ptr %i.v, align 1, !range !180, !noundef !177
  %i.w = trunc nuw i8 %.val to i1
  br i1 %i.w, label %bb.u, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.x = load ptr, ptr @_RNvNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB7_5QueuepE4push10___CALLSITE, align 8, !nonnull !177, !align !185, !noundef !177 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr @2229, ptr %i.l, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr inttoptr (i64 33 to ptr), ptr %i.z, align 8
  store ptr %i.l, ptr %i.m, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @19, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 1, ptr %i.d, align 8
  %.sroa.09.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.m, ptr %.sroa.09.sroa.4.0..sroa_idx, align 8
  %.sroa.09.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 1, ptr %.sroa.09.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.y, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_RNvMNtCs1kwRxRulhfk_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.e

bb.g:                                             ; preds = %bb.e
  %i.ab = call noundef nonnull align 8 ptr @_RNvXs8_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeNtB5_3PtrNtNtNtCsf3Ta7LF998c_4core3ops5deref8DerefMut9deref_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1) #52
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 313
  store i8 1, ptr %i.ac, align 1, !alias.scope !89421
  %i.ad = load i32, ptr %0, align 4, !range !195, !noundef !177
  %i.ae = trunc nuw i32 %i.ad to i1
  %i.af = load atomic i64, ptr @_RNvNtCs1kwRxRulhfk_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ag = icmp eq i64 %i.af, 0                    ; 2 uses
  br i1 %i.ae, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.ag, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ah = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB7_5QueuepE4pushs1_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.ah, label %bb.j [
    i8 0, label %bb.l
    i8 1, label %bb.k
    i8 2, label %bb.k
  ], !prof !184

bb.j:                                             ; preds = %bb.i
  %i.ai = call noundef i8 @_RNvMNtCs1kwRxRulhfk_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB7_5QueuepE4pushs1_10___CALLSITE) #59 ; 2 uses
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.i, %bb.j
  %.sroa.036.0 = phi i8 [ %i.ai, %bb.j ], [ %i.ah, %bb.i ], [ %i.ah, %bb.i ]
  %i.ak = load ptr, ptr @_RNvNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB7_5QueuepE4pushs1_10___CALLSITE, align 8, !nonnull !177, !align !185, !noundef !177
  %i.al = call noundef zeroext i1 @_RNvNtCsb1q9vQXIC0o_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ak, i8 noundef %.sroa.036.0) #52
  br i1 %i.al, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.m, %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 1, ptr %0, align 4
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %2 = load <2 x i32>, ptr %i.am, align 8
  %3 = shufflevector <2 x i32> %2, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x i32> %3, ptr %.sroa.441.0..sroa_idx, align 4
  br label %bb.t

bb.m:                                             ; preds = %bb.k
  %i.an = load ptr, ptr @_RNvNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB7_5QueuepE4pushs1_10___CALLSITE, align 8, !nonnull !177, !align !185, !noundef !177 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @2230, ptr %i.e, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 31 to ptr), ptr %i.ap, align 8
  store ptr %i.e, ptr %i.f, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @19, ptr %i.aq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %.sroa.038.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %.sroa.038.sroa.4.0..sroa_idx, align 8
  %.sroa.038.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %.sroa.038.sroa.5.0..sroa_idx, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.ao, ptr %.sroa.439.0..sroa_idx, align 8
  call void @_RNvMNtCs1kwRxRulhfk_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.an, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.l

bb.n:                                             ; preds = %bb.g
  br i1 %i.ag, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ar = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB7_5QueuepE4pushs0_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.ar, label %bb.p [
    i8 0, label %bb.r
    i8 1, label %bb.q
    i8 2, label %bb.q
  ], !prof !184

bb.p:                                             ; preds = %bb.o
  %i.as = call noundef i8 @_RNvMNtCs1kwRxRulhfk_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB7_5QueuepE4pushs0_10___CALLSITE) #59 ; 2 uses
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.o, %bb.p
  %.sroa.026.0 = phi i8 [ %i.as, %bb.p ], [ %i.ar, %bb.o ], [ %i.ar, %bb.o ]
  %i.au = load ptr, ptr @_RNvNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB7_5QueuepE4pushs0_10___CALLSITE, align 8, !nonnull !177, !align !185, !noundef !177
  %i.av = call noundef zeroext i1 @_RNvNtCsb1q9vQXIC0o_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.au, i8 noundef %.sroa.026.0) #52
  br i1 %i.av, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.s, %bb.q
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ay = load ptr, ptr %1, align 8, !nonnull !177, !align !185, !noundef !177
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ba = load <2 x i32>, ptr %i.ax, align 4
  store <2 x i32> %i.ba, ptr %i.az, align 8
  store ptr %i.ay, ptr %i.g, align 8
  %i.bb = load <2 x i32>, ptr %i.aw, align 8
  %i.bc = call noundef nonnull align 8 ptr @_RNvXs8_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeNtB5_3PtrNtNtNtCsf3Ta7LF998c_4core3ops5deref8DerefMut9deref_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g) #52 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 208
  store i32 1, ptr %i.bd, align 8, !alias.scope !89422
  %.sroa.4.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %i.bc, i64 212
  store <2 x i32> %i.bb, ptr %.sroa.4.0..sroa_idx64, align 4, !alias.scope !89422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.be = load <2 x i32>, ptr %i.aw, align 8
  store <2 x i32> %i.be, ptr %i.ax, align 4
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bf = load ptr, ptr @_RNvNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB7_5QueuepE4pushs0_10___CALLSITE, align 8, !nonnull !177, !align !185, !noundef !177 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @2231, ptr %i.h, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr inttoptr (i64 41 to ptr), ptr %i.bh, align 8
  store ptr %i.h, ptr %i.i, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @19, ptr %i.bi, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %.sroa.028.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.028.sroa.4.0..sroa_idx, align 8
  %.sroa.028.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1, ptr %.sroa.028.sroa.5.0..sroa_idx, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.bg, ptr %.sroa.429.0..sroa_idx, align 8
  call void @_RNvMNtCs1kwRxRulhfk_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.r

bb.t:                                             ; preds = %bb.x, %bb.y, %bb.u, %bb.v, %bb.w, %bb.l, %bb.r
  ret void

bb.u:                                             ; preds = %bb.e
  %i.bj = load atomic i64, ptr @_RNvNtCs1kwRxRulhfk_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.v, label %bb.t

bb.v:                                             ; preds = %bb.u
  %i.bl = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB7_5QueuepE4pushs_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.bl, label %bb.w [
    i8 0, label %bb.t
    i8 1, label %bb.x
    i8 2, label %bb.x
  ], !prof !184

bb.w:                                             ; preds = %bb.v
  %i.bm = call noundef i8 @_RNvMNtCs1kwRxRulhfk_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB7_5QueuepE4pushs_10___CALLSITE) #59 ; 2 uses
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %bb.t, label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.v, %bb.w
  %.sroa.016.0 = phi i8 [ %i.bm, %bb.w ], [ %i.bl, %bb.v ], [ %i.bl, %bb.v ]
  %i.bo = load ptr, ptr @_RNvNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB7_5QueuepE4pushs_10___CALLSITE, align 8, !nonnull !177, !align !185, !noundef !177
  %i.bp = call noundef zeroext i1 @_RNvNtCsb1q9vQXIC0o_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bo, i8 noundef %.sroa.016.0) #52
  br i1 %i.bp, label %bb.y, label %bb.t

bb.y:                                             ; preds = %bb.x
  %i.bq = load ptr, ptr @_RNvNvMs3_NtNtNtCs2dlyTE5y14r_2h25proto7streams5storeINtB7_5QueuepE4pushs_10___CALLSITE, align 8, !nonnull !177, !align !185, !noundef !177 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr @2232, ptr %i.j, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 37 to ptr), ptr %i.bs, align 8
  store ptr %i.j, ptr %i.k, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @19, ptr %i.bt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.c, align 8
  %.sroa.018.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.k, ptr %.sroa.018.sroa.4.0..sroa_idx, align 8
  %.sroa.018.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1, ptr %.sroa.018.sroa.5.0..sroa_idx, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.br, ptr %.sroa.419.0..sroa_idx, align 8
  call void @_RNvMNtCs1kwRxRulhfk_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.t
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCs2dlyTE5y14r_2h26clientINtB5_10ConnectionINtNtNtNtCsaI3lGUjttVO_5hyper6common2io6compat6CompatINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoINtNtNtB1N_3net11http_stream15ProxyHttpStreamNtNtNtNtB1L_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEEEINtNtNtBW_5proto2h27SendBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE22set_target_window_sizeCsgZAIVb0XKpv_9ssservice(ptr %.264.val, i32 noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = icmp sgt i32 %0, -1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !191

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2234, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2235) #62
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.264.val) ]
  %i.c = getelementptr inbounds nuw i8, ptr %.264.val, i64 16 ; 5 uses
  %i.d = cmpxchg ptr %i.c, i32 0, i32 1 acquire monotonic, align 4, !noalias !89428
  %i.e = extractvalue { i32, i1 } %i.d, 1
  br i1 %i.e, label %bb.e, label %bb.d, !prof !191

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.c) #52, !noalias !89428
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !89428
  %i.g = and i64 %i.f, 9223372036854775807
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams5InnerE4lockCsgZAIVb0XKpv_9ssservice.exit.i, label %bb.f, !prof !191

bb.f:                                             ; preds = %bb.e
  %i.i = tail call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #59, !noalias !89428
  %i.j = xor i1 %i.i, true
  %i.k = zext i1 %i.j to i8
  br label %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams5InnerE4lockCsgZAIVb0XKpv_9ssservice.exit.i

_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams5InnerE4lockCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.f, %bb.e
  %.sroa.01.0.i.i.i = phi i8 [ %i.k, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.264.val, i64 20 ; 2 uses
  %i.m = load atomic i8, ptr %i.l monotonic, align 1, !noalias !89428
  %.not.i.i.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.not.i, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgZAIVb0XKpv_9ssservice.exit.i, label %bb.g, !prof !191

bb.g:                                             ; preds = %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams5InnerE4lockCsgZAIVb0XKpv_9ssservice.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !89429
  store ptr %i.c, ptr %i.a, align 8, !noalias !89429
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %.sroa.01.0.i.i.i, ptr %i.n, align 8, !noalias !89429
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1963, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1973, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2003) #62, !noalias !89430
  unreachable

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexNtNtNtNtCs2dlyTE5y14r_2h25proto7streams7streams5InnerE4lockCsgZAIVb0XKpv_9ssservice.exit.i
  %i.o = trunc nuw i8 %.sroa.01.0.i.i.i to i1
  %i.p = getelementptr inbounds nuw i8, ptr %.264.val, i64 144
  %i.q = getelementptr inbounds nuw i8, ptr %.264.val, i64 464
end_hunk_1
