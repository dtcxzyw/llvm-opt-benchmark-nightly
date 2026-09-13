Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/ssservice.ssservice.c5eed45f505fd4ef-cgu.0?download=true
inline.NumInlined: 40157
inline.NumDeleted: 17541
loop-unroll.NumCompletelyUnrolled: 94
loop-unroll.NumRuntimeUnrolled: 164
loop-unroll.NumUnrolled: 272
begin_hunk_0_@_RINvNtNtCs7ewmRfXve8r_4http6header3map15hash_elem_usingNtNtB4_4name7HdrNameECsgZAIVb0XKpv_9ssservice:bb.a
  %i.fn = zext i8 %i.fm to i64
  %i.fo = getelementptr inbounds nuw i8, ptr @341, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !noalias !31595, !noundef !178
  %i.fq = zext i8 %i.fp to i64
  %i.fr = xor i64 %i.fk, %i.fq
  %i.fs = mul i64 %i.fr, 1099511628211
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i, i64 2
  %i.fu = load i8, ptr %i.ft, align 1, !noalias !31595, !noundef !178
  %i.fv = zext i8 %i.fu to i64
  %i.fw = getelementptr inbounds nuw i8, ptr @341, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !noalias !31595, !noundef !178
  %i.fy = zext i8 %i.fx to i64
  %i.fz = xor i64 %i.fs, %i.fy
  %i.ga = mul i64 %i.fz, 1099511628211
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i, i64 3
  %i.gc = load i8, ptr %i.gb, align 1, !noalias !31595, !noundef !178
  %i.gd = zext i8 %i.gc to i64
  %i.ge = getelementptr inbounds nuw i8, ptr @341, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !noalias !31595, !noundef !178
  %i.gg = zext i8 %i.gf to i64
  %i.gh = xor i64 %i.ga, %i.gg
  %i.gi = mul i64 %i.gh, 1099511628211            ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i, i64 4 ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.cy
  br i1 %i.gk, label %_RINvXsB_NtNtCs7ewmRfXve8r_4http6header4nameNtB6_7HdrNameNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECsgZAIVb0XKpv_9ssservice.exit, label %.lr.ph.i.i.i21

bb.k:                                             ; preds = %bb.g
  %i.gl = load i8, ptr %1, align 8, !range !202, !alias.scope !31590, !noalias !31591, !noundef !178
  %i.gm = zext nneg i8 %i.gl to i64
  %i.gn = xor i64 %i.ct, %i.gm
  %i.go = mul i64 %i.gn, 2232315406967589409
  br label %_RINvXsB_NtNtCs7ewmRfXve8r_4http6header4nameNtB6_7HdrNameNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECsgZAIVb0XKpv_9ssservice.exit

_RINvXsB_NtNtCs7ewmRfXve8r_4http6header4nameNtB6_7HdrNameNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECsgZAIVb0XKpv_9ssservice.exit: ; preds = %.lr.ph.i.i.i21.prol.loopexit, %.lr.ph.i.i.i21, %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.i, %bb.k, %bb.j, %_RINvXsB_NtNtCs7ewmRfXve8r_4http6header4nameNtB6_7HdrNameNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECsgZAIVb0XKpv_9ssservice.exit
  %.sroa.0.0 = phi i64 [ %i.cn, %_RINvXsB_NtNtCs7ewmRfXve8r_4http6header4nameNtB6_7HdrNameNtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtNtCs5Xr050g3D4S_3std4hash6random13DefaultHasherECsgZAIVb0XKpv_9ssservice.exit ], [ %i.ct, %bb.i ], [ %i.go, %bb.k ], [ %i.fc, %.lr.ph.i.i.i.i ], [ %i.ct, %bb.j ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %.lcssa34.unr, %.lr.ph.i.i.i21.prol.loopexit ], [ %i.gi, %.lr.ph.i.i.i21 ]
  %i.gp = trunc i64 %.sroa.0.0 to i16
  %i.gq = and i16 %i.gp, 32767
  ret i16 %i.gq
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsaI3lGUjttVO_5hyper6client8dispatch7channelINtNtCs7ewmRfXve8r_4http7request7RequestNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtBT_8response8ResponseNtNtNtB6_4body8incoming8IncomingEECsgZAIVb0XKpv_9ssservice(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !31602
  %i.a = tail call noundef align 8 dereferenceable_or_null(8736) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 8736, i64 noundef 8) #53, !noalias !31602 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4list7channelINtNtNtCsaI3lGUjttVO_5hyper6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtB1K_8response8ResponseNtNtNtBW_4body8incoming8IncomingEEECsgZAIVb0XKpv_9ssservice.exit.i, !prof !187

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8736) #62, !noalias !31602
  unreachable

_RINvNtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4list7channelINtNtNtCsaI3lGUjttVO_5hyper6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtB1K_8response8ResponseNtNtNtBW_4body8incoming8IncomingEEECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8704
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false), !noalias !31602
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !31603
  %i.d = tail call noundef align 128 dereferenceable_or_null(512) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 512, i64 noundef range(i64 1, -9223372036854775807) 128) #53, !noalias !31603 ; 18 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i, !prof !183

bb.c:                                             ; preds = %_RINvNtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4list7channelINtNtNtCsaI3lGUjttVO_5hyper6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtB1K_8response8ResponseNtNtNtBW_4body8incoming8IncomingEEECsgZAIVb0XKpv_9ssservice.exit.i
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 512) #62, !noalias !31603
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i: ; preds = %_RINvNtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4list7channelINtNtNtCsaI3lGUjttVO_5hyper6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtB1K_8response8ResponseNtNtNtBW_4body8incoming8IncomingEEECsgZAIVb0XKpv_9ssservice.exit.i
  store i64 1, ptr %i.d, align 128
  %.sroa.444.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %.sroa.444.0..sroa_idx.i, align 8
  %.sroa.546.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  store ptr %i.a, ptr %.sroa.546.0..sroa_idx.i, align 128
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8
  %.sroa.848.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  store ptr null, ptr %.sroa.848.0..sroa_idx.i, align 128
  %.sroa.950.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 272
  store i64 0, ptr %.sroa.950.0..sroa_idx.i, align 16
  %.sroa.1051.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 416
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(32) %.sroa.1051.0..sroa_idx.i, i8 0, i64 32, i1 false)
  store ptr %i.a, ptr %.sroa.14.0..sroa_idx.i, align 32
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 424
  store ptr %i.a, ptr %.sroa.15.0..sroa_idx.i, align 8
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 432
  store i64 0, ptr %.sroa.16.0..sroa_idx.i, align 16
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 440
  store i8 0, ptr %.sroa.17.0..sroa_idx.i, align 8
  %.sroa.1852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  store i64 0, ptr %.sroa.1852.0..sroa_idx.i, align 64
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 456
  store i64 1, ptr %.sroa.19.0..sroa_idx.i, align 8
  %.sroa.20.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 464
  store i64 0, ptr %.sroa.20.0..sroa_idx.i, align 16
  %i.f = atomicrmw add ptr %i.d, i64 1 monotonic, align 8
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4chan7channelINtNtNtCsaI3lGUjttVO_5hyper6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtB1K_8response8ResponseNtNtNtBW_4body8incoming8IncomingEENtNtB4_9unbounded9SemaphoreECsgZAIVb0XKpv_9ssservice.exit

bb.d:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i
  tail call void @llvm.trap()
  unreachable

_RINvNtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4chan7channelINtNtNtCsaI3lGUjttVO_5hyper6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtB1K_8response8ResponseNtNtNtBW_4body8incoming8IncomingEENtNtB4_9unbounded9SemaphoreECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i
  %i.h = tail call { ptr, ptr } @_RNvCsaaBHDuKNmAh_4want3new() #53 ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.h, 0
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  store ptr %i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.j, ptr %i.l, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsaI3lGUjttVO_5hyper6client8dispatch7channelINtNtCs7ewmRfXve8r_4http7request7RequestNtNtNtB6_4body8incoming8IncomingEINtNtBT_8response8ResponseB1s_EECsgZAIVb0XKpv_9ssservice(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !31608
  %i.a = tail call noundef align 8 dereferenceable_or_null(9248) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 9248, i64 noundef 8) #53, !noalias !31608 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4list7channelINtNtNtCsaI3lGUjttVO_5hyper6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestNtNtNtBW_4body8incoming8IncomingEINtNtB1K_8response8ResponseB2j_EEECsgZAIVb0XKpv_9ssservice.exit.i, !prof !187

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 9248) #62, !noalias !31608
  unreachable

_RINvNtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4list7channelINtNtNtCsaI3lGUjttVO_5hyper6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestNtNtNtBW_4body8incoming8IncomingEINtNtB1K_8response8ResponseB2j_EEECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 9216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false), !noalias !31608
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !31609
  %i.d = tail call noundef align 128 dereferenceable_or_null(512) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 512, i64 noundef range(i64 1, -9223372036854775807) 128) #53, !noalias !31609 ; 18 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i, !prof !183

bb.c:                                             ; preds = %_RINvNtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4list7channelINtNtNtCsaI3lGUjttVO_5hyper6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestNtNtNtBW_4body8incoming8IncomingEINtNtB1K_8response8ResponseB2j_EEECsgZAIVb0XKpv_9ssservice.exit.i
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 512) #62, !noalias !31609
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i: ; preds = %_RINvNtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4list7channelINtNtNtCsaI3lGUjttVO_5hyper6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestNtNtNtBW_4body8incoming8IncomingEINtNtB1K_8response8ResponseB2j_EEECsgZAIVb0XKpv_9ssservice.exit.i
  store i64 1, ptr %i.d, align 128
  %.sroa.444.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %.sroa.444.0..sroa_idx.i, align 8
  %.sroa.546.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  store ptr %i.a, ptr %.sroa.546.0..sroa_idx.i, align 128
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8
  %.sroa.848.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  store ptr null, ptr %.sroa.848.0..sroa_idx.i, align 128
  %.sroa.950.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 272
  store i64 0, ptr %.sroa.950.0..sroa_idx.i, align 16
  %.sroa.1051.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 416
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(32) %.sroa.1051.0..sroa_idx.i, i8 0, i64 32, i1 false)
  store ptr %i.a, ptr %.sroa.14.0..sroa_idx.i, align 32
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 424
  store ptr %i.a, ptr %.sroa.15.0..sroa_idx.i, align 8
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 432
  store i64 0, ptr %.sroa.16.0..sroa_idx.i, align 16
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 440
  store i8 0, ptr %.sroa.17.0..sroa_idx.i, align 8
  %.sroa.1852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  store i64 0, ptr %.sroa.1852.0..sroa_idx.i, align 64
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 456
  store i64 1, ptr %.sroa.19.0..sroa_idx.i, align 8
  %.sroa.20.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 464
  store i64 0, ptr %.sroa.20.0..sroa_idx.i, align 16
  %i.f = atomicrmw add ptr %i.d, i64 1 monotonic, align 8
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4chan7channelINtNtNtCsaI3lGUjttVO_5hyper6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestNtNtNtBW_4body8incoming8IncomingEINtNtB1K_8response8ResponseB2j_EENtNtB4_9unbounded9SemaphoreECsgZAIVb0XKpv_9ssservice.exit

bb.d:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i
  tail call void @llvm.trap()
  unreachable

_RINvNtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4chan7channelINtNtNtCsaI3lGUjttVO_5hyper6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestNtNtNtBW_4body8incoming8IncomingEINtNtB1K_8response8ResponseB2j_EENtNtB4_9unbounded9SemaphoreECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i
  %i.h = tail call { ptr, ptr } @_RNvCsaaBHDuKNmAh_4want3new() #53 ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.h, 0
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  store ptr %i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.j, ptr %i.l, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtNtCscVsx2cUGvkQ_12futures_util6future8join_all8join_allINtNtCsgCecv3eZDcN_5alloc3vec3VecNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1C_11PingChecker18check_update_score0EECsgZAIVb0XKpv_9ssservice(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66336 x i8], align 16            ; 13 uses
  %.sroa.8.sroa.8.i.i = alloca [7 x i8], align 1  ; 5 uses
  %.sroa.5.sroa.0.sroa.4 = alloca [7 x i8], align 1 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !31681, !noalias !31682 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !31681, !noalias !31682, !nonnull !178, !noundef !178 ; 5 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !31681, !noalias !31682 ; 6 uses
  %i.b = icmp ult i64 %.sroa.5.0.copyload.i, 139174493554666
  tail call void @llvm.assume(i1 %i.b)
  %.idx43 = mul nuw nsw i64 %.sroa.5.0.copyload.i, 66272
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 %.idx43 ; 2 uses
  %i.d = icmp samesign ult i64 %.sroa.5.0.copyload.i, 31
  br i1 %i.d, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.sroa.8.i.i)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !31683
  %i.e = tail call noundef align 16 dereferenceable_or_null(66368) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 66368, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !noalias !31683 ; 9 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i.i, !prof !183

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 66368) #62, !noalias !31683
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i.i: ; preds = %bb.b
  store i64 1, ptr %i.e, align 16, !noalias !31684
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !31684
  %.sroa.5.0..sroa_idx21.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  store i128 0, ptr %.sroa.5.0..sroa_idx21.i.i.i, align 16, !noalias !31684
  %.sroa.623.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 66320
  %.sroa.10.0..sroa_idx27.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 66352
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.623.0..sroa_idx.i.i.i, i8 0, i64 32, i1 false), !noalias !31684
  store ptr inttoptr (i64 -1 to ptr), ptr %.sroa.10.0..sroa_idx27.i.i.i, align 16, !noalias !31684
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 66360
  store i8 1, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8, !noalias !31684
  %.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 66361
  store i8 0, ptr %.sroa.12.0..sroa_idx.i.i.i, align 1, !noalias !31684
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !31685
  %i.g = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !31685 ; 9 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB2a_11PingChecker18check_update_score0EE3newCsgZAIVb0XKpv_9ssservice.exit.i.i, !prof !183

bb.d:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i.i
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #62, !noalias !31685
  unreachable

_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB2a_11PingChecker18check_update_score0EE3newCsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i.i
  %i.i = ptrtoint ptr %.sroa.5.0..sroa_idx21.i.i.i to i64
  store i64 1, ptr %i.g, align 8, !noalias !31684
  %.sroa.429.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %.sroa.429.0..sroa_idx.i.i.i, align 8, !noalias !31684
  %.sroa.530.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.e, ptr %.sroa.530.0..sroa_idx.i.i.i, align 8, !noalias !31684
  %.sroa.631.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr null, ptr %.sroa.631.0..sroa_idx.i.i.i, align 8, !noalias !31684
  %.sroa.733.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i64 0, ptr %.sroa.733.0..sroa_idx.i.i.i, align 8, !noalias !31684
  %.sroa.834.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i64 %i.i, ptr %.sroa.834.0..sroa_idx.i.i.i, align 8, !noalias !31684
  %.sroa.935.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr %.sroa.5.0..sroa_idx21.i.i.i, ptr %.sroa.935.0..sroa_idx.i.i.i, align 8, !noalias !31684
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 41 ; 2 uses
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1w_11PingChecker18check_update_score0EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i, %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB2a_11PingChecker18check_update_score0EE3newCsgZAIVb0XKpv_9ssservice.exit.i.i
  %.sroa.8.sroa.7.0.i.i = phi i8 [ 0, %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB2a_11PingChecker18check_update_score0EE3newCsgZAIVb0XKpv_9ssservice.exit.i.i ], [ %.sroa.8.sroa.7.0.copyload36.i.i, %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1w_11PingChecker18check_update_score0EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i ]
  %.sroa.8.sroa.6.0.i.i = phi i64 [ 0, %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB2a_11PingChecker18check_update_score0EE3newCsgZAIVb0XKpv_9ssservice.exit.i.i ], [ %.sroa.8.sroa.6.0.copyload34.i.i, %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1w_11PingChecker18check_update_score0EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i ]
  %.sroa.8.sroa.0.0.i.i = phi ptr [ %i.g, %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB2a_11PingChecker18check_update_score0EE3newCsgZAIVb0XKpv_9ssservice.exit.i.i ], [ %.sroa.8.sroa.0.0.copyload32.i.i, %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1w_11PingChecker18check_update_score0EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i ] ; 5 uses
  %.sroa.10.0.i.i = phi i64 [ 0, %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB2a_11PingChecker18check_update_score0EE3newCsgZAIVb0XKpv_9ssservice.exit.i.i ], [ %.sroa.10.0.copyload21.i.i, %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1w_11PingChecker18check_update_score0EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i ]
  %.sroa.9.0.i.i = phi i64 [ 0, %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB2a_11PingChecker18check_update_score0EE3newCsgZAIVb0XKpv_9ssservice.exit.i.i ], [ %.sroa.9.0.copyload17.i.i, %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1w_11PingChecker18check_update_score0EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i ] ; 2 uses
  %.sroa.7.0.i.i = phi i64 [ 0, %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB2a_11PingChecker18check_update_score0EE3newCsgZAIVb0XKpv_9ssservice.exit.i.i ], [ %.sroa.7.0.copyload11.i.i, %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1w_11PingChecker18check_update_score0EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i ] ; 2 uses
  %.sroa.6.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB2a_11PingChecker18check_update_score0EE3newCsgZAIVb0XKpv_9ssservice.exit.i.i ], [ %.sroa.6.0.copyload7.i.i, %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1w_11PingChecker18check_update_score0EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i ] ; 2 uses
  %.sroa.0.0.i.i = phi i64 [ 0, %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB2a_11PingChecker18check_update_score0EE3newCsgZAIVb0XKpv_9ssservice.exit.i.i ], [ %.sroa.0.0.copyload4.i.i, %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1w_11PingChecker18check_update_score0EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i ] ; 2 uses
  %i.o = phi ptr [ %.sroa.4.0.copyload.i, %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB2a_11PingChecker18check_update_score0EE3newCsgZAIVb0XKpv_9ssservice.exit.i.i ], [ %i.p, %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1w_11PingChecker18check_update_score0EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31686
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(66272) %i.j, ptr noundef nonnull align 16 dereferenceable(66272) %i.o, i64 66272, i1 false), !noalias !31686
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 66272 ; 2 uses
  store i64 %.sroa.0.0.i.i, ptr %i.a, align 16, !noalias !31687
  store ptr %.sroa.6.0.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !31687
  store i64 %.sroa.7.0.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 16, !noalias !31687
  store ptr %.sroa.8.sroa.0.0.i.i, ptr %i.l, align 8, !noalias !31687
  store i64 %.sroa.8.sroa.6.0.i.i, ptr %i.n, align 16, !noalias !31687
  store i8 %.sroa.8.sroa.7.0.i.i, ptr %i.m, align 8, !noalias !31687
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx.sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.sroa.8.i.i, i64 7, i1 false), !noalias !31687
  store i64 %.sroa.10.0.i.i, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !31687
  call void @llvm.experimental.noalias.scope.decl(metadata !31688)
  %i.q = add i64 %.sroa.9.0.i.i, 1
  store i64 %i.q, ptr %i.k, align 16, !alias.scope !31688, !noalias !31689
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.8.sroa.0.0.i.i, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !noalias !31690, !nonnull !178, !noundef !178
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.8.sroa.0.0.i.i, i64 8 ; 2 uses
  br label %.backedge.i.i.i.i.i.i.sink.split

.backedge.i.i.i.i.i.i.sink.split:                 ; preds = %bb.e, %bb.f
  %i.w = load atomic i64, ptr %i.v monotonic, align 8, !noalias !31691
  br label %.backedge.i.i.i.i.i.i

.backedge.i.i.i.i.i.i:                            ; preds = %.backedge.i.i.i.i.i.i.sink.split, %bb.h
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ %i.ac, %bb.h ], [ %i.w, %.backedge.i.i.i.i.i.i.sink.split ] ; 4 uses
  %i.x = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i, -1
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.backedge.i.i.i.i.i.i
  call void @llvm.x86.sse2.pause(), !noalias !31691
  br label %.backedge.i.i.i.i.i.i.sink.split

bb.g:                                             ; preds = %.backedge.i.i.i.i.i.i
  %i.y = icmp slt i64 %.sroa.0.0.i.i.i.i.i.i, 0
  br i1 %i.y, label %bb.i, label %bb.h, !prof !187

bb.h:                                             ; preds = %bb.g
  %i.z = add nuw i64 %.sroa.0.0.i.i.i.i.i.i, 1
  %i.aa = cmpxchg weak ptr %i.v, i64 %.sroa.0.0.i.i.i.i.i.i, i64 %i.z acquire monotonic, align 8, !noalias !31691 ; 2 uses
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  %i.ac = extractvalue { i64, i1 } %i.aa, 0
  br i1 %i.ab, label %_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB33_11PingChecker18check_update_score0EEE9downgradeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i, label %.backedge.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtCsgCecv3eZDcN_5alloc4sync18panic_arc_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2351) #63, !noalias !31691
  unreachable

_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB33_11PingChecker18check_update_score0EEE9downgradeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i: ; preds = %bb.h
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !31692
  %i.ad = call noundef align 16 dereferenceable_or_null(66368) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 66368, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !noalias !31692 ; 13 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.j, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i, !prof !183

bb.j:                                             ; preds = %_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB33_11PingChecker18check_update_score0EEE9downgradeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i
  call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 66368) #62, !noalias !31692
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i: ; preds = %_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB33_11PingChecker18check_update_score0EEE9downgradeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i
  store i64 1, ptr %i.ad, align 16, !noalias !31690
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !31690
  %.sroa.5.0..sroa_idx9.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 5 uses
  store i128 1, ptr %.sroa.5.0..sroa_idx9.i.i.i.i.i, align 16, !noalias !31690
  %.sroa.6.0..sroa_idx10.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(66272) %.sroa.6.0..sroa_idx10.i.i.i.i.i, ptr noundef nonnull readonly align 16 dereferenceable(66272) %i.j, i64 66272, i1 false), !noalias !31693
  %.sroa.4.0..sroa.6.0..sroa_idx10.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 66304
  store i64 %.sroa.9.0.i.i, ptr %.sroa.4.0..sroa.6.0..sroa_idx10.i.sroa_idx.i.i.i.i, align 16, !noalias !31694
  %.sroa.7.0..sroa_idx11.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 66320 ; 3 uses
  store i64 %i.u, ptr %.sroa.7.0..sroa_idx11.i.i.i.i.i, align 16, !noalias !31690
  %.sroa.8.0..sroa_idx12.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 66328
  %.sroa.9.0..sroa_idx13.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 66336 ; 2 uses
  %.sroa.11.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 66352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx12.i.i.i.i.i, i8 0, i64 24, i1 false), !noalias !31690
  store ptr %.sroa.8.sroa.0.0.i.i, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i, align 16, !noalias !31690
  %.sroa.12.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 66360
  store i8 1, ptr %.sroa.12.0..sroa_idx.i.i.i.i.i, align 8, !noalias !31690
  %.sroa.13.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 66361
  store i8 0, ptr %.sroa.13.0..sroa_idx.i.i.i.i.i, align 1, !noalias !31690
  store atomic i8 0, ptr %i.m monotonic, align 8, !alias.scope !31688, !noalias !31695
  %i.af = atomicrmw xchg ptr %i.n, ptr %.sroa.5.0..sroa_idx9.i.i.i.i.i acq_rel, align 8, !alias.scope !31688, !noalias !31695 ; 5 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %.critedge.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i
  %i.ah = load ptr, ptr %i.r, align 8, !noalias !31690, !nonnull !178, !noundef !178
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 66304
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %i.ak = load atomic ptr, ptr %i.aj acquire, align 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ak, %i.ai
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 66320
  %i.am = load i64, ptr %i.al, align 8, !noundef !178
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %.sroa.9.0..sroa_idx13.i.i.i.i.i, align 16, !noalias !31690
  store atomic ptr %i.af, ptr %.sroa.7.0..sroa_idx11.i.i.i.i.i release, align 16, !noalias !31690
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 66312
  store ptr %.sroa.5.0..sroa_idx9.i.i.i.i.i, ptr %i.ao, align 8
  %.pre.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !31688, !noalias !31695
  %.sroa.0.0.copyload4.pre.i.i = load i64, ptr %i.a, align 16, !noalias !31687
  %.sroa.6.0.copyload7.pre.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !31687
  %.sroa.7.0.copyload11.pre.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 16, !noalias !31687
  %.sroa.8.sroa.7.0.copyload36.pre.i.i = load i8, ptr %i.m, align 8, !noalias !31687
  br label %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1w_11PingChecker18check_update_score0EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i
  store i64 1, ptr %.sroa.9.0..sroa_idx13.i.i.i.i.i, align 16, !noalias !31690
  store atomic ptr null, ptr %.sroa.7.0..sroa_idx11.i.i.i.i.i release, align 16, !noalias !31690
  br label %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1w_11PingChecker18check_update_score0EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i

_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1w_11PingChecker18check_update_score0EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i: ; preds = %.critedge.i.i.i.i.i.i, %bb.m
  %.sroa.8.sroa.7.0.copyload36.i.i = phi i8 [ %.sroa.8.sroa.7.0.copyload36.pre.i.i, %bb.m ], [ 0, %.critedge.i.i.i.i.i.i ] ; 2 uses
  %.sroa.7.0.copyload11.i.i = phi i64 [ %.sroa.7.0.copyload11.pre.i.i, %bb.m ], [ %.sroa.7.0.i.i, %.critedge.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.0.copyload7.i.i = phi ptr [ %.sroa.6.0.copyload7.pre.i.i, %bb.m ], [ %.sroa.6.0.i.i, %.critedge.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.copyload4.i.i = phi i64 [ %.sroa.0.0.copyload4.pre.i.i, %bb.m ], [ %.sroa.0.0.i.i, %.critedge.i.i.i.i.i.i ] ; 2 uses
  %.sroa.8.sroa.0.0.copyload32.i.i = phi ptr [ %.pre.i.i.i.i, %bb.m ], [ %.sroa.8.sroa.0.0.i.i, %.critedge.i.i.i.i.i.i ] ; 3 uses
  %.sroa.10.0..sroa_idx14.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 66344
  store atomic ptr null, ptr %.sroa.10.0..sroa_idx14.i.i.i.i.i monotonic, align 8, !noalias !31690
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.8.sroa.0.0.copyload32.i.i, i64 48
  %i.aq = atomicrmw xchg ptr %i.ap, ptr %.sroa.5.0..sroa_idx9.i.i.i.i.i acq_rel, align 8, !noalias !31690
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 66328
  store atomic ptr %.sroa.5.0..sroa_idx9.i.i.i.i.i, ptr %i.ar release, align 8
  %.sroa.8.sroa.6.0.copyload34.i.i = load i64, ptr %i.n, align 16, !noalias !31687 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.sroa.8.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx.sroa_idx.i.i, i64 7, i1 false), !noalias !31687
  %.sroa.9.0.copyload17.i.i = load i64, ptr %i.k, align 16, !noalias !31687 ; 2 uses
  %.sroa.10.0.copyload21.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !31687 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !31686
  %.not.i.i.i = icmp eq ptr %i.p, %i.c
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %bb.e

._crit_edge.i.i.i:                                ; preds = %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1w_11PingChecker18check_update_score0EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i
  %i.as = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.as, label %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBZ_11PingChecker18check_update_score0ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator7collectINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered14FuturesOrderedBR_EECsgZAIVb0XKpv_9ssservice.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i.i.i
  %i.at = mul nuw i64 %.sroa.0.0.copyload.i, 66272
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !noalias !31686
  br label %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBZ_11PingChecker18check_update_score0ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator7collectINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered14FuturesOrderedBR_EECsgZAIVb0XKpv_9ssservice.exit

_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBZ_11PingChecker18check_update_score0ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator7collectINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered14FuturesOrderedBR_EECsgZAIVb0XKpv_9ssservice.exit: ; preds = %._crit_edge.i.i.i, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.0.sroa.4, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.sroa.8.i.i, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.sroa.8.i.i)
  br label %bb.v

bb.o:                                             ; preds = %bb.a
  %i.au = mul nuw nsw i64 %.sroa.5.0.copyload.i, 66288 ; 2 uses
  %i.av = icmp eq i64 %.sroa.5.0.copyload.i, 0
  br i1 %i.av, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !31696
  %i.aw = tail call noundef align 16 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.au, i64 noundef range(i64 1, 17) 16) #53, !noalias !31696 ; 3 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.q, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 16, i64 %i.au) #62, !noalias !31697
  unreachable

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.p, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ay = phi i64 [ %niter.next.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.p ] ; 2 uses
  %i.az = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.0.copyload.i, %bb.p ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 66272 ; 2 uses
  %i.bb = getelementptr inbounds nuw [66288 x i8], ptr %i.aw, i64 %i.ay ; 2 uses
  store i128 0, ptr %i.bb, align 16, !noalias !31698
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(66272) %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.1, ptr noundef nonnull align 16 dereferenceable(66272) %i.az, i64 66272, i1 false)
  %niter.next.1 = add nuw nsw i64 %i.ay, 1        ; 2 uses
  %niter.ncmp.1 = icmp eq ptr %i.ba, %i.c
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.o
  %.sroa.4.0.i.i.i.i.i.i55 = phi i64 [ 0, %bb.o ], [ %.sroa.5.0.copyload.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.10.0.i.i.i.i.i.i54 = phi ptr [ inttoptr (i64 16 to ptr), %bb.o ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.42.0.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.o ], [ %niter.next.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.bc = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.bc, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1N_11PingChecker18check_update_score0ENcNtINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneB1F_E6Future0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecB3L_EECsgZAIVb0XKpv_9ssservice.exit.i, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.bd = mul nuw i64 %.sroa.0.0.copyload.i, 66272
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.bd, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !noalias !31699
  br label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1N_11PingChecker18check_update_score0ENcNtINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneB1F_E6Future0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecB3L_EECsgZAIVb0XKpv_9ssservice.exit.i

_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1N_11PingChecker18check_update_score0ENcNtINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneB1F_E6Future0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecB3L_EECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.r, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.be = icmp ugt i64 %.sroa.4.0.i.i.i.i.i.i55, %.sroa.42.0.i.i.i.i.i.i.i.i.i
  br i1 %i.be, label %bb.s, label %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB20_11PingChecker18check_update_score0EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB42_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECsgZAIVb0XKpv_9ssservice.exit

bb.s:                                             ; preds = %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1N_11PingChecker18check_update_score0ENcNtINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneB1F_E6Future0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecB3L_EECsgZAIVb0XKpv_9ssservice.exit.i
  %i.bf = mul nuw nsw i64 %.sroa.4.0.i.i.i.i.i.i55, 66288 ; 2 uses
  %i.bg = icmp eq i64 %.sroa.42.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bg, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i, label %bb.t

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.s
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i.i54, i64 noundef %i.bf, i64 noundef range(i64 1, 17) 16) #53, !noalias !31700
  br label %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB20_11PingChecker18check_update_score0EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB42_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECsgZAIVb0XKpv_9ssservice.exit

bb.t:                                             ; preds = %bb.s
  %i.bh = mul nuw nsw i64 %.sroa.42.0.i.i.i.i.i.i.i.i.i, 66288 ; 2 uses
  %i.bi = tail call noundef align 16 ptr @_RNvCsh0WfaQiVYm0_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i.i54, i64 noundef %i.bf, i64 noundef range(i64 1, 17) 16, i64 noundef range(i64 1, 0) %i.bh) #53, !noalias !31700 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.u, label %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB20_11PingChecker18check_update_score0EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB42_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECsgZAIVb0XKpv_9ssservice.exit

bb.u:                                             ; preds = %bb.t
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 16, i64 %i.bh) #62, !noalias !31701
  unreachable

_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB20_11PingChecker18check_update_score0EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB42_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1N_11PingChecker18check_update_score0ENcNtINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneB1F_E6Future0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecB3L_EECsgZAIVb0XKpv_9ssservice.exit.i, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.t
  %.sroa.42.0.copyload.i.i = phi ptr [ %i.bi, %bb.t ], [ inttoptr (i64 16 to ptr), %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i.i54, %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1N_11PingChecker18check_update_score0ENcNtINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneB1F_E6Future0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecB3L_EECsgZAIVb0XKpv_9ssservice.exit.i ]
  %i.bk = icmp ult i64 %.sroa.42.0.i.i.i.i.i.i.i.i.i, 139140900869762
  tail call void @llvm.assume(i1 %i.bk)
  br label %bb.v

bb.v:                                             ; preds = %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB20_11PingChecker18check_update_score0EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB42_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECsgZAIVb0XKpv_9ssservice.exit, %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBZ_11PingChecker18check_update_score0ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator7collectINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered14FuturesOrderedBR_EECsgZAIVb0XKpv_9ssservice.exit
  %.sroa.5.sroa.0.sroa.6.0 = phi i64 [ undef, %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB20_11PingChecker18check_update_score0EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB42_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECsgZAIVb0XKpv_9ssservice.exit ], [ %.sroa.10.0.copyload21.i.i, %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBZ_11PingChecker18check_update_score0ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator7collectINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered14FuturesOrderedBR_EECsgZAIVb0XKpv_9ssservice.exit ]
  %.sroa.5.sroa.0.sroa.5.0 = phi i64 [ undef, %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB20_11PingChecker18check_update_score0EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB42_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECsgZAIVb0XKpv_9ssservice.exit ], [ %.sroa.9.0.copyload17.i.i, %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBZ_11PingChecker18check_update_score0ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator7collectINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered14FuturesOrderedBR_EECsgZAIVb0XKpv_9ssservice.exit ]
  %.sroa.5.sroa.0.sroa.3.0 = phi i8 [ undef, %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB20_11PingChecker18check_update_score0EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB42_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECsgZAIVb0XKpv_9ssservice.exit ], [ %.sroa.8.sroa.7.0.copyload36.i.i, %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBZ_11PingChecker18check_update_score0ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator7collectINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered14FuturesOrderedBR_EECsgZAIVb0XKpv_9ssservice.exit ]
  %.sroa.5.sroa.0.sroa.2.0 = phi i64 [ undef, %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB20_11PingChecker18check_update_score0EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB42_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECsgZAIVb0XKpv_9ssservice.exit ], [ %.sroa.8.sroa.6.0.copyload34.i.i, %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBZ_11PingChecker18check_update_score0ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator7collectINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered14FuturesOrderedBR_EECsgZAIVb0XKpv_9ssservice.exit ]
  %.sroa.5.sroa.0.sroa.0.0 = phi ptr [ undef, %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB20_11PingChecker18check_update_score0EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB42_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECsgZAIVb0XKpv_9ssservice.exit ], [ %.sroa.8.sroa.0.0.copyload32.i.i, %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBZ_11PingChecker18check_update_score0ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator7collectINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered14FuturesOrderedBR_EECsgZAIVb0XKpv_9ssservice.exit ]
  %.sroa.4.0 = phi i64 [ %.sroa.42.0.i.i.i.i.i.i.i.i.i, %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB20_11PingChecker18check_update_score0EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB42_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECsgZAIVb0XKpv_9ssservice.exit ], [ %.sroa.7.0.copyload11.i.i, %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBZ_11PingChecker18check_update_score0ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator7collectINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered14FuturesOrderedBR_EECsgZAIVb0XKpv_9ssservice.exit ]
  %.sroa.3.0 = phi ptr [ %.sroa.42.0.copyload.i.i, %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB20_11PingChecker18check_update_score0EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB42_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECsgZAIVb0XKpv_9ssservice.exit ], [ %.sroa.6.0.copyload7.i.i, %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBZ_11PingChecker18check_update_score0ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator7collectINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered14FuturesOrderedBR_EECsgZAIVb0XKpv_9ssservice.exit ]
  %.sroa.0.0 = phi i64 [ -1, %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB20_11PingChecker18check_update_score0EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB42_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECsgZAIVb0XKpv_9ssservice.exit ], [ %.sroa.0.0.copyload4.i.i, %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNvMs6_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBZ_11PingChecker18check_update_score0ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator7collectINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered14FuturesOrderedBR_EECsgZAIVb0XKpv_9ssservice.exit ]
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.3.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.3.0, ptr %.sroa.3.0..sroa_idx5, align 8
  %.sroa.4.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx7, align 8
  %.sroa.5.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.5.sroa.0.sroa.0.0, ptr %.sroa.5.0..sroa_idx9, align 8
  %.sroa.5.sroa.0.sroa.2.0..sroa.5.0..sroa_idx9.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.5.sroa.0.sroa.2.0, ptr %.sroa.5.sroa.0.sroa.2.0..sroa.5.0..sroa_idx9.sroa_idx, align 8
  %.sroa.5.sroa.0.sroa.3.0..sroa.5.0..sroa_idx9.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %.sroa.5.sroa.0.sroa.3.0, ptr %.sroa.5.sroa.0.sroa.3.0..sroa.5.0..sroa_idx9.sroa_idx, align 8
  %.sroa.5.sroa.0.sroa.4.0..sroa.5.0..sroa_idx9.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.0.sroa.4.0..sroa.5.0..sroa_idx9.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.0.sroa.4, i64 7, i1 false)
  %.sroa.5.sroa.0.sroa.5.0..sroa.5.0..sroa_idx9.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.5.sroa.0.sroa.5.0, ptr %.sroa.5.sroa.0.sroa.5.0..sroa.5.0..sroa_idx9.sroa_idx, align 8
  %.sroa.5.sroa.0.sroa.6.0..sroa.5.0..sroa_idx9.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.5.sroa.0.sroa.6.0, ptr %.sroa.5.sroa.0.sroa.6.0..sroa.5.0..sroa_idx9.sroa_idx, align 8
  %.sroa.5.sroa.2.0..sroa.5.0..sroa_idx9.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %.sroa.5.sroa.2.0..sroa.5.0..sroa_idx9.sroa_idx, align 8
  %.sroa.5.sroa.3.0..sroa.5.0..sroa_idx9.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.5.sroa.3.0..sroa.5.0..sroa_idx9.sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx9.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx9.sroa_idx, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsczhfDQ1qNkX_5tokio4time7timeout7timeoutINtNtNtNtB6_2io4util4read4ReadINtNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay12proxy_stream6server17ProxyServerStreamINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtB6_3net3tcp6stream9TcpStreamEEEECsgZAIVb0XKpv_9ssservice(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(136) initializes((0, 136)) %0, i64 noundef range(i64 0, 18446744073709552) %1, i32 noundef range(i32 0, 999000001) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call { i64, i32 } @_RNvMNtNtCsczhfDQ1qNkX_5tokio4time7instantNtB2_7Instant3now() #53 ; 2 uses
  %i.d = extractvalue { i64, i32 } %i.c, 0
  %i.e = extractvalue { i64, i32 } %i.c, 1
  store i64 %i.d, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.e, ptr %i.f, align 8
  %i.g = call { i64, i32 } @_RNvMNtNtCsczhfDQ1qNkX_5tokio4time7instantNtB2_7Instant11checked_add(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef %1, i32 noundef %2) #53 ; 2 uses
  %i.h = extractvalue { i64, i32 } %i.g, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq i32 %i.h, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i64, i32 } %i.g, 0
  call void @_RNvMNtNtCsczhfDQ1qNkX_5tokio4time5sleepNtB2_5Sleep11new_timeout(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.a, i64 noundef %i.i, i32 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1464) #53
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvMNtNtCsczhfDQ1qNkX_5tokio4time5sleepNtB2_5Sleep10far_future(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null) #53
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.a, i64 112, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtCsczhfDQ1qNkX_5tokio4util4wake12drop_arc_rawINtNtB4_17idle_notified_set9ListEntryINtNtNtNtB6_7runtime4task4join10JoinHandleuEEECsgZAIVb0XKpv_9ssservice(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !31706
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtCsczhfDQ1qNkX_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1g_7runtime4task4join10JoinHandleuEEEECsgZAIVb0XKpv_9ssservice.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtCsczhfDQ1qNkX_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleuEEE9drop_slowCsi1FNhPBS7PW_11hickory_net(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #60
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtCsczhfDQ1qNkX_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1g_7runtime4task4join10JoinHandleuEEEECsgZAIVb0XKpv_9ssservice.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtCsczhfDQ1qNkX_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1g_7runtime4task4join10JoinHandleuEEEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtCsczhfDQ1qNkX_5tokio4util4wake12wake_arc_rawINtNtB4_17idle_notified_set9ListEntryINtNtNtNtB6_7runtime4task4join10JoinHandleuEEECsgZAIVb0XKpv_9ssservice(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 -16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  tail call fastcc void @_RNvXs5_NtNtCsczhfDQ1qNkX_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleuEENtNtB7_4wake4Wake11wake_by_refCsgZAIVb0XKpv_9ssservice(ptr nonnull %i.b) #53
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !31711
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RNvXs5_NtNtCsczhfDQ1qNkX_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleuEENtNtB7_4wake4Wake4wakeCsgZAIVb0XKpv_9ssservice.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtCsczhfDQ1qNkX_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleuEEE9drop_slowCsi1FNhPBS7PW_11hickory_net(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #60
  br label %_RNvXs5_NtNtCsczhfDQ1qNkX_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleuEENtNtB7_4wake4Wake4wakeCsgZAIVb0XKpv_9ssservice.exit

_RNvXs5_NtNtCsczhfDQ1qNkX_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleuEENtNtB7_4wake4Wake4wakeCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_RINvNtNtCsczhfDQ1qNkX_5tokio4util4wake13clone_arc_rawINtNtB4_17idle_notified_set9ListEntryINtNtNtNtB6_7runtime4task4join10JoinHandleuEEECsgZAIVb0XKpv_9ssservice(ptr noundef %0) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  %i.b = atomicrmw add ptr %i.a, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtCsczhfDQ1qNkX_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleuEEE25increment_strong_count_inCsgZAIVb0XKpv_9ssservice.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtCsczhfDQ1qNkX_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleuEEE25increment_strong_count_inCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.a
  %i.d = insertvalue { ptr, ptr } { ptr @217, ptr poison }, ptr %0, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtCsczhfDQ1qNkX_5tokio4util4wake19wake_by_ref_arc_rawINtNtB4_17idle_notified_set9ListEntryINtNtNtNtB6_7runtime4task4join10JoinHandleuEEECsgZAIVb0XKpv_9ssservice(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  tail call fastcc void @_RNvXs5_NtNtCsczhfDQ1qNkX_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleuEENtNtB7_4wake4Wake11wake_by_refCsgZAIVb0XKpv_9ssservice(ptr nonnull %i.a) #53
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsgZAIVb0XKpv_9ssservice(ptr nofree readonly captures(none) %.0.val, ptr %.8.val, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef range(i64 0, 2) %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 10 uses
  %i.b = alloca [32 x i8], align 8                ; 14 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !178 ; 8 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = load i64, ptr %0, align 8, !range !180, !noundef !178 ; 6 uses
  %i.h = trunc nuw i64 %1 to i1                   ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %2, -1025
  br i1 %i.i, label %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0CsgZAIVb0XKpv_9ssservice.exit.thread, label %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0CsgZAIVb0XKpv_9ssservice.exit, !prof !187

_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0CsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.b
  %i.j = add nuw i64 %2, 1024                     ; 3 uses
  %i.k = and i64 %i.j, 8191                       ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = sub i64 %2, %i.k
  %i.n = add i64 %i.m, 9216                       ; 2 uses
  %.not = icmp ult i64 %i.n, %i.j
  %.sroa.5.1.i = select i1 %.not, i64 8192, i64 %i.n
end_hunk_0
begin_hunk_1_@_RNCNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8tcprelayNtB6_14RedirTcpServer3run00CsgZAIVb0XKpv_9ssservice:bb.a
  %.sroa.535.0..sroa_idx.i.i25 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 58, ptr %.sroa.535.0..sroa_idx.i.i25, align 8, !noalias !47631
  %i.ii = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 1, ptr %i.ii, align 8, !noalias !47631
  %i.ij = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 154, ptr %i.ij, align 4, !noalias !47631
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b) #53, !noalias !47631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !47631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.val.i16.pre = load ptr, ptr %i.k, align 8, !alias.scope !47629
  br label %bb.be
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB9_19PingBalancerContext3new00CsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [96 x i8], align 8                ; 16 uses
  %i.e = alloca [96 x i8], align 8                ; 16 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [4 x i8], align 4                 ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  %i.k = alloca [96 x i8], align 8                ; 16 uses
  %i.l = alloca [96 x i8], align 8                ; 16 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [4 x i8], align 4                 ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 7 uses
  %i.r = alloca [8 x i8], align 8                 ; 5 uses
  %i.s = alloca [8 x i8], align 8                 ; 5 uses
  %i.t = alloca [32 x i8], align 16               ; 6 uses
  %i.u = alloca [16 x i8], align 8                ; 6 uses
  %i.v = alloca [16 x i8], align 8                ; 6 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [736 x i8], align 8               ; 13 uses
  %.sroa.8.sroa.8.i.i.i = alloca [7 x i8], align 1 ; 5 uses
  %.sroa.5.sroa.0.sroa.4.i = alloca [7 x i8], align 1 ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.419 = alloca [200 x i8], align 8         ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !range !233, !noundef !178
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %.val = load i64, ptr %i.ac, align 8, !noundef !178 ; 6 uses
  %i.ad = icmp ult i64 %.val, 44343134792571038
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47884)
  %i.af = mul i64 %.val, 672                      ; 3 uses
  %or.cond.i.i.i = icmp samesign ugt i64 %.val, 13725256007224368
  br i1 %or.cond.i.i.i, label %bb.e, label %bb.c, !prof !189

bb.c:                                             ; preds = %bb.b
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBO_19PingBalancerContext3new000E13with_capacityCsgZAIVb0XKpv_9ssservice.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !47885
  %i.ah = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.af, i64 noundef range(i64 1, 17) 8) #53, !noalias !47885 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.e, label %._RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBO_19PingBalancerContext3new000E13with_capacityCsgZAIVb0XKpv_9ssservice.exit_crit_edge

._RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBO_19PingBalancerContext3new000E13with_capacityCsgZAIVb0XKpv_9ssservice.exit_crit_edge: ; preds = %bb.d
  %.sroa.511.0.copyload.pre = load i64, ptr %i.ac, align 8
  br label %_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBO_19PingBalancerContext3new000E13with_capacityCsgZAIVb0XKpv_9ssservice.exit

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.d ], [ 0, %bb.b ]
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.af) #62, !noalias !47884
  unreachable

_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBO_19PingBalancerContext3new000E13with_capacityCsgZAIVb0XKpv_9ssservice.exit: ; preds = %._RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBO_19PingBalancerContext3new000E13with_capacityCsgZAIVb0XKpv_9ssservice.exit_crit_edge, %bb.c
  %.sroa.511.0.copyload = phi i64 [ %.val, %bb.c ], [ %.sroa.511.0.copyload.pre, %._RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBO_19PingBalancerContext3new000E13with_capacityCsgZAIVb0XKpv_9ssservice.exit_crit_edge ] ; 3 uses
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.c ], [ %i.ah, %._RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBO_19PingBalancerContext3new000E13with_capacityCsgZAIVb0XKpv_9ssservice.exit_crit_edge ]
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.c ], [ %.val, %._RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBO_19PingBalancerContext3new000E13with_capacityCsgZAIVb0XKpv_9ssservice.exit_crit_edge ] ; 2 uses
  %i.aj = icmp samesign ule i64 %.val, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.aj)
  store i64 %.sroa.4.0.i.i, ptr %i.ae, align 8, !alias.scope !47884
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr %.sroa.10.0.i.i, ptr %i.ak, align 8, !alias.scope !47884
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i64 0, ptr %i.al, align 8, !alias.scope !47884
  %.sroa.09.0.copyload = load i64, ptr %0, align 8 ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !nonnull !178, !noundef !178 ; 4 uses
  %i.am = icmp ult i64 %.sroa.511.0.copyload, 44343134792571038
  tail call void @llvm.assume(i1 %i.am)
  %.idx = mul nuw nsw i64 %.sroa.511.0.copyload, 208
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.410.0.copyload, i64 %.idx ; 3 uses
  %i.ao = icmp eq i64 %.sroa.511.0.copyload, 0
  br i1 %i.ao, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !range !190, !alias.scope !47886, !noalias !47887
  br label %bb.ag

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBO_19PingBalancerContext3new000E13with_capacityCsgZAIVb0XKpv_9ssservice.exit, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBR_19PingBalancerContext3new000E4pushCsgZAIVb0XKpv_9ssservice.exit
  %i.ap = phi i64 [ %i.av, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBR_19PingBalancerContext3new000E4pushCsgZAIVb0XKpv_9ssservice.exit ], [ 0, %_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBO_19PingBalancerContext3new000E13with_capacityCsgZAIVb0XKpv_9ssservice.exit ] ; 3 uses
  %.sroa.413.098 = phi ptr [ %i.aq, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBR_19PingBalancerContext3new000E4pushCsgZAIVb0XKpv_9ssservice.exit ], [ %.sroa.410.0.copyload, %_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBO_19PingBalancerContext3new000E13with_capacityCsgZAIVb0XKpv_9ssservice.exit ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.413.098, i64 208 ; 3 uses
  %.sroa.014.0.copyload15 = load i64, ptr %.sroa.413.098, align 8, !noalias !47888 ; 2 uses
  %.not = icmp eq i64 %.sroa.014.0.copyload15, -1
  br i1 %.not, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread, label %bb.g

bb.g:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit
  %.sroa.7.0..sroa.413.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.413.098, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.419)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.419, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.7.0..sroa.413.8..sroa_idx, i64 200, i1 false)
  %i.ar = load i64, ptr %i.ae, align 8, !range !180, !noalias !47889, !noundef !178
  %i.as = icmp eq i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.h, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBR_19PingBalancerContext3new000E4pushCsgZAIVb0XKpv_9ssservice.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBY_19PingBalancerContext3new000E8grow_oneB14_(ptr noundef nonnull align 8 %i.ae) #60, !noalias !47889
  br label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBR_19PingBalancerContext3new000E4pushCsgZAIVb0XKpv_9ssservice.exit

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBR_19PingBalancerContext3new000E4pushCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.g, %bb.h
  %i.at = load ptr, ptr %i.ak, align 8, !noalias !47889, !nonnull !178, !noundef !178
  %i.au = getelementptr inbounds nuw [672 x i8], ptr %i.at, i64 %i.ap ; 3 uses
  store i64 %.sroa.014.0.copyload15, ptr %i.au, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.419.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.419, i64 200, i1 false)
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 664
  store i8 0, ptr %.sroa.521.0..sroa_idx, align 8
  %i.av = add i64 %i.ap, 1                        ; 2 uses
  store i64 %i.av, ptr %i.al, align 8, !noalias !47889
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.419)
  %i.aw = icmp eq ptr %i.aq, %i.an
  br i1 %i.aw, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginECsgZAIVb0XKpv_9ssservice.exit.i.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit, %_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBO_19PingBalancerContext3new000E13with_capacityCsgZAIVb0XKpv_9ssservice.exit
  %.sroa.413.157 = phi ptr [ %.sroa.410.0.copyload, %_RNvMNtCsgCecv3eZDcN_5alloc3vecINtB2_3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBO_19PingBalancerContext3new000E13with_capacityCsgZAIVb0XKpv_9ssservice.exit ], [ %i.aq, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit ] ; 3 uses
  %i.ax = ptrtoint ptr %i.an to i64
  %i.ay = ptrtoint ptr %.sroa.413.157 to i64
  %i.az = sub nuw i64 %i.ax, %i.ay
  %i.ba = udiv exact i64 %i.az, 208
  %i.bb = icmp eq ptr %i.an, %.sroa.413.157
  br i1 %i.bb, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginECsgZAIVb0XKpv_9ssservice.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginECsgZAIVb0XKpv_9ssservice.exit.i.i.i
  %.sroa.0.03.i.i.i = phi i64 [ %i.bd, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginECsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ 0, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [208 x i8], ptr %.sroa.413.157, i64 %.sroa.0.03.i.i.i ; 6 uses
  %i.bd = add nuw nsw i64 %.sroa.0.03.i.i.i, 1    ; 2 uses
  tail call void @_RNvXs_NtCslxdWNweD0x2_11shadowsocks6pluginNtB4_6PluginNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.bc) #53, !noalias !47890
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 96
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsczhfDQ1qNkX_5tokio7process10FusedChildECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(72) %i.be) #53, !noalias !47890
  %i.bf = load i64, ptr %i.bc, align 8, !range !191, !alias.scope !47891, !noalias !47890, !noundef !178
  %i.bg = icmp eq i64 %i.bf, 2
  br i1 %i.bg, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsczhfDQ1qNkX_5tokio7process10ChildStdinEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio7process3imp10ChildStdioECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.bc) #53, !noalias !47890
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsczhfDQ1qNkX_5tokio7process10ChildStdinEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsczhfDQ1qNkX_5tokio7process10ChildStdinEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i: ; preds = %bb.i, %.lr.ph.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 32 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !range !191, !alias.scope !47892, !noalias !47890, !noundef !178
  %i.bj = icmp eq i64 %i.bi, 2
  br i1 %i.bj, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsczhfDQ1qNkX_5tokio7process11ChildStdoutEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsczhfDQ1qNkX_5tokio7process10ChildStdinEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio7process3imp10ChildStdioECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bh) #53, !noalias !47890
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsczhfDQ1qNkX_5tokio7process11ChildStdoutEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsczhfDQ1qNkX_5tokio7process11ChildStdoutEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i: ; preds = %bb.j, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsczhfDQ1qNkX_5tokio7process10ChildStdinEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 64 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !range !191, !alias.scope !47893, !noalias !47890, !noundef !178
  %i.bm = icmp eq i64 %i.bl, 2
  br i1 %i.bm, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginECsgZAIVb0XKpv_9ssservice.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsczhfDQ1qNkX_5tokio7process11ChildStdoutEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio7process3imp10ChildStdioECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bk) #53, !noalias !47890
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginECsgZAIVb0XKpv_9ssservice.exit.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginECsgZAIVb0XKpv_9ssservice.exit.i.i.i: ; preds = %bb.k, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsczhfDQ1qNkX_5tokio7process11ChildStdoutEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i
  %i.bn = icmp eq i64 %i.bd, %i.ba
  br i1 %i.bn, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginECsgZAIVb0XKpv_9ssservice.exit.i.i, label %.lr.ph.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtBR_19PingBalancerContext3new000E4pushCsgZAIVb0XKpv_9ssservice.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginECsgZAIVb0XKpv_9ssservice.exit.i.i.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread
  %i.bo = icmp eq i64 %.sroa.09.0.copyload, 0
  br i1 %i.bo, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginEECsgZAIVb0XKpv_9ssservice.exit, label %bb.l

bb.l:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginECsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.bp = mul nuw i64 %.sroa.09.0.copyload, 208
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.410.0.copyload, i64 noundef %i.bp, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !47890
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginEECsgZAIVb0XKpv_9ssservice.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginECsgZAIVb0XKpv_9ssservice.exit.i.i, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %.sroa.040.0.copyload = load i64, ptr %i.ae, align 8 ; 4 uses
  %.sroa.441.0.copyload = load ptr, ptr %i.ak, align 8, !nonnull !178, !noundef !178 ; 5 uses
  %.sroa.542.0.copyload = load i64, ptr %i.al, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.0.sroa.4.i)
  %i.bq = icmp ult i64 %.sroa.542.0.copyload, 13725256007224369
  tail call void @llvm.assume(i1 %i.bq)
  %.idx43.i = mul nuw nsw i64 %.sroa.542.0.copyload, 672
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.441.0.copyload, i64 %.idx43.i ; 2 uses
  %i.bs = icmp samesign ult i64 %.sroa.542.0.copyload, 31
  br i1 %i.bs, label %bb.z, label %bb.m

bb.m:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginEECsgZAIVb0XKpv_9ssservice.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.sroa.8.i.i.i)
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !47894
  %i.bt = tail call noundef align 8 dereferenceable_or_null(752) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 752, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !47894 ; 9 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.n, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i.i.i, !prof !183

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 752) #62, !noalias !47894
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i.i.i: ; preds = %bb.m
  store i64 1, ptr %i.bt, align 8, !noalias !47895
  %.sroa.4.0..sroa_idx25.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx25.i.i.i.i, align 8, !noalias !47895
  %.sroa.5.0..sroa_idx26.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 3 uses
  store ptr inttoptr (i64 -1 to ptr), ptr %.sroa.5.0..sroa_idx26.i.i.i.i, align 8, !noalias !47895
  %.sroa.6.0..sroa_idx27.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  store i64 0, ptr %.sroa.6.0..sroa_idx27.i.i.i.i, align 8, !noalias !47895
  %.sroa.729.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 712
  %.sroa.11.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 744
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.729.0..sroa_idx.i.i.i.i, i8 0, i64 32, i1 false), !noalias !47895
  store i8 1, ptr %.sroa.11.0..sroa_idx.i.i.i.i, align 8, !noalias !47895
  %.sroa.12.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 745
  store i8 0, ptr %.sroa.12.0..sroa_idx.i.i.i.i, align 1, !noalias !47895
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !47896
  %i.bv = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !47896 ; 9 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.o, label %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB2e_19PingBalancerContext3new000EE3newCsgZAIVb0XKpv_9ssservice.exit.i.i.i, !prof !183

bb.o:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i.i.i
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #62, !noalias !47896
  unreachable

_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB2e_19PingBalancerContext3new000EE3newCsgZAIVb0XKpv_9ssservice.exit.i.i.i: ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i.i.i
  %i.bx = ptrtoint ptr %.sroa.5.0..sroa_idx26.i.i.i.i to i64
  store i64 1, ptr %i.bv, align 8, !noalias !47895
  %.sroa.434.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i64 1, ptr %.sroa.434.0..sroa_idx.i.i.i.i, align 8, !noalias !47895
  %.sroa.535.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store ptr %i.bt, ptr %.sroa.535.0..sroa_idx.i.i.i.i, align 8, !noalias !47895
  %.sroa.636.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store ptr null, ptr %.sroa.636.0..sroa_idx.i.i.i.i, align 8, !noalias !47895
  %.sroa.738.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  store i64 0, ptr %.sroa.738.0..sroa_idx.i.i.i.i, align 8, !noalias !47895
  %.sroa.839.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  store i64 %i.bx, ptr %.sroa.839.0..sroa_idx.i.i.i.i, align 8, !noalias !47895
  %.sroa.940.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  store ptr %.sroa.5.0..sroa_idx26.i.i.i.i, ptr %.sroa.940.0..sroa_idx.i.i.i.i, align 8, !noalias !47895
  %i.by = getelementptr inbounds nuw i8, ptr %i.x, i64 64 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.x, i64 40 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 41 ; 2 uses
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 56 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1A_19PingBalancerContext3new000EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB2e_19PingBalancerContext3new000EE3newCsgZAIVb0XKpv_9ssservice.exit.i.i.i
  %.sroa.8.sroa.7.0.i.i.i = phi i8 [ 0, %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB2e_19PingBalancerContext3new000EE3newCsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.8.sroa.7.0.copyload36.i.i.i, %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1A_19PingBalancerContext3new000EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ]
  %.sroa.8.sroa.6.0.i.i.i = phi i64 [ 0, %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB2e_19PingBalancerContext3new000EE3newCsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.8.sroa.6.0.copyload34.i.i.i, %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1A_19PingBalancerContext3new000EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ]
  %.sroa.8.sroa.0.0.i.i.i = phi ptr [ %i.bv, %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB2e_19PingBalancerContext3new000EE3newCsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.8.sroa.0.0.copyload32.i.i.i, %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1A_19PingBalancerContext3new000EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ] ; 5 uses
  %.sroa.10.0.i.i.i = phi i64 [ 0, %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB2e_19PingBalancerContext3new000EE3newCsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.10.0.copyload21.i.i.i, %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1A_19PingBalancerContext3new000EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ]
  %.sroa.9.0.i.i.i = phi i64 [ 0, %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB2e_19PingBalancerContext3new000EE3newCsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.9.0.copyload17.i.i.i, %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1A_19PingBalancerContext3new000EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ] ; 2 uses
  %.sroa.7.0.i.i.i = phi i64 [ 0, %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB2e_19PingBalancerContext3new000EE3newCsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.7.0.copyload11.i.i.i, %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1A_19PingBalancerContext3new000EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ] ; 2 uses
  %.sroa.6.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB2e_19PingBalancerContext3new000EE3newCsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.6.0.copyload7.i.i.i, %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1A_19PingBalancerContext3new000EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i.i.i = phi i64 [ 0, %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB2e_19PingBalancerContext3new000EE3newCsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %.sroa.0.0.copyload4.i.i.i, %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1A_19PingBalancerContext3new000EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ] ; 2 uses
  %i.cd = phi ptr [ %.sroa.441.0.copyload, %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB2e_19PingBalancerContext3new000EE3newCsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %i.ce, %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1A_19PingBalancerContext3new000EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !47897
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(672) %i.by, ptr noundef nonnull align 8 dereferenceable(672) %i.cd, i64 672, i1 false), !noalias !47897
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 672 ; 2 uses
  store i64 %.sroa.0.0.i.i.i, ptr %i.x, align 8, !noalias !47898
  store ptr %.sroa.6.0.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !47898
  store i64 %.sroa.7.0.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !47898
  store ptr %.sroa.8.sroa.0.0.i.i.i, ptr %i.ca, align 8, !noalias !47898
  store i64 %.sroa.8.sroa.6.0.i.i.i, ptr %i.cc, align 8, !noalias !47898
  store i8 %.sroa.8.sroa.7.0.i.i.i, ptr %i.cb, align 8, !noalias !47898
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx.sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.sroa.8.i.i.i, i64 7, i1 false), !noalias !47898
  store i64 %.sroa.10.0.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8, !noalias !47898
  call void @llvm.experimental.noalias.scope.decl(metadata !47899)
  %i.cf = add i64 %.sroa.9.0.i.i.i, 1
  store i64 %i.cf, ptr %i.bz, align 8, !alias.scope !47899, !noalias !47900
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.8.sroa.0.0.i.i.i, i64 16 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !noalias !47901, !nonnull !178, !noundef !178
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.8.sroa.0.0.i.i.i, i64 8 ; 2 uses
  br label %.backedge.i.i.i.i.i.i.i.sink.split

.backedge.i.i.i.i.i.i.i.sink.split:               ; preds = %bb.p, %bb.q
  %i.cl = load atomic i64, ptr %i.ck monotonic, align 8, !noalias !47902
  br label %.backedge.i.i.i.i.i.i.i

.backedge.i.i.i.i.i.i.i:                          ; preds = %.backedge.i.i.i.i.i.i.i.sink.split, %bb.s
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ %i.cr, %bb.s ], [ %i.cl, %.backedge.i.i.i.i.i.i.i.sink.split ] ; 4 uses
  %i.cm = icmp eq i64 %.sroa.0.0.i.i.i.i.i.i.i, -1
  br i1 %i.cm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.backedge.i.i.i.i.i.i.i
  call void @llvm.x86.sse2.pause(), !noalias !47902
  br label %.backedge.i.i.i.i.i.i.i.sink.split

bb.r:                                             ; preds = %.backedge.i.i.i.i.i.i.i
  %i.cn = icmp slt i64 %.sroa.0.0.i.i.i.i.i.i.i, 0
  br i1 %i.cn, label %bb.t, label %bb.s, !prof !187

bb.s:                                             ; preds = %bb.r
  %i.co = add nuw i64 %.sroa.0.0.i.i.i.i.i.i.i, 1
  %i.cp = cmpxchg weak ptr %i.ck, i64 %.sroa.0.0.i.i.i.i.i.i.i, i64 %i.co acquire monotonic, align 8, !noalias !47902 ; 2 uses
  %i.cq = extractvalue { i64, i1 } %i.cp, 1
  %i.cr = extractvalue { i64, i1 } %i.cp, 0
  br i1 %i.cq, label %_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB37_19PingBalancerContext3new000EEE9downgradeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i, label %.backedge.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  call void @_RNvNtCsgCecv3eZDcN_5alloc4sync18panic_arc_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2351) #63, !noalias !47902
  unreachable

_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB37_19PingBalancerContext3new000EEE9downgradeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i: ; preds = %bb.s
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !47903
  %i.cs = call noundef align 8 dereferenceable_or_null(752) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 752, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !47903 ; 13 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.u, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i.i, !prof !183

bb.u:                                             ; preds = %_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB37_19PingBalancerContext3new000EEE9downgradeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 752) #62, !noalias !47903
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i.i: ; preds = %_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB37_19PingBalancerContext3new000EEE9downgradeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i
  store i64 1, ptr %i.cs, align 8, !noalias !47901
  %.sroa.4.0..sroa_idx11.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx11.i.i.i.i.i.i, align 8, !noalias !47901
  %.sroa.5.0..sroa_idx12.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 5 uses
  store ptr %.sroa.8.sroa.0.0.i.i.i, ptr %.sroa.5.0..sroa_idx12.i.i.i.i.i.i, align 8, !noalias !47901
  %.sroa.6.0..sroa_idx13.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx13.i.i.i.i.i.i, align 8, !noalias !47901
  %.sroa.7.0..sroa_idx14.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(672) %.sroa.7.0..sroa_idx14.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(672) %i.by, i64 672, i1 false), !noalias !47904
  %.sroa.4.0..sroa.7.0..sroa_idx14.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 704
  store i64 %.sroa.9.0.i.i.i, ptr %.sroa.4.0..sroa.7.0..sroa_idx14.i.sroa_idx.i.i.i.i.i, align 8, !noalias !47905
  %.sroa.8.0..sroa_idx15.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 712 ; 3 uses
  store i64 %i.cj, ptr %.sroa.8.0..sroa_idx15.i.i.i.i.i.i, align 8, !noalias !47901
  %.sroa.9.0..sroa_idx16.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 720
  %.sroa.10.0..sroa_idx17.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 728 ; 2 uses
  %.sroa.12.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 744
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx16.i.i.i.i.i.i, i8 0, i64 24, i1 false), !noalias !47901
  store i8 1, ptr %.sroa.12.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !47901
  %.sroa.13.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 745
  store i8 0, ptr %.sroa.13.0..sroa_idx.i.i.i.i.i.i, align 1, !noalias !47901
  store atomic i8 0, ptr %i.cb monotonic, align 8, !alias.scope !47899, !noalias !47906
  %i.cu = atomicrmw xchg ptr %i.cc, ptr %.sroa.5.0..sroa_idx12.i.i.i.i.i.i acq_rel, align 8, !alias.scope !47899, !noalias !47906 ; 5 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %.critedge.i.i.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i.i
  %i.cw = load ptr, ptr %i.cg, align 8, !noalias !47901, !nonnull !178, !noundef !178
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 696
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %bb.v
  %i.cz = load atomic ptr, ptr %i.cy acquire, align 8
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cz, %i.cx
  br i1 %.not.i.i.i.i.i.i.i, label %bb.w, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 712
  %i.db = load i64, ptr %i.da, align 8, !noundef !178
  %i.dc = add i64 %i.db, 1
  store i64 %i.dc, ptr %.sroa.10.0..sroa_idx17.i.i.i.i.i.i, align 8, !noalias !47901
  store atomic ptr %i.cu, ptr %.sroa.8.0..sroa_idx15.i.i.i.i.i.i release, align 8, !noalias !47901
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cu, i64 704
  store ptr %.sroa.5.0..sroa_idx12.i.i.i.i.i.i, ptr %i.dd, align 8
  %.pre.i.i.i.i.i = load ptr, ptr %i.ca, align 8, !alias.scope !47899, !noalias !47906
  %.sroa.0.0.copyload4.pre.i.i.i = load i64, ptr %i.x, align 8, !noalias !47898
  %.sroa.6.0.copyload7.pre.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !47898
  %.sroa.7.0.copyload11.pre.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !47898
  %.sroa.8.sroa.7.0.copyload36.pre.i.i.i = load i8, ptr %i.cb, align 8, !noalias !47898
  br label %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1A_19PingBalancerContext3new000EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i.i
  store i64 1, ptr %.sroa.10.0..sroa_idx17.i.i.i.i.i.i, align 8, !noalias !47901
  store atomic ptr null, ptr %.sroa.8.0..sroa_idx15.i.i.i.i.i.i release, align 8, !noalias !47901
  br label %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1A_19PingBalancerContext3new000EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i.i

_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1A_19PingBalancerContext3new000EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %.critedge.i.i.i.i.i.i.i, %bb.x
  %.sroa.8.sroa.7.0.copyload36.i.i.i = phi i8 [ %.sroa.8.sroa.7.0.copyload36.pre.i.i.i, %bb.x ], [ 0, %.critedge.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.7.0.copyload11.i.i.i = phi i64 [ %.sroa.7.0.copyload11.pre.i.i.i, %bb.x ], [ %.sroa.7.0.i.i.i, %.critedge.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.0.copyload7.i.i.i = phi ptr [ %.sroa.6.0.copyload7.pre.i.i.i, %bb.x ], [ %.sroa.6.0.i.i.i, %.critedge.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.copyload4.i.i.i = phi i64 [ %.sroa.0.0.copyload4.pre.i.i.i, %bb.x ], [ %.sroa.0.0.i.i.i, %.critedge.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.8.sroa.0.0.copyload32.i.i.i = phi ptr [ %.pre.i.i.i.i.i, %bb.x ], [ %.sroa.8.sroa.0.0.i.i.i, %.critedge.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 736
  store atomic ptr null, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i.i monotonic, align 8, !noalias !47901
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.8.sroa.0.0.copyload32.i.i.i, i64 48
  %i.df = atomicrmw xchg ptr %i.de, ptr %.sroa.5.0..sroa_idx12.i.i.i.i.i.i acq_rel, align 8, !noalias !47901
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 720
  store atomic ptr %.sroa.5.0..sroa_idx12.i.i.i.i.i.i, ptr %i.dg release, align 8
  %.sroa.8.sroa.6.0.copyload34.i.i.i = load i64, ptr %i.cc, align 8, !noalias !47898 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.sroa.8.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx.sroa_idx.i.i.i, i64 7, i1 false), !noalias !47898
  %.sroa.9.0.copyload17.i.i.i = load i64, ptr %i.bz, align 8, !noalias !47898 ; 2 uses
  %.sroa.10.0.copyload21.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8, !noalias !47898 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !47897
  %.not.i.i.i.i = icmp eq ptr %i.ce, %i.br
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.p

._crit_edge.i.i.i.i:                              ; preds = %_RNCINvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream15futures_orderedINtB8_14FuturesOrderedNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1A_19PingBalancerContext3new000EINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB1o_E9from_iterINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterB1o_EE0CsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  %i.dh = icmp eq i64 %.sroa.040.0.copyload, 0
  br i1 %i.dh, label %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB13_19PingBalancerContext3new000ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator7collectINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered14FuturesOrderedBR_EECsgZAIVb0XKpv_9ssservice.exit.i, label %bb.y

bb.y:                                             ; preds = %._crit_edge.i.i.i.i
  %i.di = mul nuw i64 %.sroa.040.0.copyload, 672
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.441.0.copyload, i64 noundef %i.di, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !47897
  br label %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB13_19PingBalancerContext3new000ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator7collectINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered14FuturesOrderedBR_EECsgZAIVb0XKpv_9ssservice.exit.i

_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB13_19PingBalancerContext3new000ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator7collectINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered14FuturesOrderedBR_EECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.y, %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.0.sroa.4.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.sroa.8.i.i.i, i64 7, i1 false), !noalias !47907
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.sroa.8.i.i.i)
  br label %_RINvNtNtCscVsx2cUGvkQ_12futures_util6future8join_all8join_allINtNtCsgCecv3eZDcN_5alloc3vec3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1G_19PingBalancerContext3new000EECsgZAIVb0XKpv_9ssservice.exit

bb.z:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtCslxdWNweD0x2_11shadowsocks6plugin6PluginEECsgZAIVb0XKpv_9ssservice.exit
  %i.dj = mul nuw nsw i64 %.sroa.542.0.copyload, 680 ; 4 uses
  %i.dk = icmp eq i64 %.sroa.542.0.copyload, 0
  br i1 %i.dk, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !47908
  %i.dl = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.dj, i64 noundef range(i64 1, 17) 8) #53, !noalias !47908 ; 3 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %bb.ab, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.dj) #62, !noalias !47909
  unreachable

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.aa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.dn = phi i64 [ %niter.next.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.aa ] ; 2 uses
  %i.do = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.441.0.copyload, %bb.aa ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 672 ; 2 uses
  %i.dq = getelementptr inbounds nuw [680 x i8], ptr %i.dl, i64 %i.dn ; 2 uses
  store i64 0, ptr %i.dq, align 8, !noalias !47910
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(672) %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.1, ptr noundef nonnull align 8 dereferenceable(672) %i.do, i64 672, i1 false), !noalias !47907
  %niter.next.1 = add nuw nsw i64 %i.dn, 1        ; 2 uses
  %niter.ncmp.1 = icmp eq ptr %i.dp, %i.br
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.z
  %.sroa.10.0.i.i.i.i.i.i54.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.z ], [ %i.dl, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.42.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.z ], [ %niter.next.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.dr = icmp eq i64 %.sroa.040.0.copyload, 0
  br i1 %i.dr, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1R_19PingBalancerContext3new000ENcNtINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneB1F_E6Future0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecB3J_EECsgZAIVb0XKpv_9ssservice.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.ds = mul nuw i64 %.sroa.040.0.copyload, 672
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.441.0.copyload, i64 noundef %i.ds, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !47911
  br label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1R_19PingBalancerContext3new000ENcNtINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneB1F_E6Future0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecB3J_EECsgZAIVb0XKpv_9ssservice.exit.i.i

_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1R_19PingBalancerContext3new000ENcNtINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneB1F_E6Future0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecB3J_EECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.ac, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.dt = icmp ugt i64 %.sroa.542.0.copyload, %.sroa.42.0.i.i.i.i.i.i.i.i.i.i
  br i1 %i.dt, label %bb.ad, label %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB24_19PingBalancerContext3new000EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB40_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECsgZAIVb0XKpv_9ssservice.exit.i

bb.ad:                                            ; preds = %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1R_19PingBalancerContext3new000ENcNtINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneB1F_E6Future0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecB3J_EECsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.du = icmp eq i64 %.sroa.42.0.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.du, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, label %bb.ae

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.ad
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i.i54.i, i64 noundef %i.dj, i64 noundef range(i64 1, 17) 8) #53, !noalias !47912
  br label %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB24_19PingBalancerContext3new000EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB40_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECsgZAIVb0XKpv_9ssservice.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.dv = mul nuw nsw i64 %.sroa.42.0.i.i.i.i.i.i.i.i.i.i, 680 ; 2 uses
  %i.dw = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.i.i54.i, i64 noundef %i.dj, i64 noundef range(i64 1, 17) 8, i64 noundef range(i64 1, 0) %i.dv) #53, !noalias !47912 ; 2 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %bb.af, label %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB24_19PingBalancerContext3new000EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB40_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECsgZAIVb0XKpv_9ssservice.exit.i

bb.af:                                            ; preds = %bb.ae
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.dv) #62, !noalias !47913
  unreachable

_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB24_19PingBalancerContext3new000EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB40_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.ae, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1R_19PingBalancerContext3new000ENcNtINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneB1F_E6Future0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecB3J_EECsgZAIVb0XKpv_9ssservice.exit.i.i
  %.sroa.42.0.copyload.i.i.i = phi ptr [ %i.dw, %bb.ae ], [ inttoptr (i64 8 to ptr), %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i.i54.i, %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1R_19PingBalancerContext3new000ENcNtINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneB1F_E6Future0ENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecB3J_EECsgZAIVb0XKpv_9ssservice.exit.i.i ]
  %i.dy = icmp ult i64 %.sroa.42.0.i.i.i.i.i.i.i.i.i.i, 13563782407139377
  tail call void @llvm.assume(i1 %i.dy)
  br label %_RINvNtNtCscVsx2cUGvkQ_12futures_util6future8join_all8join_allINtNtCsgCecv3eZDcN_5alloc3vec3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1G_19PingBalancerContext3new000EECsgZAIVb0XKpv_9ssservice.exit

_RINvNtNtCscVsx2cUGvkQ_12futures_util6future8join_all8join_allINtNtCsgCecv3eZDcN_5alloc3vec3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1G_19PingBalancerContext3new000EECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB13_19PingBalancerContext3new000ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator7collectINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered14FuturesOrderedBR_EECsgZAIVb0XKpv_9ssservice.exit.i, %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB24_19PingBalancerContext3new000EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB40_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECsgZAIVb0XKpv_9ssservice.exit.i
  %.sroa.5.sroa.0.sroa.6.0.i = phi i64 [ undef, %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB24_19PingBalancerContext3new000EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB40_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECsgZAIVb0XKpv_9ssservice.exit.i ], [ %.sroa.10.0.copyload21.i.i.i, %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB13_19PingBalancerContext3new000ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator7collectINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered14FuturesOrderedBR_EECsgZAIVb0XKpv_9ssservice.exit.i ]
  %.sroa.5.sroa.0.sroa.5.0.i = phi i64 [ undef, %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB24_19PingBalancerContext3new000EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB40_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECsgZAIVb0XKpv_9ssservice.exit.i ], [ %.sroa.9.0.copyload17.i.i.i, %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB13_19PingBalancerContext3new000ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator7collectINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered14FuturesOrderedBR_EECsgZAIVb0XKpv_9ssservice.exit.i ]
  %.sroa.5.sroa.0.sroa.3.0.i = phi i8 [ undef, %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB24_19PingBalancerContext3new000EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB40_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECsgZAIVb0XKpv_9ssservice.exit.i ], [ %.sroa.8.sroa.7.0.copyload36.i.i.i, %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB13_19PingBalancerContext3new000ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator7collectINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered14FuturesOrderedBR_EECsgZAIVb0XKpv_9ssservice.exit.i ]
  %.sroa.5.sroa.0.sroa.2.0.i = phi i64 [ undef, %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB24_19PingBalancerContext3new000EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB40_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECsgZAIVb0XKpv_9ssservice.exit.i ], [ %.sroa.8.sroa.6.0.copyload34.i.i.i, %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB13_19PingBalancerContext3new000ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator7collectINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered14FuturesOrderedBR_EECsgZAIVb0XKpv_9ssservice.exit.i ]
  %.sroa.5.sroa.0.sroa.0.0.i = phi ptr [ undef, %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB24_19PingBalancerContext3new000EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB40_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECsgZAIVb0XKpv_9ssservice.exit.i ], [ %.sroa.8.sroa.0.0.copyload32.i.i.i, %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB13_19PingBalancerContext3new000ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator7collectINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered14FuturesOrderedBR_EECsgZAIVb0XKpv_9ssservice.exit.i ]
  %.sroa.4.0.i = phi i64 [ %.sroa.42.0.i.i.i.i.i.i.i.i.i.i, %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB24_19PingBalancerContext3new000EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB40_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECsgZAIVb0XKpv_9ssservice.exit.i ], [ %.sroa.7.0.copyload11.i.i.i, %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB13_19PingBalancerContext3new000ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator7collectINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered14FuturesOrderedBR_EECsgZAIVb0XKpv_9ssservice.exit.i ]
  %.sroa.3.0.i = phi ptr [ %.sroa.42.0.copyload.i.i.i, %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB24_19PingBalancerContext3new000EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB40_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECsgZAIVb0XKpv_9ssservice.exit.i ], [ %.sroa.6.0.copyload7.i.i.i, %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB13_19PingBalancerContext3new000ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator7collectINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered14FuturesOrderedBR_EECsgZAIVb0XKpv_9ssservice.exit.i ]
  %.sroa.0.0.i = phi i64 [ -1, %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB24_19PingBalancerContext3new000EEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB40_8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1S_ENcNtBQ_6Future0EECsgZAIVb0XKpv_9ssservice.exit.i ], [ %.sroa.0.0.copyload4.i.i.i, %_RINvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB13_19PingBalancerContext3new000ENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator7collectINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered14FuturesOrderedBR_EECsgZAIVb0XKpv_9ssservice.exit.i ] ; 2 uses
  %.sroa.1136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 89
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.1136.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.0.sroa.4.i, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.0.sroa.4.i)
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.0.0.i, ptr %i.dz, align 8
  %.sroa.631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.3.0.i, ptr %.sroa.631.0..sroa_idx, align 8
  %.sroa.732.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.4.0.i, ptr %.sroa.732.0..sroa_idx, align 8
  %.sroa.833.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.5.sroa.0.sroa.0.0.i, ptr %.sroa.833.0..sroa_idx, align 8
  %.sroa.934.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.5.sroa.0.sroa.2.0.i, ptr %.sroa.934.0..sroa_idx, align 8
  %.sroa.1035.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 %.sroa.5.sroa.0.sroa.3.0.i, ptr %.sroa.1035.0..sroa_idx, align 8
  %.sroa.1237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %.sroa.5.sroa.0.sroa.5.0.i, ptr %.sroa.1237.0..sroa_idx, align 8
  %.sroa.1338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %.sroa.5.sroa.0.sroa.6.0.i, ptr %.sroa.1338.0..sroa_idx, align 8
  %.sroa.1439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %.sroa.1439.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 0, ptr %.sroa.16.0..sroa_idx, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %_RINvNtNtCscVsx2cUGvkQ_12futures_util6future8join_all8join_allINtNtCsgCecv3eZDcN_5alloc3vec3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1G_19PingBalancerContext3new000EECsgZAIVb0XKpv_9ssservice.exit, %bb.f
  %i.ea = phi i64 [ %.sroa.0.0.i, %_RINvNtNtCscVsx2cUGvkQ_12futures_util6future8join_all8join_allINtNtCsgCecv3eZDcN_5alloc3vec3VecNCNCNCNvMs2_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancerNtB1G_19PingBalancerContext3new000EECsgZAIVb0XKpv_9ssservice.exit ], [ %.pre, %bb.f ]
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !47914)
  call void @llvm.experimental.noalias.scope.decl(metadata !47886)
  call void @llvm.experimental.noalias.scope.decl(metadata !47915)
  %.not.i = icmp eq i64 %i.ea, -1
  br i1 %.not.i, label %bb.dk, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !47916)
  call void @llvm.experimental.noalias.scope.decl(metadata !47917)
  call void @llvm.experimental.noalias.scope.decl(metadata !47918)
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %.val.i.i1 = load ptr, ptr %1, align 8, !alias.scope !47919, !noalias !47920 ; 5 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 11 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.el = getelementptr inbounds nuw i8, ptr %.val.i.i1, i64 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.423.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %.sroa.422.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %.sroa.523.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.en = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.eo = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %.sroa.428.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.529.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ep = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.434.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.535.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.eq = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.er = getelementptr inbounds nuw i8, ptr %i.l, i64 76
  %.sroa.430.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.sroa.422.0..sroa_idx.i.i13.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %.sroa.523.0..sroa_idx.i.i14.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.et = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.eu = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %.sroa.428.0..sroa_idx.i.i15.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.529.0..sroa_idx.i.i16.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ev = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.434.0..sroa_idx.i.i17.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.535.0..sroa_idx.i.i18.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.ew = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.ex = getelementptr inbounds nuw i8, ptr %i.k, i64 76
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.fa = insertelement <2 x ptr> poison, ptr %i.u, i64 0
  %i.fb = shufflevector <2 x ptr> %i.fa, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %bb.ai

bb.ai:                                            ; preds = %_RINvXsj_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VecINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtNtBL_2io5error5ErrorEEINtNtNtNtBL_4iter6traits7collect6ExtendBG_E6extendINtNtBL_6option6OptionBG_EECsgZAIVb0XKpv_9ssservice.exit.i.i, %bb.ah
  call void @llvm.experimental.noalias.scope.decl(metadata !47921)
  %i.fc = load i64, ptr %i.ed, align 8, !alias.scope !47922, !noalias !47923, !noundef !178 ; 6 uses
  %i.fd = icmp ult i64 %i.fc, 576460752303423488
  call void @llvm.assume(i1 %i.fd)
  %i.fe = icmp eq i64 %i.fc, 0
  br i1 %i.fe, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11binary_heap7PeekMutINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEEEECsgZAIVb0XKpv_9ssservice.exit.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ff = load ptr, ptr %i.ee, align 8, !alias.scope !47922, !noalias !47923, !nonnull !178, !noundef !178 ; 14 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8 ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !noalias !47924, !noundef !178 ; 2 uses
  %i.fi = load i64, ptr %i.ef, align 8, !alias.scope !47922, !noalias !47923, !noundef !178
  %i.fj = icmp eq i64 %i.fh, %i.fi
  br i1 %i.fj, label %bb.ak, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc11collections11binary_heap7PeekMutINtNtNtCscVsx2cUGvkQ_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEEEECsgZAIVb0XKpv_9ssservice.exit.i.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.fk = add i64 %i.fh, 1
  store i64 %i.fk, ptr %i.ef, align 8, !alias.scope !47922, !noalias !47923
  call void @llvm.experimental.noalias.scope.decl(metadata !47925)
  call void @llvm.experimental.noalias.scope.decl(metadata !47926)
  %i.fl = add nsw i64 %i.fc, -1                   ; 8 uses
  store i64 %i.fl, ptr %i.ed, align 8, !alias.scope !47927, !noalias !47928
  %i.fm = load i64, ptr %i.eb, align 8, !range !180, !alias.scope !47927, !noalias !47928, !noundef !178
  %i.fn = icmp samesign ult i64 %i.fl, %i.fm
  call void @llvm.assume(i1 %i.fn)
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %i.fl ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !noalias !47929, !noundef !178 ; 5 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fr = load i64, ptr %i.fq, align 8, !noalias !47929, !noundef !178 ; 5 uses
  %i.fs = icmp eq i64 %i.fl, 0
  br i1 %i.fs, label %bb.dh, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.ff, align 8, !noalias !47929
  store ptr %i.fp, ptr %i.ff, align 8, !noalias !47929
  store i64 %i.fr, ptr %i.fg, align 8, !noalias !47929
  %i.ft = add nsw i64 %i.fc, -3
  %.not1.i.i.i.i.i.i.i = icmp samesign ult i64 %i.fc, 4
  br i1 %.not1.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.al
  %.sroa.016.0.lcssa.i.i.i.i.i.i.i = phi i64 [ 1, %bb.al ], [ %i.gi, %.lr.ph.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.15.0.lcssa.i.i.i.i.i.i.i = phi i64 [ 0, %bb.al ], [ %i.ge, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  %i.fu = add nsw i64 %i.fc, -2
  %i.fv = icmp eq i64 %.sroa.016.0.lcssa.i.i.i.i.i.i.i, %i.fu
  br i1 %i.fv, label %.thread.i.i.i.i.i.i.i, label %bb.am

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.al, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.15.03.i.i.i.i.i.i.i = phi i64 [ %i.ge, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %bb.al ]
  %.sroa.016.02.i.i.i.i.i.i.i = phi i64 [ %i.gi, %.lr.ph.i.i.i.i.i.i.i ], [ 1, %bb.al ] ; 3 uses
  %i.fw = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %.sroa.016.02.i.i.i.i.i.i.i
  %i.fx = add nuw nsw i64 %.sroa.016.02.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.fy = icmp samesign ult i64 %i.fx, %i.fl
  call void @llvm.assume(i1 %i.fy)
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %i.fx
  %i.ga = getelementptr i8, ptr %i.fw, i64 8
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.ga, align 8, !noalias !47929, !noundef !178
  %i.gb = getelementptr i8, ptr %i.fz, i64 8
  %.val26.i.i.i.i.i.i.i = load i64, ptr %i.gb, align 8, !noalias !47929, !noundef !178
  %i.gc = icmp sle i64 %.val26.i.i.i.i.i.i.i, %.val.i.i.i.i.i.i.i
  %i.gd = zext i1 %i.gc to i64
  %i.ge = add nuw nsw i64 %.sroa.016.02.i.i.i.i.i.i.i, %i.gd ; 4 uses
  %i.gf = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %i.ge
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %.sroa.15.03.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gg, ptr noundef nonnull align 8 dereferenceable(16) %i.gf, i64 16, i1 false), !noalias !47929
  %i.gh = shl nuw nsw i64 %i.ge, 1                ; 2 uses
  %i.gi = or disjoint i64 %i.gh, 1                ; 2 uses
  %.not.not.i.i.i.i.i.i.i = icmp samesign ult i64 %i.gh, %i.ft
  br i1 %.not.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i
end_hunk_1
begin_hunk_2_@_RNvMs0_NtNtNtCsczhfDQ1qNkX_5tokio7runtime4task7harnessINtB5_7HarnessNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local6tunnel8tcprelay17handle_tcp_client0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE14drop_referenceCsgZAIVb0XKpv_9ssservice:bb.a
bb.d:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4core4CoreNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local6tunnel8tcprelay17handle_tcp_client0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtBI_9scheduler12multi_thread6handle6HandleEEECsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.i = getelementptr i8, ptr %0, i64 12536
  %.val1.i.i.i = load ptr, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !178, !noundef !178
  tail call void %i.k(ptr noundef %.val1.i.i.i) #53, !inline_history !144
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsgZAIVb0XKpv_9ssservice.exit.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsgZAIVb0XKpv_9ssservice.exit.i.i.i: ; preds = %bb.d, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4core4CoreNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local6tunnel8tcprelay17handle_tcp_client0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtBI_9scheduler12multi_thread6handle6HandleEEECsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12544 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89304)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !89305, !noundef !178 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4core4CellNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local6tunnel8tcprelay17handle_tcp_client0INtNtBG_4sync3ArcNtNtNtNtB1h_9scheduler12multi_thread6handle6HandleEEEECsgZAIVb0XKpv_9ssservice.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsgZAIVb0XKpv_9ssservice.exit.i.i.i
  %i.o = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !89306
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4core4CellNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local6tunnel8tcprelay17handle_tcp_client0INtNtBG_4sync3ArcNtNtNtNtB1h_9scheduler12multi_thread6handle6HandleEEEECsgZAIVb0XKpv_9ssservice.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDG0_INtNtNtCsf3Ta7LF998c_4core3ops8function2FnTRL1_INtNtNtCsczhfDQ1qNkX_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2G_4SyncEL_E9drop_slowB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l) #60
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4core4CellNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local6tunnel8tcprelay17handle_tcp_client0INtNtBG_4sync3ArcNtNtNtNtB1h_9scheduler12multi_thread6handle6HandleEEEECsgZAIVb0XKpv_9ssservice.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4core4CellNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local6tunnel8tcprelay17handle_tcp_client0INtNtBG_4sync3ArcNtNtNtNtB1h_9scheduler12multi_thread6handle6HandleEEEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsgZAIVb0XKpv_9ssservice.exit.i.i.i, %bb.e, %bb.f
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 12672, i64 noundef 128) #53
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4core4CellNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local6tunnel8tcprelay17handle_tcp_client0INtNtBG_4sync3ArcNtNtNtNtB1h_9scheduler12multi_thread6handle6HandleEEEECsgZAIVb0XKpv_9ssservice.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtNtCsczhfDQ1qNkX_5tokio7runtime4task7harnessINtB5_7HarnessNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local6tunnel8tcprelay17handle_tcp_client0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE8completeCsgZAIVb0XKpv_9ssservice(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = tail call noundef i64 @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task5stateNtB2_5State22transition_to_complete(ptr noundef nonnull align 8 %0) #53 ; 2 uses
  %i.d = and i64 %i.c, 8
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !89321
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !range !194, !noalias !89321, !noundef !178
  %i.g = tail call noundef i64 @_RNvMs2_NtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter(i64 noundef %i.f) #53, !noalias !89321
  store i64 %i.g, ptr %i.b, align 8, !noalias !89321
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4core5StageNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local6tunnel8tcprelay17handle_tcp_client0EECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 16 %i.h) #53, !noalias !89321
  store i32 2, ptr %i.h, align 16
  call void @_RNvXs3_NtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #53, !noalias !89321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !89321
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsgZAIVb0XKpv_9ssservice.exit

bb.c:                                             ; preds = %bb.a
  %i.i = and i64 %i.c, 16
  %.not1.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not1.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsgZAIVb0XKpv_9ssservice.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12512 ; 2 uses
  tail call void @_RNvMs6_NtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4coreNtB5_7Trailer9wake_join(ptr noundef nonnull align 8 %i.j) #53
  %i.k = tail call noundef i64 @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task5stateNtB2_5State26unset_waker_after_complete(ptr noundef nonnull align 8 %0) #53
  %i.l = and i64 %i.k, 8
  %.not2.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not2.i.i.i.i, label %bb.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsgZAIVb0XKpv_9ssservice.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs6_NtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef) #53
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsgZAIVb0XKpv_9ssservice.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.n = call noundef ptr @_RNvXs_NtNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler12multi_thread6handleINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB4_6HandleENtNtBa_4task8Schedule7release(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) #53
  %.not.i = icmp eq ptr %i.n, null
  %..i = select i1 %.not.i, i64 1, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = call noundef zeroext i1 @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef %..i) #53
  br i1 %i.o, label %bb.f, label %bb.k

bb.f:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsgZAIVb0XKpv_9ssservice.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !89322)
  call void @llvm.experimental.noalias.scope.decl(metadata !89323)
  %i.p = load ptr, ptr %i.m, align 8, !alias.scope !89324, !nonnull !178, !noundef !178
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !89324
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4core4CoreNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local6tunnel8tcprelay17handle_tcp_client0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtBI_9scheduler12multi_thread6handle6HandleEEECsgZAIVb0XKpv_9ssservice.exit.i.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 16 dereferenceable(8) %i.m) #60
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4core4CoreNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local6tunnel8tcprelay17handle_tcp_client0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtBI_9scheduler12multi_thread6handle6HandleEEECsgZAIVb0XKpv_9ssservice.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4core4CoreNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local6tunnel8tcprelay17handle_tcp_client0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtBI_9scheduler12multi_thread6handle6HandleEEECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.g, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4core5StageNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local6tunnel8tcprelay17handle_tcp_client0EECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 16 %i.s) #53
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12528
  %.val.i.i.i = load ptr, ptr %i.t, align 8, !align !186, !noundef !178 ; 2 uses
  %i.u = icmp eq ptr %.val.i.i.i, null
  br i1 %i.u, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsgZAIVb0XKpv_9ssservice.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4core4CoreNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local6tunnel8tcprelay17handle_tcp_client0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtBI_9scheduler12multi_thread6handle6HandleEEECsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.v = getelementptr i8, ptr %0, i64 12536
  %.val1.i.i.i = load ptr, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !178, !noundef !178
  call void %i.x(ptr noundef %.val1.i.i.i) #53, !inline_history !144
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsgZAIVb0XKpv_9ssservice.exit.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsgZAIVb0XKpv_9ssservice.exit.i.i.i: ; preds = %bb.h, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4core4CoreNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local6tunnel8tcprelay17handle_tcp_client0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtBI_9scheduler12multi_thread6handle6HandleEEECsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12544 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !89325)
  call void @llvm.experimental.noalias.scope.decl(metadata !89326)
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !89327, !noundef !178 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4core4CellNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local6tunnel8tcprelay17handle_tcp_client0INtNtBG_4sync3ArcNtNtNtNtB1h_9scheduler12multi_thread6handle6HandleEEEECsgZAIVb0XKpv_9ssservice.exit, label %bb.i

bb.i:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsgZAIVb0XKpv_9ssservice.exit.i.i.i
  %i.ab = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !89328
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.j, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4core4CellNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local6tunnel8tcprelay17handle_tcp_client0INtNtBG_4sync3ArcNtNtNtNtB1h_9scheduler12multi_thread6handle6HandleEEEECsgZAIVb0XKpv_9ssservice.exit

bb.j:                                             ; preds = %bb.i
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDG0_INtNtNtCsf3Ta7LF998c_4core3ops8function2FnTRL1_INtNtNtCsczhfDQ1qNkX_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2G_4SyncEL_E9drop_slowB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.y) #60
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4core4CellNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local6tunnel8tcprelay17handle_tcp_client0INtNtBG_4sync3ArcNtNtNtNtB1h_9scheduler12multi_thread6handle6HandleEEEECsgZAIVb0XKpv_9ssservice.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4core4CellNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local6tunnel8tcprelay17handle_tcp_client0INtNtBG_4sync3ArcNtNtNtNtB1h_9scheduler12multi_thread6handle6HandleEEEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsczhfDQ1qNkX_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsgZAIVb0XKpv_9ssservice.exit.i.i.i, %bb.i, %bb.j
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef 12672, i64 noundef 128) #53
  br label %bb.k

bb.k:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsgZAIVb0XKpv_9ssservice.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4core4CellNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local6tunnel8tcprelay17handle_tcp_client0INtNtBG_4sync3ArcNtNtNtNtB1h_9scheduler12multi_thread6handle6HandleEEEECsgZAIVb0XKpv_9ssservice.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantEE15bulk_steal_leftCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [32 x i8], align 8            ; 2 uses
  %.sroa.2 = alloca [24 x i8], align 8            ; 2 uses
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !178, !noundef !178 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 626 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !178
  %i.f = zext i16 %i.e to i64                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !178, !noundef !178 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 626 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !178
  %i.k = zext i16 %i.j to i64                     ; 5 uses
  %i.l = add nuw nsw i64 %1, %i.k                 ; 3 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !192

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2140, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2141) #63
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.f
  br i1 %.not, label %bb.d, label %bb.e, !prof !187

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2142, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2143) #63
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.f, %1                 ; 4 uses
  %i.o = trunc nuw i64 %i.n to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw nsw i64 %i.l to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %1
  %i.r = shl nuw nsw i64 %i.k, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.q, ptr nonnull align 4 %i.h, i64 %i.r, i1 false), !alias.scope !89348
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 360 ; 4 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %1
  %i.u = mul nuw nsw i64 %i.k, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.s, i64 %i.u, i1 false), !alias.scope !89349
  %i.v = add nuw nsw i64 %i.n, 1                  ; 4 uses
  %i.w = sub nuw nsw i64 %i.f, %i.v               ; 5 uses
  %i.x = add nsw i64 %1, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89351)
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTINtNtB8_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantEECsgZAIVb0XKpv_9ssservice.exit, label %bb.f, !prof !192

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @496, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @497) #63, !noalias !89352
  unreachable

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTINtNtB8_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.e
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.v
  %i.aa = shl nuw nsw i64 %i.w, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.h, ptr nonnull readonly align 4 %i.z, i64 %i.aa, i1 false), !alias.scope !89352
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 360 ; 2 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.v
  %i.ad = mul nuw nsw i64 %i.w, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull readonly align 8 %i.ac, i64 %i.ad, i1 false), !alias.scope !89353
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  %.val = load ptr, ptr %0, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val17 = load i64, ptr %i.ag, align 8, !noundef !178 ; 2 uses
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.val17 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 360
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %.val17 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(32) %i.ah, i64 32, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ah, ptr noundef nonnull align 4 dereferenceable(32) %i.ae, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !89354
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, i64 32, i1 false)
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load i64, ptr %i.am, align 8, !noundef !178
  %i.ao = icmp eq i64 %i.an, 0
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !178
  %i.ar = icmp eq i64 %i.aq, 0                    ; 2 uses
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTINtNtB8_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantEECsgZAIVb0XKpv_9ssservice.exit
  br i1 %i.ar, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit, label %bb.j, !prof !192

bb.h:                                             ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTINtNtB8_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantEECsgZAIVb0XKpv_9ssservice.exit
  br i1 %i.ar, label %bb.j, label %bb.k, !prof !187

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.loopexit.unr-lcssa: ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.loopexit.unr-lcssa, %bb.k
  %.sroa.0.06.i.epil.init = phi i64 [ 0, %bb.k ], [ %i.ca, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.loopexit.unr-lcssa ]
  %lcmp.mod23 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod23)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.sroa.0.06.i.epil = phi i64 [ %.sroa.0.06.i.epil.init, %.epil.preheader ], [ %i.as, %bb.i ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.as = add nuw nsw i64 %.sroa.0.06.i.epil, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.sroa.0.06.i.epil
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 352
  store ptr %i.h, ptr %i.av, align 8
  %i.aw = trunc nuw nsw i64 %.sroa.0.06.i.epil to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 624
  store i16 %i.aw, ptr %i.ax, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit, label %bb.i, !llvm.loop !89342

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.loopexit.unr-lcssa, %bb.i, %bb.g
  ret void

bb.j:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @358, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2144) #63
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 632 ; 8 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %1
  %i.ba = shl nuw nsw i64 %i.k, 3
  %i.bb = add nuw nsw i64 %i.ba, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.az, ptr noundef nonnull align 8 dereferenceable(1) %i.ay, i64 %i.bb, i1 false), !alias.scope !89355
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 632
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.v
  %i.be = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.bd, i64 %i.be, i1 false), !alias.scope !89356
  %i.bf = add nuw nsw i64 %1, %i.k
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %xtraiter = and i64 %i.bg, 3                    ; 3 uses
  %i.bh = icmp samesign ult i64 %i.l, 3
  br i1 %i.bh, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.k
  %unroll_iter = and i64 %i.bg, 60
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.new
  %.sroa.0.06.i = phi i64 [ 0, %.new ], [ %i.ca, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.l ]
  %i.bi = or disjoint i64 %.sroa.0.06.i, 1        ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.sroa.0.06.i
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 352
  store ptr %i.h, ptr %i.bl, align 8
  %i.bm = trunc nuw nsw i64 %.sroa.0.06.i to i16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 624
  store i16 %i.bm, ptr %i.bn, align 8
  %i.bo = or disjoint i64 %.sroa.0.06.i, 2        ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bi
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 352
  store ptr %i.h, ptr %i.br, align 8
  %i.bs = trunc nuw nsw i64 %i.bi to i16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 624
  store i16 %i.bs, ptr %i.bt, align 8
  %i.bu = or disjoint i64 %.sroa.0.06.i, 3        ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bo
  %i.bw = load ptr, ptr %i.bv, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 352
  store ptr %i.h, ptr %i.bx, align 8
  %i.by = trunc nuw nsw i64 %i.bo to i16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 624
  store i16 %i.by, ptr %i.bz, align 8
  %i.ca = add nuw nsw i64 %.sroa.0.06.i, 4        ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bu
  %i.cc = load ptr, ptr %i.cb, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 352
  store ptr %i.h, ptr %i.cd, align 8
  %i.ce = trunc nuw nsw i64 %i.bu to i16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 624
  store i16 %i.ce, ptr %i.cf, align 8
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.loopexit.unr-lcssa, label %bb.l
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantEE16bulk_steal_rightCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [32 x i8], align 8            ; 2 uses
  %.sroa.2 = alloca [24 x i8], align 8            ; 2 uses
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !178, !noundef !178 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 626 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !178 ; 6 uses
  %i.f = zext i16 %i.e to i64                     ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !178, !noundef !178 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 626 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !178
  %i.k = zext i16 %i.j to i64                     ; 3 uses
  %i.l = add nuw nsw i64 %1, %i.f                 ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !192

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2145, i64 noundef 50, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2146) #63
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.k
  br i1 %.not, label %bb.d, label %bb.e, !prof !187

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2147, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2148) #63
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.k, %1                 ; 5 uses
  %i.o = trunc nuw nsw i64 %i.l to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw i64 %i.n to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = add nsw i64 %1, -1                       ; 4 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 360 ; 4 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  %.val = load ptr, ptr %0, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val18 = load i64, ptr %i.u, align 8, !noundef !178 ; 2 uses
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.val18 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 360
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %.val18 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(32) %i.v, i64 32, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.v, ptr noundef nonnull align 4 dereferenceable(32) %i.r, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !89376
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, i64 32, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 360 ; 2 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2, i64 24, i1 false)
  %i.ab = add nuw nsw i64 %i.f, 1                 ; 5 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.ab
  %i.ad = shl nuw nsw i64 %i.q, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ac, ptr nonnull readonly align 4 %i.h, i64 %i.ad, i1 false), !alias.scope !89377
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.ab
  %i.af = mul nuw nsw i64 %i.q, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr nonnull readonly align 8 %i.s, i64 %i.af, i1 false), !alias.scope !89378
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %1
  %i.ah = shl nuw nsw i64 %i.n, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.h, ptr nonnull align 4 %i.ag, i64 %i.ah, i1 false), !alias.scope !89379
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %1
  %i.aj = mul nuw nsw i64 %i.n, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 8 %i.ai, i64 %i.aj, i1 false), !alias.scope !89380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !noundef !178
  %i.am = icmp eq i64 %i.al, 0
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = load i64, ptr %i.an, align 8, !noundef !178
  %i.ap = icmp eq i64 %i.ao, 0                    ; 2 uses
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.ap, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25, label %bb.h, !prof !192

bb.g:                                             ; preds = %bb.e
  br i1 %i.ap, label %bb.h, label %bb.i, !prof !187

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25.loopexit.unr-lcssa: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil.preheader

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil.preheader: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader
  %.sroa.0.06.i23.epil.init = phi i64 [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader ], [ %i.dh, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25.loopexit.unr-lcssa ]
  %lcmp.mod30 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod30)
  br label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil.preheader
  %.sroa.0.06.i23.epil = phi i64 [ %i.aq, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil ], [ %.sroa.0.06.i23.epil.init, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil ], [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil.preheader ]
  %i.aq = add nuw nsw i64 %.sroa.0.06.i23.epil, 1
  %i.ar = icmp samesign ult i64 %.sroa.0.06.i23.epil, 12
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.sroa.0.06.i23.epil
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 352
  store ptr %i.h, ptr %i.au, align 8
  %i.av = trunc nuw nsw i64 %.sroa.0.06.i23.epil to i16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 624
  store i16 %i.av, ptr %i.aw, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil, !llvm.loop !89370

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil, %bb.f
  ret void

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @358, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2149) #63
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 632 ; 8 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 632 ; 6 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ab
  %i.ba = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.az, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.ax, i64 %i.ba, i1 false), !alias.scope !89381
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %1
  %i.bc = shl nuw nsw i64 %i.n, 3
  %i.bd = add nuw nsw i64 %i.bc, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(1) %i.bb, i64 %i.bd, i1 false), !alias.scope !89382
  %i.be = icmp ult i16 %i.e, 11
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ab
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 352
  store ptr %i.c, ptr %i.bh, align 8
  %i.bi = trunc nuw nsw i64 %i.ab to i16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 624
  store i16 %i.bi, ptr %i.bj, align 8
  %exitcond.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.not.i, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = add nuw nsw i64 %i.f, 2                 ; 2 uses
  %i.bl = icmp samesign ult i16 %i.e, 10
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bk
  %i.bn = load ptr, ptr %i.bm, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 352
  store ptr %i.c, ptr %i.bo, align 8
  %i.bp = trunc nuw nsw i64 %i.bk to i16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 624
  store i16 %i.bp, ptr %i.bq, align 8
  %exitcond.not.i.1 = icmp eq i64 %1, 2
  br i1 %exitcond.not.i.1, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = add nuw nsw i64 %i.f, 3                 ; 2 uses
  %i.bs = icmp samesign ult i16 %i.e, 9
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.br
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 352
  store ptr %i.c, ptr %i.bv, align 8
  %i.bw = trunc nuw nsw i64 %i.br to i16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 624
  store i16 %i.bw, ptr %i.bx, align 8
  %exitcond.not.i.2 = icmp eq i64 %1, 3
  br i1 %exitcond.not.i.2, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.by = add nuw nsw i64 %i.f, 4                 ; 2 uses
  %i.bz = icmp samesign ult i16 %i.e, 8
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.by
  %i.cb = load ptr, ptr %i.ca, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 352
  store ptr %i.c, ptr %i.cc, align 8
  %i.cd = trunc nuw nsw i64 %i.by to i16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 624
  store i16 %i.cd, ptr %i.ce, align 8
  %exitcond.not.i.3 = icmp eq i64 %1, 4
  br i1 %exitcond.not.i.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cf = add nuw nsw i64 %i.f, 5                 ; 2 uses
  %i.cg = icmp ne i16 %i.e, 7
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.cf
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 352
  store ptr %i.c, ptr %i.cj, align 8
  %i.ck = trunc nuw nsw i64 %i.cf to i16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 624
  store i16 %i.ck, ptr %i.cl, align 8
  br label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.cm = add nuw nsw i64 %i.k, 1
  %i.cn = sub nsw i64 %i.cm, %1                   ; 2 uses
  %xtraiter = and i64 %i.cn, 3                    ; 3 uses
  %i.co = icmp samesign ult i64 %i.n, 3
  br i1 %i.co, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil.preheader, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader.new

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader.new: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader
  %unroll_iter = and i64 %i.cn, -4
  br label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader.new
  %.sroa.0.06.i23 = phi i64 [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader.new ], [ %i.dh, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit ] ; 7 uses
  %niter = phi i64 [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader.new ], [ %niter.next.3, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit ]
  %i.cp = or disjoint i64 %.sroa.0.06.i23, 1      ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.sroa.0.06.i23
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 352
  store ptr %i.h, ptr %i.cs, align 8
  %i.ct = trunc nuw nsw i64 %.sroa.0.06.i23 to i16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 624
  store i16 %i.ct, ptr %i.cu, align 8
  %i.cv = or disjoint i64 %.sroa.0.06.i23, 2      ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.cp
  %i.cx = load ptr, ptr %i.cw, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 352
  store ptr %i.h, ptr %i.cy, align 8
  %i.cz = trunc nuw nsw i64 %i.cp to i16
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 624
  store i16 %i.cz, ptr %i.da, align 8
  %i.db = or disjoint i64 %.sroa.0.06.i23, 3      ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.cv
  %i.dd = load ptr, ptr %i.dc, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 352
  store ptr %i.h, ptr %i.de, align 8
  %i.df = trunc nuw nsw i64 %i.cv to i16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 624
  store i16 %i.df, ptr %i.dg, align 8
  %i.dh = add nuw nsw i64 %.sroa.0.06.i23, 4      ; 2 uses
  %i.di = icmp samesign ult i64 %.sroa.0.06.i23, 12
  tail call void @llvm.assume(i1 %i.di)
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.db
  %i.dk = load ptr, ptr %i.dj, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 352
  store ptr %i.h, ptr %i.dl, align 8
  %i.dm = trunc nuw nsw i64 %i.db to i16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 624
  store i16 %i.dm, ptr %i.dn, align 8
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25.loopexit.unr-lcssa, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtBc_4sync3ArcNtNtNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5redir8udprelay3sys4unix5linux14UdpRedirSocketENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2k_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEE15bulk_steal_leftCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [32 x i8], align 8            ; 2 uses
  %.sroa.2 = alloca [32 x i8], align 8            ; 2 uses
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !178, !noundef !178 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 714 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !178
  %i.f = zext i16 %i.e to i64                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !178, !noundef !178 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 714 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !178
  %i.k = zext i16 %i.j to i64                     ; 4 uses
  %i.l = add nuw nsw i64 %1, %i.k                 ; 3 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !192

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2140, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2141) #63
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.f
  br i1 %.not, label %bb.d, label %bb.e, !prof !187

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2142, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2143) #63
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.f, %1                 ; 4 uses
  %i.o = trunc nuw i64 %i.n to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw nsw i64 %i.l to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %1
  %i.r = shl nuw nsw i64 %i.k, 5                  ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.q, ptr nonnull align 4 %i.h, i64 %i.r, i1 false), !alias.scope !89402
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 352 ; 4 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.s, i64 %i.r, i1 false), !alias.scope !89403
  %i.u = add nuw nsw i64 %i.n, 1                  ; 4 uses
  %i.v = sub nuw nsw i64 %i.f, %i.u               ; 4 uses
  %i.w = add nsw i64 %1, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89405)
  %i.x = icmp eq i64 %i.v, %i.w
  br i1 %i.x, label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1f_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEECsgZAIVb0XKpv_9ssservice.exit, label %bb.f, !prof !192

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @496, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @497) #63, !noalias !89406
  unreachable

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1f_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.e
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.u
  %i.z = shl nuw nsw i64 %i.v, 5                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.h, ptr nonnull readonly align 4 %i.y, i64 %i.z, i1 false), !alias.scope !89406
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 352 ; 2 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull readonly align 8 %i.ab, i64 %i.z, i1 false), !alias.scope !89407
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 32, i1 false)
  %.val = load ptr, ptr %0, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val17 = load i64, ptr %i.ae, align 8, !noundef !178 ; 2 uses
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.val17 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 352
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %.val17 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(32) %i.af, i64 32, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.af, ptr noundef nonnull align 4 dereferenceable(32) %i.ac, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !89408
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, i64 32, i1 false)
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !noundef !178
  %i.am = icmp eq i64 %i.al, 0
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = load i64, ptr %i.an, align 8, !noundef !178
  %i.ap = icmp eq i64 %i.ao, 0                    ; 2 uses
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1f_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEECsgZAIVb0XKpv_9ssservice.exit
  br i1 %i.ap, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit, label %bb.j, !prof !192

bb.h:                                             ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1f_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEECsgZAIVb0XKpv_9ssservice.exit
  br i1 %i.ap, label %bb.j, label %bb.k, !prof !187

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.loopexit.unr-lcssa: ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.loopexit.unr-lcssa, %bb.k
  %.sroa.0.06.i.epil.init = phi i64 [ 0, %bb.k ], [ %i.by, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.loopexit.unr-lcssa ]
  %lcmp.mod23 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod23)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.sroa.0.06.i.epil = phi i64 [ %.sroa.0.06.i.epil.init, %.epil.preheader ], [ %i.aq, %bb.i ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.aq = add nuw nsw i64 %.sroa.0.06.i.epil, 1
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.sroa.0.06.i.epil
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 704
  store ptr %i.h, ptr %i.at, align 8
  %i.au = trunc nuw nsw i64 %.sroa.0.06.i.epil to i16
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 712
  store i16 %i.au, ptr %i.av, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit, label %bb.i, !llvm.loop !89396

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.loopexit.unr-lcssa, %bb.i, %bb.g
  ret void

bb.j:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @358, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2144) #63
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 720 ; 8 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %1
  %i.ay = shl nuw nsw i64 %i.k, 3
  %i.az = add nuw nsw i64 %i.ay, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.az, i1 false), !alias.scope !89409
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 720
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.u
  %i.bc = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.bb, i64 %i.bc, i1 false), !alias.scope !89410
  %i.bd = add nuw nsw i64 %1, %i.k
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %xtraiter = and i64 %i.be, 3                    ; 3 uses
  %i.bf = icmp samesign ult i64 %i.l, 3
  br i1 %i.bf, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.k
  %unroll_iter = and i64 %i.be, 60
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.new
  %.sroa.0.06.i = phi i64 [ 0, %.new ], [ %i.by, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.l ]
  %i.bg = or disjoint i64 %.sroa.0.06.i, 1        ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.sroa.0.06.i
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 704
  store ptr %i.h, ptr %i.bj, align 8
  %i.bk = trunc nuw nsw i64 %.sroa.0.06.i to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 712
  store i16 %i.bk, ptr %i.bl, align 8
  %i.bm = or disjoint i64 %.sroa.0.06.i, 2        ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bg
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 704
  store ptr %i.h, ptr %i.bp, align 8
  %i.bq = trunc nuw nsw i64 %i.bg to i16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 712
  store i16 %i.bq, ptr %i.br, align 8
  %i.bs = or disjoint i64 %.sroa.0.06.i, 3        ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bm
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 704
  store ptr %i.h, ptr %i.bv, align 8
  %i.bw = trunc nuw nsw i64 %i.bm to i16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 712
  store i16 %i.bw, ptr %i.bx, align 8
  %i.by = add nuw nsw i64 %.sroa.0.06.i, 4        ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bs
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 704
  store ptr %i.h, ptr %i.cb, align 8
  %i.cc = trunc nuw nsw i64 %i.bs to i16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 712
  store i16 %i.cc, ptr %i.cd, align 8
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.loopexit.unr-lcssa, label %bb.l
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2k_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEE16bulk_steal_rightCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [32 x i8], align 8            ; 2 uses
  %.sroa.2 = alloca [32 x i8], align 8            ; 2 uses
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !178, !noundef !178 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 714 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !178 ; 6 uses
  %i.f = zext i16 %i.e to i64                     ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !178, !noundef !178 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 714 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !178
  %i.k = zext i16 %i.j to i64                     ; 3 uses
  %i.l = add nuw nsw i64 %1, %i.f                 ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !192

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2145, i64 noundef 50, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2146) #63
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.k
  br i1 %.not, label %bb.d, label %bb.e, !prof !187

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2147, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2148) #63
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.k, %1                 ; 4 uses
  %i.o = trunc nuw nsw i64 %i.l to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw i64 %i.n to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = add nsw i64 %1, -1                       ; 3 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 352 ; 4 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false)
  %.val = load ptr, ptr %0, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val18 = load i64, ptr %i.u, align 8, !noundef !178 ; 2 uses
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.val18 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 352
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %.val18 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(32) %i.v, i64 32, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.v, ptr noundef nonnull align 4 dereferenceable(32) %i.r, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !89430
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, i64 32, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 352 ; 2 uses
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, i64 32, i1 false)
  %i.ab = add nuw nsw i64 %i.f, 1                 ; 5 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.ab
  %i.ad = shl nuw nsw i64 %i.q, 5                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ac, ptr nonnull readonly align 4 %i.h, i64 %i.ad, i1 false), !alias.scope !89431
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr nonnull readonly align 8 %i.s, i64 %i.ad, i1 false), !alias.scope !89432
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %1
  %i.ag = shl nuw nsw i64 %i.n, 5                 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.h, ptr nonnull align 4 %i.af, i64 %i.ag, i1 false), !alias.scope !89433
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 8 %i.ah, i64 %i.ag, i1 false), !alias.scope !89434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !178
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = load i64, ptr %i.al, align 8, !noundef !178
  %i.an = icmp eq i64 %i.am, 0                    ; 2 uses
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.an, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25, label %bb.h, !prof !192

bb.g:                                             ; preds = %bb.e
  br i1 %i.an, label %bb.h, label %bb.i, !prof !187

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25.loopexit.unr-lcssa: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil.preheader

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil.preheader: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader
  %.sroa.0.06.i23.epil.init = phi i64 [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader ], [ %i.df, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25.loopexit.unr-lcssa ]
  %lcmp.mod30 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod30)
  br label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil.preheader
  %.sroa.0.06.i23.epil = phi i64 [ %i.ao, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil ], [ %.sroa.0.06.i23.epil.init, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil ], [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil.preheader ]
  %i.ao = add nuw nsw i64 %.sroa.0.06.i23.epil, 1
  %i.ap = icmp samesign ult i64 %.sroa.0.06.i23.epil, 12
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.sroa.0.06.i23.epil
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 704
  store ptr %i.h, ptr %i.as, align 8
  %i.at = trunc nuw nsw i64 %.sroa.0.06.i23.epil to i16
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 712
  store i16 %i.at, ptr %i.au, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil, !llvm.loop !89424

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil, %bb.f
  ret void

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @358, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2149) #63
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 720 ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 720 ; 6 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ab
  %i.ay = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.av, i64 %i.ay, i1 false), !alias.scope !89435
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %1
  %i.ba = shl nuw nsw i64 %i.n, 3
  %i.bb = add nuw nsw i64 %i.ba, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.av, ptr noundef nonnull align 8 dereferenceable(1) %i.az, i64 %i.bb, i1 false), !alias.scope !89436
  %i.bc = icmp ult i16 %i.e, 11
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ab
  %i.be = load ptr, ptr %i.bd, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 704
  store ptr %i.c, ptr %i.bf, align 8
  %i.bg = trunc nuw nsw i64 %i.ab to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 712
  store i16 %i.bg, ptr %i.bh, align 8
  %exitcond.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.not.i, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = add nuw nsw i64 %i.f, 2                 ; 2 uses
  %i.bj = icmp samesign ult i16 %i.e, 10
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bi
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 704
  store ptr %i.c, ptr %i.bm, align 8
  %i.bn = trunc nuw nsw i64 %i.bi to i16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 712
  store i16 %i.bn, ptr %i.bo, align 8
  %exitcond.not.i.1 = icmp eq i64 %1, 2
  br i1 %exitcond.not.i.1, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = add nuw nsw i64 %i.f, 3                 ; 2 uses
  %i.bq = icmp samesign ult i16 %i.e, 9
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bp
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 704
  store ptr %i.c, ptr %i.bt, align 8
  %i.bu = trunc nuw nsw i64 %i.bp to i16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 712
  store i16 %i.bu, ptr %i.bv, align 8
  %exitcond.not.i.2 = icmp eq i64 %1, 3
  br i1 %exitcond.not.i.2, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = add nuw nsw i64 %i.f, 4                 ; 2 uses
  %i.bx = icmp samesign ult i16 %i.e, 8
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bw
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 704
  store ptr %i.c, ptr %i.ca, align 8
  %i.cb = trunc nuw nsw i64 %i.bw to i16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 712
  store i16 %i.cb, ptr %i.cc, align 8
  %exitcond.not.i.3 = icmp eq i64 %1, 4
  br i1 %exitcond.not.i.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = add nuw nsw i64 %i.f, 5                 ; 2 uses
  %i.ce = icmp ne i16 %i.e, 7
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.cd
  %i.cg = load ptr, ptr %i.cf, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 704
  store ptr %i.c, ptr %i.ch, align 8
  %i.ci = trunc nuw nsw i64 %i.cd to i16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 712
  store i16 %i.ci, ptr %i.cj, align 8
  br label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.ck = add nuw nsw i64 %i.k, 1
  %i.cl = sub nsw i64 %i.ck, %1                   ; 2 uses
  %xtraiter = and i64 %i.cl, 3                    ; 3 uses
  %i.cm = icmp samesign ult i64 %i.n, 3
  br i1 %i.cm, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil.preheader, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader.new

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader.new: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader
  %unroll_iter = and i64 %i.cl, -4
  br label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader.new
  %.sroa.0.06.i23 = phi i64 [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader.new ], [ %i.df, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit ] ; 7 uses
  %niter = phi i64 [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader.new ], [ %niter.next.3, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit ]
  %i.cn = or disjoint i64 %.sroa.0.06.i23, 1      ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.sroa.0.06.i23
  %i.cp = load ptr, ptr %i.co, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 704
  store ptr %i.h, ptr %i.cq, align 8
  %i.cr = trunc nuw nsw i64 %.sroa.0.06.i23 to i16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 712
  store i16 %i.cr, ptr %i.cs, align 8
  %i.ct = or disjoint i64 %.sroa.0.06.i23, 2      ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.cn
  %i.cv = load ptr, ptr %i.cu, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 704
  store ptr %i.h, ptr %i.cw, align 8
  %i.cx = trunc nuw nsw i64 %i.cn to i16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 712
  store i16 %i.cx, ptr %i.cy, align 8
  %i.cz = or disjoint i64 %.sroa.0.06.i23, 3      ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ct
  %i.db = load ptr, ptr %i.da, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 704
  store ptr %i.h, ptr %i.dc, align 8
  %i.dd = trunc nuw nsw i64 %i.ct to i16
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 712
  store i16 %i.dd, ptr %i.de, align 8
  %i.df = add nuw nsw i64 %.sroa.0.06.i23, 4      ; 2 uses
  %i.dg = icmp samesign ult i64 %.sroa.0.06.i23, 12
  tail call void @llvm.assume(i1 %i.dg)
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.cz
  %i.di = load ptr, ptr %i.dh, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 704
  store ptr %i.h, ptr %i.dj, align 8
  %i.dk = trunc nuw nsw i64 %i.cz to i16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 712
  store i16 %i.dk, ptr %i.dl, align 8
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25.loopexit.unr-lcssa, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_3tun3udp19UdpTunInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2k_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEE15bulk_steal_leftCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [32 x i8], align 8            ; 2 uses
  %.sroa.2 = alloca [32 x i8], align 8            ; 2 uses
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !178, !noundef !178 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 714 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !178
  %i.f = zext i16 %i.e to i64                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !178, !noundef !178 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 714 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !178
  %i.k = zext i16 %i.j to i64                     ; 4 uses
  %i.l = add nuw nsw i64 %1, %i.k                 ; 3 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !192

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2140, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2141) #63
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.f
  br i1 %.not, label %bb.d, label %bb.e, !prof !187

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2142, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2143) #63
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.f, %1                 ; 4 uses
  %i.o = trunc nuw i64 %i.n to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw nsw i64 %i.l to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %1
  %i.r = shl nuw nsw i64 %i.k, 5                  ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.q, ptr nonnull align 4 %i.h, i64 %i.r, i1 false), !alias.scope !89456
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 352 ; 4 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.s, i64 %i.r, i1 false), !alias.scope !89457
  %i.u = add nuw nsw i64 %i.n, 1                  ; 4 uses
  %i.v = sub nuw nsw i64 %i.f, %i.u               ; 4 uses
  %i.w = add nsw i64 %1, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89459)
  %i.x = icmp eq i64 %i.v, %i.w
  br i1 %i.x, label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1f_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEECsgZAIVb0XKpv_9ssservice.exit, label %bb.f, !prof !192

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @496, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @497) #63, !noalias !89460
  unreachable

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1f_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.e
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.u
  %i.z = shl nuw nsw i64 %i.v, 5                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.h, ptr nonnull readonly align 4 %i.y, i64 %i.z, i1 false), !alias.scope !89460
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 352 ; 2 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull readonly align 8 %i.ab, i64 %i.z, i1 false), !alias.scope !89461
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 32, i1 false)
  %.val = load ptr, ptr %0, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val17 = load i64, ptr %i.ae, align 8, !noundef !178 ; 2 uses
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.val17 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 352
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %.val17 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(32) %i.af, i64 32, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.af, ptr noundef nonnull align 4 dereferenceable(32) %i.ac, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !89462
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, i64 32, i1 false)
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !noundef !178
  %i.am = icmp eq i64 %i.al, 0
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = load i64, ptr %i.an, align 8, !noundef !178
  %i.ap = icmp eq i64 %i.ao, 0                    ; 2 uses
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1f_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEECsgZAIVb0XKpv_9ssservice.exit
  br i1 %i.ap, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit, label %bb.j, !prof !192

bb.h:                                             ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1f_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEECsgZAIVb0XKpv_9ssservice.exit
  br i1 %i.ap, label %bb.j, label %bb.k, !prof !187

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.loopexit.unr-lcssa: ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.loopexit.unr-lcssa, %bb.k
  %.sroa.0.06.i.epil.init = phi i64 [ 0, %bb.k ], [ %i.by, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.loopexit.unr-lcssa ]
  %lcmp.mod23 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod23)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.sroa.0.06.i.epil = phi i64 [ %.sroa.0.06.i.epil.init, %.epil.preheader ], [ %i.aq, %bb.i ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.aq = add nuw nsw i64 %.sroa.0.06.i.epil, 1
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.sroa.0.06.i.epil
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 704
  store ptr %i.h, ptr %i.at, align 8
  %i.au = trunc nuw nsw i64 %.sroa.0.06.i.epil to i16
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 712
  store i16 %i.au, ptr %i.av, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit, label %bb.i, !llvm.loop !89450

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.loopexit.unr-lcssa, %bb.i, %bb.g
  ret void

bb.j:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @358, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2144) #63
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 720 ; 8 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %1
  %i.ay = shl nuw nsw i64 %i.k, 3
  %i.az = add nuw nsw i64 %i.ay, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.az, i1 false), !alias.scope !89463
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 720
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.u
  %i.bc = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.bb, i64 %i.bc, i1 false), !alias.scope !89464
  %i.bd = add nuw nsw i64 %1, %i.k
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %xtraiter = and i64 %i.be, 3                    ; 3 uses
  %i.bf = icmp samesign ult i64 %i.l, 3
  br i1 %i.bf, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.k
  %unroll_iter = and i64 %i.be, 60
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.new
  %.sroa.0.06.i = phi i64 [ 0, %.new ], [ %i.by, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.l ]
  %i.bg = or disjoint i64 %.sroa.0.06.i, 1        ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.sroa.0.06.i
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 704
  store ptr %i.h, ptr %i.bj, align 8
  %i.bk = trunc nuw nsw i64 %.sroa.0.06.i to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 712
  store i16 %i.bk, ptr %i.bl, align 8
  %i.bm = or disjoint i64 %.sroa.0.06.i, 2        ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bg
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 704
  store ptr %i.h, ptr %i.bp, align 8
  %i.bq = trunc nuw nsw i64 %i.bg to i16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 712
  store i16 %i.bq, ptr %i.br, align 8
  %i.bs = or disjoint i64 %.sroa.0.06.i, 3        ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bm
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 704
  store ptr %i.h, ptr %i.bv, align 8
  %i.bw = trunc nuw nsw i64 %i.bm to i16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 712
  store i16 %i.bw, ptr %i.bx, align 8
  %i.by = add nuw nsw i64 %.sroa.0.06.i, 4        ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bs
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 704
  store ptr %i.h, ptr %i.cb, align 8
  %i.cc = trunc nuw nsw i64 %i.bs to i16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 712
  store i16 %i.cc, ptr %i.cd, align 8
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.loopexit.unr-lcssa, label %bb.l
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2k_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEE16bulk_steal_rightCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [32 x i8], align 8            ; 2 uses
  %.sroa.2 = alloca [32 x i8], align 8            ; 2 uses
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !178, !noundef !178 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 714 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !178 ; 6 uses
  %i.f = zext i16 %i.e to i64                     ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !178, !noundef !178 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 714 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !178
  %i.k = zext i16 %i.j to i64                     ; 3 uses
  %i.l = add nuw nsw i64 %1, %i.f                 ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !192

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2145, i64 noundef 50, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2146) #63
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.k
  br i1 %.not, label %bb.d, label %bb.e, !prof !187

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2147, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2148) #63
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.k, %1                 ; 4 uses
  %i.o = trunc nuw nsw i64 %i.l to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw i64 %i.n to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = add nsw i64 %1, -1                       ; 3 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 352 ; 4 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false)
  %.val = load ptr, ptr %0, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val18 = load i64, ptr %i.u, align 8, !noundef !178 ; 2 uses
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.val18 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 352
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %.val18 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(32) %i.v, i64 32, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.v, ptr noundef nonnull align 4 dereferenceable(32) %i.r, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !89484
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, i64 32, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 352 ; 2 uses
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, i64 32, i1 false)
  %i.ab = add nuw nsw i64 %i.f, 1                 ; 5 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.ab
  %i.ad = shl nuw nsw i64 %i.q, 5                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ac, ptr nonnull readonly align 4 %i.h, i64 %i.ad, i1 false), !alias.scope !89485
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr nonnull readonly align 8 %i.s, i64 %i.ad, i1 false), !alias.scope !89486
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %1
  %i.ag = shl nuw nsw i64 %i.n, 5                 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.h, ptr nonnull align 4 %i.af, i64 %i.ag, i1 false), !alias.scope !89487
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 8 %i.ah, i64 %i.ag, i1 false), !alias.scope !89488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !178
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = load i64, ptr %i.al, align 8, !noundef !178
  %i.an = icmp eq i64 %i.am, 0                    ; 2 uses
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.an, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25, label %bb.h, !prof !192

bb.g:                                             ; preds = %bb.e
  br i1 %i.an, label %bb.h, label %bb.i, !prof !187

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25.loopexit.unr-lcssa: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil.preheader

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil.preheader: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader
  %.sroa.0.06.i23.epil.init = phi i64 [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader ], [ %i.df, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25.loopexit.unr-lcssa ]
  %lcmp.mod30 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod30)
  br label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil.preheader
  %.sroa.0.06.i23.epil = phi i64 [ %i.ao, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil ], [ %.sroa.0.06.i23.epil.init, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil ], [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil.preheader ]
  %i.ao = add nuw nsw i64 %.sroa.0.06.i23.epil, 1
  %i.ap = icmp samesign ult i64 %.sroa.0.06.i23.epil, 12
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.sroa.0.06.i23.epil
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 704
  store ptr %i.h, ptr %i.as, align 8
  %i.at = trunc nuw nsw i64 %.sroa.0.06.i23.epil to i16
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 712
  store i16 %i.at, ptr %i.au, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil, !llvm.loop !89478

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil, %bb.f
  ret void

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @358, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2149) #63
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 720 ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 720 ; 6 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ab
  %i.ay = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.av, i64 %i.ay, i1 false), !alias.scope !89489
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %1
  %i.ba = shl nuw nsw i64 %i.n, 3
  %i.bb = add nuw nsw i64 %i.ba, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.av, ptr noundef nonnull align 8 dereferenceable(1) %i.az, i64 %i.bb, i1 false), !alias.scope !89490
  %i.bc = icmp ult i16 %i.e, 11
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ab
  %i.be = load ptr, ptr %i.bd, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 704
  store ptr %i.c, ptr %i.bf, align 8
  %i.bg = trunc nuw nsw i64 %i.ab to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 712
  store i16 %i.bg, ptr %i.bh, align 8
  %exitcond.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.not.i, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = add nuw nsw i64 %i.f, 2                 ; 2 uses
  %i.bj = icmp samesign ult i16 %i.e, 10
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bi
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 704
  store ptr %i.c, ptr %i.bm, align 8
  %i.bn = trunc nuw nsw i64 %i.bi to i16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 712
  store i16 %i.bn, ptr %i.bo, align 8
  %exitcond.not.i.1 = icmp eq i64 %1, 2
  br i1 %exitcond.not.i.1, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = add nuw nsw i64 %i.f, 3                 ; 2 uses
  %i.bq = icmp samesign ult i16 %i.e, 9
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bp
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 704
  store ptr %i.c, ptr %i.bt, align 8
  %i.bu = trunc nuw nsw i64 %i.bp to i16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 712
  store i16 %i.bu, ptr %i.bv, align 8
  %exitcond.not.i.2 = icmp eq i64 %1, 3
  br i1 %exitcond.not.i.2, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = add nuw nsw i64 %i.f, 4                 ; 2 uses
  %i.bx = icmp samesign ult i16 %i.e, 8
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bw
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 704
  store ptr %i.c, ptr %i.ca, align 8
  %i.cb = trunc nuw nsw i64 %i.bw to i16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 712
  store i16 %i.cb, ptr %i.cc, align 8
  %exitcond.not.i.3 = icmp eq i64 %1, 4
  br i1 %exitcond.not.i.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = add nuw nsw i64 %i.f, 5                 ; 2 uses
  %i.ce = icmp ne i16 %i.e, 7
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.cd
  %i.cg = load ptr, ptr %i.cf, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 704
  store ptr %i.c, ptr %i.ch, align 8
  %i.ci = trunc nuw nsw i64 %i.cd to i16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 712
  store i16 %i.ci, ptr %i.cj, align 8
  br label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.ck = add nuw nsw i64 %i.k, 1
  %i.cl = sub nsw i64 %i.ck, %1                   ; 2 uses
  %xtraiter = and i64 %i.cl, 3                    ; 3 uses
  %i.cm = icmp samesign ult i64 %i.n, 3
  br i1 %i.cm, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil.preheader, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader.new

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader.new: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader
  %unroll_iter = and i64 %i.cl, -4
  br label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader.new
  %.sroa.0.06.i23 = phi i64 [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader.new ], [ %i.df, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit ] ; 7 uses
  %niter = phi i64 [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader.new ], [ %niter.next.3, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit ]
  %i.cn = or disjoint i64 %.sroa.0.06.i23, 1      ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.sroa.0.06.i23
  %i.cp = load ptr, ptr %i.co, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 704
  store ptr %i.h, ptr %i.cq, align 8
  %i.cr = trunc nuw nsw i64 %.sroa.0.06.i23 to i16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 712
  store i16 %i.cr, ptr %i.cs, align 8
  %i.ct = or disjoint i64 %.sroa.0.06.i23, 2      ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.cn
  %i.cv = load ptr, ptr %i.cu, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 704
  store ptr %i.h, ptr %i.cw, align 8
  %i.cx = trunc nuw nsw i64 %i.cn to i16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 712
  store i16 %i.cx, ptr %i.cy, align 8
  %i.cz = or disjoint i64 %.sroa.0.06.i23, 3      ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ct
  %i.db = load ptr, ptr %i.da, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 704
  store ptr %i.h, ptr %i.dc, align 8
  %i.dd = trunc nuw nsw i64 %i.ct to i16
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 712
  store i16 %i.dd, ptr %i.de, align 8
  %i.df = add nuw nsw i64 %.sroa.0.06.i23, 4      ; 2 uses
  %i.dg = icmp samesign ult i64 %.sroa.0.06.i23, 12
  tail call void @llvm.assume(i1 %i.dg)
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.cz
  %i.di = load ptr, ptr %i.dh, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 704
  store ptr %i.h, ptr %i.dj, align 8
  %i.dk = trunc nuw nsw i64 %i.cz to i16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 712
  store i16 %i.dk, ptr %i.dl, align 8
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25.loopexit.unr-lcssa, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_5redir8udprelay21UdpRedirInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2k_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEE15bulk_steal_leftCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [32 x i8], align 8            ; 2 uses
  %.sroa.2 = alloca [32 x i8], align 8            ; 2 uses
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !178, !noundef !178 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 714 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !178
  %i.f = zext i16 %i.e to i64                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !178, !noundef !178 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 714 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !178
  %i.k = zext i16 %i.j to i64                     ; 4 uses
  %i.l = add nuw nsw i64 %1, %i.k                 ; 3 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !192

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2140, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2141) #63
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.f
  br i1 %.not, label %bb.d, label %bb.e, !prof !187

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2142, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2143) #63
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.f, %1                 ; 4 uses
  %i.o = trunc nuw i64 %i.n to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw nsw i64 %i.l to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %1
  %i.r = shl nuw nsw i64 %i.k, 5                  ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.q, ptr nonnull align 4 %i.h, i64 %i.r, i1 false), !alias.scope !89510
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 352 ; 4 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.s, i64 %i.r, i1 false), !alias.scope !89511
  %i.u = add nuw nsw i64 %i.n, 1                  ; 4 uses
  %i.v = sub nuw nsw i64 %i.f, %i.u               ; 4 uses
  %i.w = add nsw i64 %1, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89512)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89513)
  %i.x = icmp eq i64 %i.v, %i.w
  br i1 %i.x, label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1f_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEECsgZAIVb0XKpv_9ssservice.exit, label %bb.f, !prof !192

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @496, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @497) #63, !noalias !89514
  unreachable

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1f_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.e
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.u
  %i.z = shl nuw nsw i64 %i.v, 5                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.h, ptr nonnull readonly align 4 %i.y, i64 %i.z, i1 false), !alias.scope !89514
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 352 ; 2 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull readonly align 8 %i.ab, i64 %i.z, i1 false), !alias.scope !89515
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 32, i1 false)
  %.val = load ptr, ptr %0, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val17 = load i64, ptr %i.ae, align 8, !noundef !178 ; 2 uses
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.val17 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 352
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %.val17 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(32) %i.af, i64 32, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.af, ptr noundef nonnull align 4 dereferenceable(32) %i.ac, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !89516
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, i64 32, i1 false)
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !noundef !178
  %i.am = icmp eq i64 %i.al, 0
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = load i64, ptr %i.an, align 8, !noundef !178
  %i.ap = icmp eq i64 %i.ao, 0                    ; 2 uses
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1f_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEECsgZAIVb0XKpv_9ssservice.exit
  br i1 %i.ap, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit, label %bb.j, !prof !192

bb.h:                                             ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB1f_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEECsgZAIVb0XKpv_9ssservice.exit
  br i1 %i.ap, label %bb.j, label %bb.k, !prof !187

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.loopexit.unr-lcssa: ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.loopexit.unr-lcssa, %bb.k
  %.sroa.0.06.i.epil.init = phi i64 [ 0, %bb.k ], [ %i.by, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.loopexit.unr-lcssa ]
  %lcmp.mod23 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod23)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.sroa.0.06.i.epil = phi i64 [ %.sroa.0.06.i.epil.init, %.epil.preheader ], [ %i.aq, %bb.i ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.aq = add nuw nsw i64 %.sroa.0.06.i.epil, 1
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.sroa.0.06.i.epil
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 704
  store ptr %i.h, ptr %i.at, align 8
  %i.au = trunc nuw nsw i64 %.sroa.0.06.i.epil to i16
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 712
  store i16 %i.au, ptr %i.av, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit, label %bb.i, !llvm.loop !89504

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.loopexit.unr-lcssa, %bb.i, %bb.g
  ret void

bb.j:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @358, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2144) #63
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 720 ; 8 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %1
  %i.ay = shl nuw nsw i64 %i.k, 3
  %i.az = add nuw nsw i64 %i.ay, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.az, i1 false), !alias.scope !89517
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 720
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.u
  %i.bc = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.bb, i64 %i.bc, i1 false), !alias.scope !89518
  %i.bd = add nuw nsw i64 %1, %i.k
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %xtraiter = and i64 %i.be, 3                    ; 3 uses
  %i.bf = icmp samesign ult i64 %i.l, 3
  br i1 %i.bf, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.k
  %unroll_iter = and i64 %i.be, 60
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.new
  %.sroa.0.06.i = phi i64 [ 0, %.new ], [ %i.by, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.l ]
  %i.bg = or disjoint i64 %.sroa.0.06.i, 1        ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.sroa.0.06.i
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 704
  store ptr %i.h, ptr %i.bj, align 8
  %i.bk = trunc nuw nsw i64 %.sroa.0.06.i to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 712
  store i16 %i.bk, ptr %i.bl, align 8
  %i.bm = or disjoint i64 %.sroa.0.06.i, 2        ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bg
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 704
  store ptr %i.h, ptr %i.bp, align 8
  %i.bq = trunc nuw nsw i64 %i.bg to i16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 712
  store i16 %i.bq, ptr %i.br, align 8
  %i.bs = or disjoint i64 %.sroa.0.06.i, 3        ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bm
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 704
  store ptr %i.h, ptr %i.bv, align 8
  %i.bw = trunc nuw nsw i64 %i.bm to i16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 712
  store i16 %i.bw, ptr %i.bx, align 8
  %i.by = add nuw nsw i64 %.sroa.0.06.i, 4        ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bs
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 704
  store ptr %i.h, ptr %i.cb, align 8
  %i.cc = trunc nuw nsw i64 %i.bs to i16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 712
  store i16 %i.cc, ptr %i.cd, align 8
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.loopexit.unr-lcssa, label %bb.l
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2k_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEE16bulk_steal_rightCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [32 x i8], align 8            ; 2 uses
  %.sroa.2 = alloca [32 x i8], align 8            ; 2 uses
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !178, !noundef !178 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 714 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !178 ; 6 uses
  %i.f = zext i16 %i.e to i64                     ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !178, !noundef !178 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 714 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !178
  %i.k = zext i16 %i.j to i64                     ; 3 uses
  %i.l = add nuw nsw i64 %1, %i.f                 ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !192

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2145, i64 noundef 50, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2146) #63
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.k
  br i1 %.not, label %bb.d, label %bb.e, !prof !187

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2147, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2148) #63
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.k, %1                 ; 4 uses
  %i.o = trunc nuw nsw i64 %i.l to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw i64 %i.n to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = add nsw i64 %1, -1                       ; 3 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 352 ; 4 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false)
  %.val = load ptr, ptr %0, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val18 = load i64, ptr %i.u, align 8, !noundef !178 ; 2 uses
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.val18 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 352
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %.val18 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(32) %i.v, i64 32, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.v, ptr noundef nonnull align 4 dereferenceable(32) %i.r, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !89538
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, i64 32, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 352 ; 2 uses
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, i64 32, i1 false)
  %i.ab = add nuw nsw i64 %i.f, 1                 ; 5 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.ab
  %i.ad = shl nuw nsw i64 %i.q, 5                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ac, ptr nonnull readonly align 4 %i.h, i64 %i.ad, i1 false), !alias.scope !89539
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr nonnull readonly align 8 %i.s, i64 %i.ad, i1 false), !alias.scope !89540
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %1
  %i.ag = shl nuw nsw i64 %i.n, 5                 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.h, ptr nonnull align 4 %i.af, i64 %i.ag, i1 false), !alias.scope !89541
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 8 %i.ah, i64 %i.ag, i1 false), !alias.scope !89542
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !178
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = load i64, ptr %i.al, align 8, !noundef !178
  %i.an = icmp eq i64 %i.am, 0                    ; 2 uses
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.an, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25, label %bb.h, !prof !192

bb.g:                                             ; preds = %bb.e
  br i1 %i.an, label %bb.h, label %bb.i, !prof !187

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25.loopexit.unr-lcssa: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil.preheader

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil.preheader: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader
  %.sroa.0.06.i23.epil.init = phi i64 [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader ], [ %i.df, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25.loopexit.unr-lcssa ]
  %lcmp.mod30 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod30)
  br label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil.preheader
  %.sroa.0.06.i23.epil = phi i64 [ %i.ao, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil ], [ %.sroa.0.06.i23.epil.init, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil ], [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil.preheader ]
  %i.ao = add nuw nsw i64 %.sroa.0.06.i23.epil, 1
  %i.ap = icmp samesign ult i64 %.sroa.0.06.i23.epil, 12
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.sroa.0.06.i23.epil
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 704
  store ptr %i.h, ptr %i.as, align 8
  %i.at = trunc nuw nsw i64 %.sroa.0.06.i23.epil to i16
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 712
  store i16 %i.at, ptr %i.au, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil, !llvm.loop !89532

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil, %bb.f
  ret void

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @358, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2149) #63
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 720 ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 720 ; 6 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ab
  %i.ay = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.av, i64 %i.ay, i1 false), !alias.scope !89543
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %1
  %i.ba = shl nuw nsw i64 %i.n, 3
  %i.bb = add nuw nsw i64 %i.ba, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.av, ptr noundef nonnull align 8 dereferenceable(1) %i.az, i64 %i.bb, i1 false), !alias.scope !89544
  %i.bc = icmp ult i16 %i.e, 11
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ab
  %i.be = load ptr, ptr %i.bd, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 704
  store ptr %i.c, ptr %i.bf, align 8
  %i.bg = trunc nuw nsw i64 %i.ab to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 712
  store i16 %i.bg, ptr %i.bh, align 8
  %exitcond.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.not.i, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = add nuw nsw i64 %i.f, 2                 ; 2 uses
  %i.bj = icmp samesign ult i16 %i.e, 10
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bi
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 704
  store ptr %i.c, ptr %i.bm, align 8
  %i.bn = trunc nuw nsw i64 %i.bi to i16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 712
  store i16 %i.bn, ptr %i.bo, align 8
  %exitcond.not.i.1 = icmp eq i64 %1, 2
  br i1 %exitcond.not.i.1, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = add nuw nsw i64 %i.f, 3                 ; 2 uses
  %i.bq = icmp samesign ult i16 %i.e, 9
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bp
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 704
  store ptr %i.c, ptr %i.bt, align 8
  %i.bu = trunc nuw nsw i64 %i.bp to i16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 712
  store i16 %i.bu, ptr %i.bv, align 8
  %exitcond.not.i.2 = icmp eq i64 %1, 3
  br i1 %exitcond.not.i.2, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = add nuw nsw i64 %i.f, 4                 ; 2 uses
  %i.bx = icmp samesign ult i16 %i.e, 8
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bw
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 704
  store ptr %i.c, ptr %i.ca, align 8
  %i.cb = trunc nuw nsw i64 %i.bw to i16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 712
  store i16 %i.cb, ptr %i.cc, align 8
  %exitcond.not.i.3 = icmp eq i64 %1, 4
  br i1 %exitcond.not.i.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = add nuw nsw i64 %i.f, 5                 ; 2 uses
  %i.ce = icmp ne i16 %i.e, 7
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.cd
  %i.cg = load ptr, ptr %i.cf, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 704
  store ptr %i.c, ptr %i.ch, align 8
  %i.ci = trunc nuw nsw i64 %i.cd to i16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 712
  store i16 %i.ci, ptr %i.cj, align 8
  br label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.ck = add nuw nsw i64 %i.k, 1
  %i.cl = sub nsw i64 %i.ck, %1                   ; 2 uses
  %xtraiter = and i64 %i.cl, 3                    ; 3 uses
  %i.cm = icmp samesign ult i64 %i.n, 3
  br i1 %i.cm, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil.preheader, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader.new

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader.new: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader
  %unroll_iter = and i64 %i.cl, -4
  br label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader.new
  %.sroa.0.06.i23 = phi i64 [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader.new ], [ %i.df, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit ] ; 7 uses
  %niter = phi i64 [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader.new ], [ %niter.next.3, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit ]
  %i.cn = or disjoint i64 %.sroa.0.06.i23, 1      ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.sroa.0.06.i23
  %i.cp = load ptr, ptr %i.co, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 704
  store ptr %i.h, ptr %i.cq, align 8
  %i.cr = trunc nuw nsw i64 %.sroa.0.06.i23 to i16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 712
  store i16 %i.cr, ptr %i.cs, align 8
  %i.ct = or disjoint i64 %.sroa.0.06.i23, 2      ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.cn
  %i.cv = load ptr, ptr %i.cu, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 704
  store ptr %i.h, ptr %i.cw, align 8
  %i.cx = trunc nuw nsw i64 %i.cn to i16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 712
  store i16 %i.cx, ptr %i.cy, align 8
  %i.cz = or disjoint i64 %.sroa.0.06.i23, 3      ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ct
  %i.db = load ptr, ptr %i.da, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 704
  store ptr %i.h, ptr %i.dc, align 8
  %i.dd = trunc nuw nsw i64 %i.ct to i16
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 712
  store i16 %i.dd, ptr %i.de, align 8
  %i.df = add nuw nsw i64 %.sroa.0.06.i23, 4      ; 2 uses
  %i.dg = icmp samesign ult i64 %.sroa.0.06.i23, 12
  tail call void @llvm.assume(i1 %i.dg)
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.cz
  %i.di = load ptr, ptr %i.dh, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 704
  store ptr %i.h, ptr %i.dj, align 8
  %i.dk = trunc nuw nsw i64 %i.cz to i16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 712
  store i16 %i.dk, ptr %i.dl, align 8
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25.loopexit.unr-lcssa, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtB2s_6tunnel8udprelay22TunnelUdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2k_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEE15bulk_steal_leftCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [32 x i8], align 8            ; 2 uses
  %.sroa.2 = alloca [32 x i8], align 8            ; 2 uses
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !178, !noundef !178 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 714 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !178
  %i.f = zext i16 %i.e to i64                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !178, !noundef !178 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 714 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !178
  %i.k = zext i16 %i.j to i64                     ; 4 uses
  %i.l = add nuw nsw i64 %1, %i.k                 ; 3 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !192

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2140, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2141) #63
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.f
  br i1 %.not, label %bb.d, label %bb.e, !prof !187

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2142, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2143) #63
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.f, %1                 ; 4 uses
  %i.o = trunc nuw i64 %i.n to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw nsw i64 %i.l to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %1
  %i.r = shl nuw nsw i64 %i.k, 5                  ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.q, ptr nonnull align 4 %i.h, i64 %i.r, i1 false), !alias.scope !89564
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 352 ; 4 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.s, i64 %i.r, i1 false), !alias.scope !89565
  %i.u = add nuw nsw i64 %i.n, 1                  ; 4 uses
  %i.v = sub nuw nsw i64 %i.f, %i.u               ; 4 uses
  %i.w = add nsw i64 %1, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89566)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89567)
  %i.x = icmp eq i64 %i.v, %i.w
  br i1 %i.x, label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB1f_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEECsgZAIVb0XKpv_9ssservice.exit, label %bb.f, !prof !192

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @496, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @497) #63, !noalias !89568
  unreachable

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB1f_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.e
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.u
  %i.z = shl nuw nsw i64 %i.v, 5                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.h, ptr nonnull readonly align 4 %i.y, i64 %i.z, i1 false), !alias.scope !89568
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 352 ; 2 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull readonly align 8 %i.ab, i64 %i.z, i1 false), !alias.scope !89569
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 32, i1 false)
  %.val = load ptr, ptr %0, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val17 = load i64, ptr %i.ae, align 8, !noundef !178 ; 2 uses
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.val17 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 352
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %.val17 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(32) %i.af, i64 32, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.af, ptr noundef nonnull align 4 dereferenceable(32) %i.ac, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !89570
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, i64 32, i1 false)
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !noundef !178
  %i.am = icmp eq i64 %i.al, 0
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = load i64, ptr %i.an, align 8, !noundef !178
  %i.ap = icmp eq i64 %i.ao, 0                    ; 2 uses
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB1f_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEECsgZAIVb0XKpv_9ssservice.exit
  br i1 %i.ap, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit, label %bb.j, !prof !192

bb.h:                                             ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB1f_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEECsgZAIVb0XKpv_9ssservice.exit
  br i1 %i.ap, label %bb.j, label %bb.k, !prof !187

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.loopexit.unr-lcssa: ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.loopexit.unr-lcssa, %bb.k
  %.sroa.0.06.i.epil.init = phi i64 [ 0, %bb.k ], [ %i.by, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.loopexit.unr-lcssa ]
  %lcmp.mod23 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod23)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.sroa.0.06.i.epil = phi i64 [ %.sroa.0.06.i.epil.init, %.epil.preheader ], [ %i.aq, %bb.i ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.aq = add nuw nsw i64 %.sroa.0.06.i.epil, 1
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.sroa.0.06.i.epil
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 704
  store ptr %i.h, ptr %i.at, align 8
  %i.au = trunc nuw nsw i64 %.sroa.0.06.i.epil to i16
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 712
  store i16 %i.au, ptr %i.av, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit, label %bb.i, !llvm.loop !89558

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.loopexit.unr-lcssa, %bb.i, %bb.g
  ret void

bb.j:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @358, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2144) #63
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 720 ; 8 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %1
  %i.ay = shl nuw nsw i64 %i.k, 3
  %i.az = add nuw nsw i64 %i.ay, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.az, i1 false), !alias.scope !89571
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 720
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.u
  %i.bc = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.bb, i64 %i.bc, i1 false), !alias.scope !89572
  %i.bd = add nuw nsw i64 %1, %i.k
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %xtraiter = and i64 %i.be, 3                    ; 3 uses
  %i.bf = icmp samesign ult i64 %i.l, 3
  br i1 %i.bf, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.k
  %unroll_iter = and i64 %i.be, 60
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.new
  %.sroa.0.06.i = phi i64 [ 0, %.new ], [ %i.by, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.l ]
  %i.bg = or disjoint i64 %.sroa.0.06.i, 1        ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.sroa.0.06.i
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 704
  store ptr %i.h, ptr %i.bj, align 8
  %i.bk = trunc nuw nsw i64 %.sroa.0.06.i to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 712
  store i16 %i.bk, ptr %i.bl, align 8
  %i.bm = or disjoint i64 %.sroa.0.06.i, 2        ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bg
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 704
  store ptr %i.h, ptr %i.bp, align 8
  %i.bq = trunc nuw nsw i64 %i.bg to i16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 712
  store i16 %i.bq, ptr %i.br, align 8
  %i.bs = or disjoint i64 %.sroa.0.06.i, 3        ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bm
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 704
  store ptr %i.h, ptr %i.bv, align 8
  %i.bw = trunc nuw nsw i64 %i.bm to i16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 712
  store i16 %i.bw, ptr %i.bx, align 8
  %i.by = add nuw nsw i64 %.sroa.0.06.i, 4        ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bs
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 704
  store ptr %i.h, ptr %i.cb, align 8
  %i.cc = trunc nuw nsw i64 %i.bs to i16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 712
  store i16 %i.cc, ptr %i.cd, align 8
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.loopexit.unr-lcssa, label %bb.l
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2k_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantEE16bulk_steal_rightCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [32 x i8], align 8            ; 2 uses
  %.sroa.2 = alloca [32 x i8], align 8            ; 2 uses
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !178, !noundef !178 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 714 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !178 ; 6 uses
  %i.f = zext i16 %i.e to i64                     ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !178, !noundef !178 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 714 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !178
  %i.k = zext i16 %i.j to i64                     ; 3 uses
  %i.l = add nuw nsw i64 %1, %i.f                 ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !192

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2145, i64 noundef 50, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2146) #63
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.k
  br i1 %.not, label %bb.d, label %bb.e, !prof !187

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2147, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2148) #63
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.k, %1                 ; 4 uses
  %i.o = trunc nuw nsw i64 %i.l to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw i64 %i.n to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = add nsw i64 %1, -1                       ; 3 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 352 ; 4 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false)
  %.val = load ptr, ptr %0, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val18 = load i64, ptr %i.u, align 8, !noundef !178 ; 2 uses
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.val18 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 352
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %.val18 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(32) %i.v, i64 32, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.v, ptr noundef nonnull align 4 dereferenceable(32) %i.r, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !89592
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, i64 32, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 352 ; 2 uses
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, i64 32, i1 false)
  %i.ab = add nuw nsw i64 %i.f, 1                 ; 5 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.ab
  %i.ad = shl nuw nsw i64 %i.q, 5                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ac, ptr nonnull readonly align 4 %i.h, i64 %i.ad, i1 false), !alias.scope !89593
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr nonnull readonly align 8 %i.s, i64 %i.ad, i1 false), !alias.scope !89594
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %1
  %i.ag = shl nuw nsw i64 %i.n, 5                 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.h, ptr nonnull align 4 %i.af, i64 %i.ag, i1 false), !alias.scope !89595
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 8 %i.ah, i64 %i.ag, i1 false), !alias.scope !89596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !178
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = load i64, ptr %i.al, align 8, !noundef !178
  %i.an = icmp eq i64 %i.am, 0                    ; 2 uses
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.an, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25, label %bb.h, !prof !192

bb.g:                                             ; preds = %bb.e
  br i1 %i.an, label %bb.h, label %bb.i, !prof !187

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25.loopexit.unr-lcssa: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil.preheader

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil.preheader: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader
  %.sroa.0.06.i23.epil.init = phi i64 [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader ], [ %i.df, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25.loopexit.unr-lcssa ]
  %lcmp.mod30 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod30)
  br label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil.preheader
  %.sroa.0.06.i23.epil = phi i64 [ %i.ao, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil ], [ %.sroa.0.06.i23.epil.init, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil ], [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil.preheader ]
  %i.ao = add nuw nsw i64 %.sroa.0.06.i23.epil, 1
  %i.ap = icmp samesign ult i64 %.sroa.0.06.i23.epil, 12
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.sroa.0.06.i23.epil
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 704
  store ptr %i.h, ptr %i.as, align 8
  %i.at = trunc nuw nsw i64 %.sroa.0.06.i23.epil to i16
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 712
  store i16 %i.at, ptr %i.au, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil, !llvm.loop !89586

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil, %bb.f
  ret void

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @358, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2149) #63
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 720 ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 720 ; 6 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ab
  %i.ay = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.av, i64 %i.ay, i1 false), !alias.scope !89597
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %1
  %i.ba = shl nuw nsw i64 %i.n, 3
  %i.bb = add nuw nsw i64 %i.ba, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.av, ptr noundef nonnull align 8 dereferenceable(1) %i.az, i64 %i.bb, i1 false), !alias.scope !89598
  %i.bc = icmp ult i16 %i.e, 11
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ab
  %i.be = load ptr, ptr %i.bd, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 704
  store ptr %i.c, ptr %i.bf, align 8
  %i.bg = trunc nuw nsw i64 %i.ab to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 712
  store i16 %i.bg, ptr %i.bh, align 8
  %exitcond.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.not.i, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = add nuw nsw i64 %i.f, 2                 ; 2 uses
  %i.bj = icmp samesign ult i16 %i.e, 10
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bi
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 704
  store ptr %i.c, ptr %i.bm, align 8
  %i.bn = trunc nuw nsw i64 %i.bi to i16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 712
  store i16 %i.bn, ptr %i.bo, align 8
  %exitcond.not.i.1 = icmp eq i64 %1, 2
  br i1 %exitcond.not.i.1, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = add nuw nsw i64 %i.f, 3                 ; 2 uses
  %i.bq = icmp samesign ult i16 %i.e, 9
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bp
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 704
  store ptr %i.c, ptr %i.bt, align 8
  %i.bu = trunc nuw nsw i64 %i.bp to i16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 712
  store i16 %i.bu, ptr %i.bv, align 8
  %exitcond.not.i.2 = icmp eq i64 %1, 3
  br i1 %exitcond.not.i.2, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = add nuw nsw i64 %i.f, 4                 ; 2 uses
  %i.bx = icmp samesign ult i16 %i.e, 8
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bw
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 704
  store ptr %i.c, ptr %i.ca, align 8
  %i.cb = trunc nuw nsw i64 %i.bw to i16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 712
  store i16 %i.cb, ptr %i.cc, align 8
  %exitcond.not.i.3 = icmp eq i64 %1, 4
  br i1 %exitcond.not.i.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = add nuw nsw i64 %i.f, 5                 ; 2 uses
  %i.ce = icmp ne i16 %i.e, 7
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.cd
  %i.cg = load ptr, ptr %i.cf, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 704
  store ptr %i.c, ptr %i.ch, align 8
  %i.ci = trunc nuw nsw i64 %i.cd to i16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 712
  store i16 %i.ci, ptr %i.cj, align 8
  br label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.ck = add nuw nsw i64 %i.k, 1
  %i.cl = sub nsw i64 %i.ck, %1                   ; 2 uses
  %xtraiter = and i64 %i.cl, 3                    ; 3 uses
  %i.cm = icmp samesign ult i64 %i.n, 3
  br i1 %i.cm, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil.preheader, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader.new

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader.new: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader
  %unroll_iter = and i64 %i.cl, -4
  br label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader.new
  %.sroa.0.06.i23 = phi i64 [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader.new ], [ %i.df, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit ] ; 7 uses
  %niter = phi i64 [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader.new ], [ %niter.next.3, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit ]
  %i.cn = or disjoint i64 %.sroa.0.06.i23, 1      ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.sroa.0.06.i23
  %i.cp = load ptr, ptr %i.co, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 704
  store ptr %i.h, ptr %i.cq, align 8
  %i.cr = trunc nuw nsw i64 %.sroa.0.06.i23 to i16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 712
  store i16 %i.cr, ptr %i.cs, align 8
  %i.ct = or disjoint i64 %.sroa.0.06.i23, 2      ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.cn
  %i.cv = load ptr, ptr %i.cu, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 704
  store ptr %i.h, ptr %i.cw, align 8
  %i.cx = trunc nuw nsw i64 %i.cn to i16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 712
  store i16 %i.cx, ptr %i.cy, align 8
  %i.cz = or disjoint i64 %.sroa.0.06.i23, 3      ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ct
  %i.db = load ptr, ptr %i.da, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 704
  store ptr %i.h, ptr %i.dc, align 8
  %i.dd = trunc nuw nsw i64 %i.ct to i16
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 712
  store i16 %i.dd, ptr %i.de, align 8
  %i.df = add nuw nsw i64 %.sroa.0.06.i23, 4      ; 2 uses
  %i.dg = icmp samesign ult i64 %.sroa.0.06.i23, 12
  tail call void @llvm.assume(i1 %i.dg)
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.cz
  %i.di = load ptr, ptr %i.dh, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 704
  store ptr %i.h, ptr %i.dj, align 8
  %i.dk = trunc nuw nsw i64 %i.cz to i16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 712
  store i16 %i.dk, ptr %i.dl, align 8
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25.loopexit.unr-lcssa, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTINtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3udp11association14UdpAssociationNtNtNtNtNtB2s_5socks6server6socks58udprelay22Socks5UdpInboundWriterENtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEE15bulk_steal_leftCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [32 x i8], align 8            ; 2 uses
  %.sroa.2 = alloca [32 x i8], align 8            ; 2 uses
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !178, !noundef !178 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 714 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !178
  %i.f = zext i16 %i.e to i64                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !178, !noundef !178 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 714 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !178
  %i.k = zext i16 %i.j to i64                     ; 4 uses
  %i.l = add nuw nsw i64 %1, %i.k                 ; 3 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !192

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2140, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2141) #63
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.f
  br i1 %.not, label %bb.d, label %bb.e, !prof !187

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2142, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2143) #63
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.f, %1                 ; 4 uses
  %i.o = trunc nuw i64 %i.n to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw nsw i64 %i.l to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %1
  %i.r = shl nuw nsw i64 %i.k, 5                  ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.q, ptr nonnull align 4 %i.h, i64 %i.r, i1 false), !alias.scope !89618
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 352 ; 4 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.s, i64 %i.r, i1 false), !alias.scope !89619
  %i.u = add nuw nsw i64 %i.n, 1                  ; 4 uses
  %i.v = sub nuw nsw i64 %i.f, %i.u               ; 4 uses
  %i.w = add nsw i64 %1, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89620)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89621)
  %i.x = icmp eq i64 %i.v, %i.w
  br i1 %i.x, label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEECsgZAIVb0XKpv_9ssservice.exit, label %bb.f, !prof !192

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @496, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @497) #63, !noalias !89622
  unreachable

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.e
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.u
  %i.z = shl nuw nsw i64 %i.v, 5                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.h, ptr nonnull readonly align 4 %i.y, i64 %i.z, i1 false), !alias.scope !89622
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 352 ; 2 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull readonly align 8 %i.ab, i64 %i.z, i1 false), !alias.scope !89623
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 32, i1 false)
  %.val = load ptr, ptr %0, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val17 = load i64, ptr %i.ae, align 8, !noundef !178 ; 2 uses
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.val17 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 352
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %.val17 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(32) %i.af, i64 32, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.af, ptr noundef nonnull align 4 dereferenceable(32) %i.ac, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !89624
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, i64 32, i1 false)
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !noundef !178
  %i.am = icmp eq i64 %i.al, 0
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = load i64, ptr %i.an, align 8, !noundef !178
  %i.ap = icmp eq i64 %i.ao, 0                    ; 2 uses
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEECsgZAIVb0XKpv_9ssservice.exit
  br i1 %i.ap, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit, label %bb.j, !prof !192

bb.h:                                             ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEECsgZAIVb0XKpv_9ssservice.exit
  br i1 %i.ap, label %bb.j, label %bb.k, !prof !187

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.loopexit.unr-lcssa: ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.loopexit.unr-lcssa, %bb.k
  %.sroa.0.06.i.epil.init = phi i64 [ 0, %bb.k ], [ %i.by, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.loopexit.unr-lcssa ]
  %lcmp.mod23 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod23)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.sroa.0.06.i.epil = phi i64 [ %.sroa.0.06.i.epil.init, %.epil.preheader ], [ %i.aq, %bb.i ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.aq = add nuw nsw i64 %.sroa.0.06.i.epil, 1
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.sroa.0.06.i.epil
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 704
  store ptr %i.h, ptr %i.at, align 8
  %i.au = trunc nuw nsw i64 %.sroa.0.06.i.epil to i16
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 712
  store i16 %i.au, ptr %i.av, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit, label %bb.i, !llvm.loop !89612

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.loopexit.unr-lcssa, %bb.i, %bb.g
  ret void

bb.j:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @358, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2144) #63
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 720 ; 8 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %1
  %i.ay = shl nuw nsw i64 %i.k, 3
  %i.az = add nuw nsw i64 %i.ay, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.az, i1 false), !alias.scope !89625
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 720
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.u
  %i.bc = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.bb, i64 %i.bc, i1 false), !alias.scope !89626
  %i.bd = add nuw nsw i64 %1, %i.k
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %xtraiter = and i64 %i.be, 3                    ; 3 uses
  %i.bf = icmp samesign ult i64 %i.l, 3
  br i1 %i.bf, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.k
  %unroll_iter = and i64 %i.be, 60
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.new
  %.sroa.0.06.i = phi i64 [ 0, %.new ], [ %i.by, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.l ]
  %i.bg = or disjoint i64 %.sroa.0.06.i, 1        ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.sroa.0.06.i
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 704
  store ptr %i.h, ptr %i.bj, align 8
  %i.bk = trunc nuw nsw i64 %.sroa.0.06.i to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 712
  store i16 %i.bk, ptr %i.bl, align 8
  %i.bm = or disjoint i64 %.sroa.0.06.i, 2        ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bg
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 704
  store ptr %i.h, ptr %i.bp, align 8
  %i.bq = trunc nuw nsw i64 %i.bg to i16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 712
  store i16 %i.bq, ptr %i.br, align 8
  %i.bs = or disjoint i64 %.sroa.0.06.i, 3        ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bm
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 704
  store ptr %i.h, ptr %i.bv, align 8
  %i.bw = trunc nuw nsw i64 %i.bm to i16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 712
  store i16 %i.bw, ptr %i.bx, align 8
  %i.by = add nuw nsw i64 %.sroa.0.06.i, 4        ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bs
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 704
  store ptr %i.h, ptr %i.cb, align 8
  %i.cc = trunc nuw nsw i64 %i.bs to i16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 712
  store i16 %i.cc, ptr %i.cd, align 8
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.loopexit.unr-lcssa, label %bb.l
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEE16bulk_steal_rightCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [32 x i8], align 8            ; 2 uses
  %.sroa.2 = alloca [32 x i8], align 8            ; 2 uses
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !178, !noundef !178 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 714 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !178 ; 6 uses
  %i.f = zext i16 %i.e to i64                     ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !178, !noundef !178 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 714 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !178
  %i.k = zext i16 %i.j to i64                     ; 3 uses
  %i.l = add nuw nsw i64 %1, %i.f                 ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !192

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2145, i64 noundef 50, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2146) #63
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.k
  br i1 %.not, label %bb.d, label %bb.e, !prof !187

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2147, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2148) #63
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.k, %1                 ; 4 uses
  %i.o = trunc nuw nsw i64 %i.l to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw i64 %i.n to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = add nsw i64 %1, -1                       ; 3 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 352 ; 4 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false)
  %.val = load ptr, ptr %0, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val18 = load i64, ptr %i.u, align 8, !noundef !178 ; 2 uses
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.val18 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 352
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %.val18 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(32) %i.v, i64 32, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.v, ptr noundef nonnull align 4 dereferenceable(32) %i.r, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !89646
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, i64 32, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 352 ; 2 uses
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, i64 32, i1 false)
  %i.ab = add nuw nsw i64 %i.f, 1                 ; 5 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.ab
  %i.ad = shl nuw nsw i64 %i.q, 5                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ac, ptr nonnull readonly align 4 %i.h, i64 %i.ad, i1 false), !alias.scope !89647
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr nonnull readonly align 8 %i.s, i64 %i.ad, i1 false), !alias.scope !89648
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %1
  %i.ag = shl nuw nsw i64 %i.n, 5                 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.h, ptr nonnull align 4 %i.af, i64 %i.ag, i1 false), !alias.scope !89649
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 8 %i.ah, i64 %i.ag, i1 false), !alias.scope !89650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !178
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = load i64, ptr %i.al, align 8, !noundef !178
  %i.an = icmp eq i64 %i.am, 0                    ; 2 uses
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.an, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25, label %bb.h, !prof !192

bb.g:                                             ; preds = %bb.e
  br i1 %i.an, label %bb.h, label %bb.i, !prof !187

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25.loopexit.unr-lcssa: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil.preheader

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil.preheader: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader
  %.sroa.0.06.i23.epil.init = phi i64 [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader ], [ %i.df, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25.loopexit.unr-lcssa ]
  %lcmp.mod30 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod30)
  br label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil.preheader
  %.sroa.0.06.i23.epil = phi i64 [ %i.ao, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil ], [ %.sroa.0.06.i23.epil.init, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil ], [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil.preheader ]
  %i.ao = add nuw nsw i64 %.sroa.0.06.i23.epil, 1
  %i.ap = icmp samesign ult i64 %.sroa.0.06.i23.epil, 12
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.sroa.0.06.i23.epil
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 704
  store ptr %i.h, ptr %i.as, align 8
  %i.at = trunc nuw nsw i64 %.sroa.0.06.i23.epil to i16
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 712
  store i16 %i.at, ptr %i.au, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil, !llvm.loop !89640

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil, %bb.f
  ret void

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @358, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2149) #63
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 720 ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 720 ; 6 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ab
  %i.ay = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.av, i64 %i.ay, i1 false), !alias.scope !89651
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %1
  %i.ba = shl nuw nsw i64 %i.n, 3
  %i.bb = add nuw nsw i64 %i.ba, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.av, ptr noundef nonnull align 8 dereferenceable(1) %i.az, i64 %i.bb, i1 false), !alias.scope !89652
  %i.bc = icmp ult i16 %i.e, 11
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ab
  %i.be = load ptr, ptr %i.bd, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 704
  store ptr %i.c, ptr %i.bf, align 8
  %i.bg = trunc nuw nsw i64 %i.ab to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 712
  store i16 %i.bg, ptr %i.bh, align 8
  %exitcond.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.not.i, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = add nuw nsw i64 %i.f, 2                 ; 2 uses
  %i.bj = icmp samesign ult i16 %i.e, 10
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bi
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 704
  store ptr %i.c, ptr %i.bm, align 8
  %i.bn = trunc nuw nsw i64 %i.bi to i16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 712
  store i16 %i.bn, ptr %i.bo, align 8
  %exitcond.not.i.1 = icmp eq i64 %1, 2
  br i1 %exitcond.not.i.1, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = add nuw nsw i64 %i.f, 3                 ; 2 uses
  %i.bq = icmp samesign ult i16 %i.e, 9
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bp
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 704
  store ptr %i.c, ptr %i.bt, align 8
  %i.bu = trunc nuw nsw i64 %i.bp to i16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 712
  store i16 %i.bu, ptr %i.bv, align 8
  %exitcond.not.i.2 = icmp eq i64 %1, 3
  br i1 %exitcond.not.i.2, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = add nuw nsw i64 %i.f, 4                 ; 2 uses
  %i.bx = icmp samesign ult i16 %i.e, 8
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bw
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 704
  store ptr %i.c, ptr %i.ca, align 8
  %i.cb = trunc nuw nsw i64 %i.bw to i16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 712
  store i16 %i.cb, ptr %i.cc, align 8
  %exitcond.not.i.3 = icmp eq i64 %1, 4
  br i1 %exitcond.not.i.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = add nuw nsw i64 %i.f, 5                 ; 2 uses
  %i.ce = icmp ne i16 %i.e, 7
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.cd
  %i.cg = load ptr, ptr %i.cf, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 704
  store ptr %i.c, ptr %i.ch, align 8
  %i.ci = trunc nuw nsw i64 %i.cd to i16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 712
  store i16 %i.ci, ptr %i.cj, align 8
  br label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.ck = add nuw nsw i64 %i.k, 1
  %i.cl = sub nsw i64 %i.ck, %1                   ; 2 uses
  %xtraiter = and i64 %i.cl, 3                    ; 3 uses
  %i.cm = icmp samesign ult i64 %i.n, 3
  br i1 %i.cm, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil.preheader, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader.new

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader.new: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader
  %unroll_iter = and i64 %i.cl, -4
  br label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader.new
  %.sroa.0.06.i23 = phi i64 [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader.new ], [ %i.df, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit ] ; 7 uses
  %niter = phi i64 [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader.new ], [ %niter.next.3, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit ]
  %i.cn = or disjoint i64 %.sroa.0.06.i23, 1      ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.sroa.0.06.i23
  %i.cp = load ptr, ptr %i.co, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 704
  store ptr %i.h, ptr %i.cq, align 8
  %i.cr = trunc nuw nsw i64 %.sroa.0.06.i23 to i16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 712
  store i16 %i.cr, ptr %i.cs, align 8
  %i.ct = or disjoint i64 %.sroa.0.06.i23, 2      ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.cn
  %i.cv = load ptr, ptr %i.cu, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 704
  store ptr %i.h, ptr %i.cw, align 8
  %i.cx = trunc nuw nsw i64 %i.cn to i16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 712
  store i16 %i.cx, ptr %i.cy, align 8
  %i.cz = or disjoint i64 %.sroa.0.06.i23, 3      ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ct
  %i.db = load ptr, ptr %i.da, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 704
  store ptr %i.h, ptr %i.dc, align 8
  %i.dd = trunc nuw nsw i64 %i.ct to i16
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 712
  store i16 %i.dd, ptr %i.de, align 8
  %i.df = add nuw nsw i64 %.sroa.0.06.i23, 4      ; 2 uses
  %i.dg = icmp samesign ult i64 %.sroa.0.06.i23, 12
  tail call void @llvm.assume(i1 %i.dg)
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.cz
  %i.di = load ptr, ptr %i.dh, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 704
  store ptr %i.h, ptr %i.dj, align 8
  %i.dk = trunc nuw nsw i64 %i.cz to i16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 712
  store i16 %i.dk, ptr %i.dl, align 8
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25.loopexit.unr-lcssa, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantEE15bulk_steal_leftCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [17 x i8], align 8            ; 2 uses
  %.sroa.2 = alloca [24 x i8], align 8            ; 2 uses
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !178, !noundef !178 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 274 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !178
  %i.f = zext i16 %i.e to i64                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !178, !noundef !178 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 274 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !178
  %i.k = zext i16 %i.j to i64                     ; 5 uses
  %i.l = add nuw nsw i64 %1, %i.k                 ; 3 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !192

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2140, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2141) #63
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.f
  br i1 %.not, label %bb.d, label %bb.e, !prof !187

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2142, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2143) #63
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.f, %1                 ; 4 uses
  %i.o = trunc nuw i64 %i.n to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw nsw i64 %i.l to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 276 ; 4 uses
  %i.r = getelementptr inbounds nuw [17 x i8], ptr %i.q, i64 %1
  %i.s = mul nuw nsw i64 %i.k, 17
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull align 2 %i.q, i64 %i.s, i1 false), !alias.scope !89672
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %1
  %i.v = mul nuw nsw i64 %i.k, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull align 8 %i.t, i64 %i.v, i1 false), !alias.scope !89673
  %i.w = add nuw nsw i64 %i.n, 1                  ; 4 uses
  %i.x = sub nuw nsw i64 %i.f, %i.w               ; 5 uses
  %i.y = add nsw i64 %1, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89674)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89675)
  %i.z = icmp eq i64 %i.x, %i.y
  br i1 %i.z, label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTbNtNtCs5Xr050g3D4S_3std4time7InstantEECsgZAIVb0XKpv_9ssservice.exit, label %bb.f, !prof !192

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @496, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @497) #63, !noalias !89676
  unreachable

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTbNtNtCs5Xr050g3D4S_3std4time7InstantEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 276 ; 2 uses
  %i.ab = getelementptr inbounds nuw [17 x i8], ptr %i.aa, i64 %i.w
  %i.ac = mul nuw nsw i64 %i.x, 17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.q, ptr nonnull readonly align 1 %i.ab, i64 %i.ac, i1 false), !alias.scope !89676
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.w
  %i.af = mul nuw nsw i64 %i.x, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull readonly align 8 %i.ae, i64 %i.af, i1 false), !alias.scope !89677
  %i.ag = getelementptr inbounds nuw [17 x i8], ptr %i.aa, i64 %i.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  %.val = load ptr, ptr %0, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val17 = load i64, ptr %i.ai, align 8, !noundef !178 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 276
  %i.ak = getelementptr inbounds nuw [17 x i8], ptr %i.aj, i64 %.val17 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %.val17 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.0, ptr noundef nonnull align 1 dereferenceable(17) %i.ak, i64 17, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ak, ptr noundef nonnull align 1 dereferenceable(17) %i.ag, i64 17, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !89678
  %i.an = getelementptr inbounds nuw [17 x i8], ptr %i.q, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.an, ptr noundef nonnull align 8 dereferenceable(17) %.sroa.0, i64 17, i1 false)
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !178
  %i.ar = icmp eq i64 %i.aq, 0
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.at = load i64, ptr %i.as, align 8, !noundef !178
  %i.au = icmp eq i64 %i.at, 0                    ; 2 uses
  br i1 %i.ar, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTbNtNtCs5Xr050g3D4S_3std4time7InstantEECsgZAIVb0XKpv_9ssservice.exit
  br i1 %i.au, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit, label %bb.j, !prof !192

bb.h:                                             ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTbNtNtCs5Xr050g3D4S_3std4time7InstantEECsgZAIVb0XKpv_9ssservice.exit
  br i1 %i.au, label %bb.j, label %bb.k, !prof !187

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.loopexit.unr-lcssa: ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.loopexit.unr-lcssa, %bb.k
  %.sroa.0.06.i.epil.init = phi i64 [ 0, %bb.k ], [ %i.bz, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.loopexit.unr-lcssa ]
  %lcmp.mod23 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod23)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.sroa.0.06.i.epil = phi i64 [ %.sroa.0.06.i.epil.init, %.epil.preheader ], [ %i.av, %bb.i ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.av = add nuw nsw i64 %.sroa.0.06.i.epil, 1
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.sroa.0.06.i.epil
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !178, !noundef !178 ; 2 uses
  store ptr %i.h, ptr %i.ax, align 8
  %i.ay = trunc nuw nsw i64 %.sroa.0.06.i.epil to i16
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 272
  store i16 %i.ay, ptr %i.az, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit, label %bb.i, !llvm.loop !89666

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.loopexit.unr-lcssa, %bb.i, %bb.g
  ret void

bb.j:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @358, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2144) #63
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 464 ; 8 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %1
  %i.bc = shl nuw nsw i64 %i.k, 3
  %i.bd = add nuw nsw i64 %i.bc, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bb, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.bd, i1 false), !alias.scope !89679
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 464
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.w
  %i.bg = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ba, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.bf, i64 %i.bg, i1 false), !alias.scope !89680
  %i.bh = add nuw nsw i64 %1, %i.k
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 2 uses
  %xtraiter = and i64 %i.bi, 3                    ; 3 uses
  %i.bj = icmp samesign ult i64 %i.l, 3
  br i1 %i.bj, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.k
  %unroll_iter = and i64 %i.bi, 60
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.new
  %.sroa.0.06.i = phi i64 [ 0, %.new ], [ %i.bz, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.l ]
  %i.bk = or disjoint i64 %.sroa.0.06.i, 1        ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.sroa.0.06.i
  %i.bm = load ptr, ptr %i.bl, align 8, !nonnull !178, !noundef !178 ; 2 uses
  store ptr %i.h, ptr %i.bm, align 8
  %i.bn = trunc nuw nsw i64 %.sroa.0.06.i to i16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 272
  store i16 %i.bn, ptr %i.bo, align 8
  %i.bp = or disjoint i64 %.sroa.0.06.i, 2        ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bk
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !178, !noundef !178 ; 2 uses
  store ptr %i.h, ptr %i.br, align 8
  %i.bs = trunc nuw nsw i64 %i.bk to i16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 272
  store i16 %i.bs, ptr %i.bt, align 8
  %i.bu = or disjoint i64 %.sroa.0.06.i, 3        ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bp
  %i.bw = load ptr, ptr %i.bv, align 8, !nonnull !178, !noundef !178 ; 2 uses
  store ptr %i.h, ptr %i.bw, align 8
  %i.bx = trunc nuw nsw i64 %i.bp to i16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 272
  store i16 %i.bx, ptr %i.by, align 8
  %i.bz = add nuw nsw i64 %.sroa.0.06.i, 4        ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bu
  %i.cb = load ptr, ptr %i.ca, align 8, !nonnull !178, !noundef !178 ; 2 uses
  store ptr %i.h, ptr %i.cb, align 8
  %i.cc = trunc nuw nsw i64 %i.bu to i16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 272
  store i16 %i.cc, ptr %i.cd, align 8
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.loopexit.unr-lcssa, label %bb.l
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantEE16bulk_steal_rightCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [17 x i8], align 8            ; 2 uses
  %.sroa.2 = alloca [24 x i8], align 8            ; 2 uses
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !178, !noundef !178 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 274 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !178 ; 6 uses
  %i.f = zext i16 %i.e to i64                     ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !178, !noundef !178 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 274 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !178
  %i.k = zext i16 %i.j to i64                     ; 3 uses
  %i.l = add nuw nsw i64 %1, %i.f                 ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !192

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2145, i64 noundef 50, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2146) #63
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.k
  br i1 %.not, label %bb.d, label %bb.e, !prof !187

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2147, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2148) #63
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.k, %1                 ; 5 uses
  %i.o = trunc nuw nsw i64 %i.l to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw i64 %i.n to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = add nsw i64 %1, -1                       ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 276 ; 4 uses
  %i.s = getelementptr inbounds nuw [17 x i8], ptr %i.r, i64 %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  %.val = load ptr, ptr %0, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val18 = load i64, ptr %i.v, align 8, !noundef !178 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 276
  %i.x = getelementptr inbounds nuw [17 x i8], ptr %i.w, i64 %.val18 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.val18 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.0, ptr noundef nonnull align 1 dereferenceable(17) %i.x, i64 17, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.x, ptr noundef nonnull align 1 dereferenceable(17) %i.s, i64 17, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !89700
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 276 ; 2 uses
  %i.ab = getelementptr inbounds nuw [17 x i8], ptr %i.aa, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ab, ptr noundef nonnull align 8 dereferenceable(17) %.sroa.0, i64 17, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2, i64 24, i1 false)
  %i.ae = add nuw nsw i64 %i.f, 1                 ; 5 uses
  %i.af = getelementptr inbounds nuw [17 x i8], ptr %i.aa, i64 %i.ae
  %i.ag = mul nuw nsw i64 %i.q, 17
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull readonly align 2 %i.r, i64 %i.ag, i1 false), !alias.scope !89701
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.ae
  %i.ai = mul nuw nsw i64 %i.q, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr nonnull readonly align 8 %i.t, i64 %i.ai, i1 false), !alias.scope !89702
  %i.aj = getelementptr inbounds nuw [17 x i8], ptr %i.r, i64 %1
  %i.ak = mul nuw nsw i64 %i.n, 17
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.r, ptr nonnull align 1 %i.aj, i64 %i.ak, i1 false), !alias.scope !89703
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %1
  %i.am = mul nuw nsw i64 %i.n, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.al, i64 %i.am, i1 false), !alias.scope !89704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !noundef !178
  %i.ap = icmp eq i64 %i.ao, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !178
  %i.as = icmp eq i64 %i.ar, 0                    ; 2 uses
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.as, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25, label %bb.h, !prof !192

bb.g:                                             ; preds = %bb.e
  br i1 %i.as, label %bb.h, label %bb.i, !prof !187

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25.loopexit.unr-lcssa: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil.preheader

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil.preheader: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader
  %.sroa.0.06.i23.epil.init = phi i64 [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader ], [ %i.db, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25.loopexit.unr-lcssa ]
  %lcmp.mod30 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod30)
  br label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil.preheader
  %.sroa.0.06.i23.epil = phi i64 [ %i.at, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil ], [ %.sroa.0.06.i23.epil.init, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil ], [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil.preheader ]
  %i.at = add nuw nsw i64 %.sroa.0.06.i23.epil, 1
  %i.au = icmp samesign ult i64 %.sroa.0.06.i23.epil, 12
  tail call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.sroa.0.06.i23.epil
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !178, !noundef !178 ; 2 uses
  store ptr %i.h, ptr %i.aw, align 8
  %i.ax = trunc nuw nsw i64 %.sroa.0.06.i23.epil to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 272
  store i16 %i.ax, ptr %i.ay, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil, !llvm.loop !89694

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil, %bb.f
  ret void

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @358, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2149) #63
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 464 ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 464 ; 6 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ae
  %i.bc = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bb, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.az, i64 %i.bc, i1 false), !alias.scope !89705
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %1
  %i.be = shl nuw nsw i64 %i.n, 3
  %i.bf = add nuw nsw i64 %i.be, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.az, ptr noundef nonnull align 8 dereferenceable(1) %i.bd, i64 %i.bf, i1 false), !alias.scope !89706
  %i.bg = icmp ult i16 %i.e, 11
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ae
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !178, !noundef !178 ; 2 uses
  store ptr %i.c, ptr %i.bi, align 8
  %i.bj = trunc nuw nsw i64 %i.ae to i16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 272
  store i16 %i.bj, ptr %i.bk, align 8
  %exitcond.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.not.i, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = add nuw nsw i64 %i.f, 2                 ; 2 uses
  %i.bm = icmp samesign ult i16 %i.e, 10
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bl
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !178, !noundef !178 ; 2 uses
  store ptr %i.c, ptr %i.bo, align 8
  %i.bp = trunc nuw nsw i64 %i.bl to i16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 272
  store i16 %i.bp, ptr %i.bq, align 8
  %exitcond.not.i.1 = icmp eq i64 %1, 2
  br i1 %exitcond.not.i.1, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = add nuw nsw i64 %i.f, 3                 ; 2 uses
  %i.bs = icmp samesign ult i16 %i.e, 9
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.br
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !178, !noundef !178 ; 2 uses
  store ptr %i.c, ptr %i.bu, align 8
  %i.bv = trunc nuw nsw i64 %i.br to i16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 272
  store i16 %i.bv, ptr %i.bw, align 8
  %exitcond.not.i.2 = icmp eq i64 %1, 3
  br i1 %exitcond.not.i.2, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bx = add nuw nsw i64 %i.f, 4                 ; 2 uses
  %i.by = icmp samesign ult i16 %i.e, 8
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bx
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !178, !noundef !178 ; 2 uses
  store ptr %i.c, ptr %i.ca, align 8
  %i.cb = trunc nuw nsw i64 %i.bx to i16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 272
  store i16 %i.cb, ptr %i.cc, align 8
  %exitcond.not.i.3 = icmp eq i64 %1, 4
  br i1 %exitcond.not.i.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = add nuw nsw i64 %i.f, 5                 ; 2 uses
  %i.ce = icmp ne i16 %i.e, 7
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.cd
  %i.cg = load ptr, ptr %i.cf, align 8, !nonnull !178, !noundef !178 ; 2 uses
  store ptr %i.c, ptr %i.cg, align 8
  %i.ch = trunc nuw nsw i64 %i.cd to i16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 272
  store i16 %i.ch, ptr %i.ci, align 8
  br label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.cj = add nuw nsw i64 %i.k, 1
  %i.ck = sub nsw i64 %i.cj, %1                   ; 2 uses
  %xtraiter = and i64 %i.ck, 3                    ; 3 uses
  %i.cl = icmp samesign ult i64 %i.n, 3
  br i1 %i.cl, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.epil.preheader, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader.new

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader.new: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader
  %unroll_iter = and i64 %i.ck, -4
  br label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader.new
  %.sroa.0.06.i23 = phi i64 [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader.new ], [ %i.db, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit ] ; 7 uses
  %niter = phi i64 [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit.preheader.new ], [ %niter.next.3, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit ]
  %i.cm = or disjoint i64 %.sroa.0.06.i23, 1      ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.sroa.0.06.i23
  %i.co = load ptr, ptr %i.cn, align 8, !nonnull !178, !noundef !178 ; 2 uses
  store ptr %i.h, ptr %i.co, align 8
  %i.cp = trunc nuw nsw i64 %.sroa.0.06.i23 to i16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 272
  store i16 %i.cp, ptr %i.cq, align 8
  %i.cr = or disjoint i64 %.sroa.0.06.i23, 2      ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.cm
  %i.ct = load ptr, ptr %i.cs, align 8, !nonnull !178, !noundef !178 ; 2 uses
  store ptr %i.h, ptr %i.ct, align 8
  %i.cu = trunc nuw nsw i64 %i.cm to i16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 272
  store i16 %i.cu, ptr %i.cv, align 8
  %i.cw = or disjoint i64 %.sroa.0.06.i23, 3      ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.cr
  %i.cy = load ptr, ptr %i.cx, align 8, !nonnull !178, !noundef !178 ; 2 uses
  store ptr %i.h, ptr %i.cy, align 8
  %i.cz = trunc nuw nsw i64 %i.cr to i16
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 272
  store i16 %i.cz, ptr %i.da, align 8
  %i.db = add nuw nsw i64 %.sroa.0.06.i23, 4      ; 2 uses
  %i.dc = icmp samesign ult i64 %.sroa.0.06.i23, 12
  tail call void @llvm.assume(i1 %i.dc)
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.cw
  %i.de = load ptr, ptr %i.dd, align 8, !nonnull !178, !noundef !178 ; 2 uses
  store ptr %i.h, ptr %i.de, align 8
  %i.df = trunc nuw nsw i64 %i.cw to i16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 272
  store i16 %i.df, ptr %i.dg, align 8
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit25.loopexit.unr-lcssa, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrTbNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsgZAIVb0XKpv_9ssservice.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressTINtNtBa_9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtBc_6string6StringENtNtCs5Xr050g3D4S_3std4time7InstantEEB4l_EE15bulk_steal_leftCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [40 x i8], align 8            ; 2 uses
  %.sroa.2 = alloca [48 x i8], align 8            ; 2 uses
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !178, !noundef !178 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 978 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !178
  %i.f = zext i16 %i.e to i64                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !178, !noundef !178 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 978 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !178
  %i.k = zext i16 %i.j to i64                     ; 5 uses
  %i.l = add nuw nsw i64 %1, %i.k                 ; 3 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !192

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2140, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2141) #63
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.f
  br i1 %.not, label %bb.d, label %bb.e, !prof !187

end_hunk_2
